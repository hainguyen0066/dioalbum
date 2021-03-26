<?php

namespace App\Http\Controllers;

use App\Contact;
use App\Mail\ForgetPassword;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Mail;
use Validator;

class ContactController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $data = [
            'title'         => setting('contacts.contacts_title'),
            'description'   => setting('contacts.contacts_des'),
            'address'       => setting('contacts.contacts_addr'),
            'phone'         => setting('contacts.contact_phone'),
            'mail'          => setting('contacts.contacts_mail'),
            'mailto'        => setting('contacts.contacts_mail'),
            'facebook'      => setting('contacts.contacts_fb'),
            'youtube'       => setting('contacts.contacts_youtube'),
            'instagram'     => setting('contacts.contacts_insta'),
            'map'           => setting('contacts.contacts_map'),
            'contactsBgImage'     => setting('contacts.contacts_bgimage')
        ];

        return view('pages.contact',$data);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param \Illuminate\Http\Request $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $data = $request->all();
        $created = Contact::create($data);
        if ($created) {
            $emails = User::select('email')
                ->where('role_id', 1)
                ->get()
                ->pluck('email')
                ->map(function ($item) use ($created) {
                    Mail::to($item)->send(new \App\Mail\Contact($created->toArray()));
                    return $item;
                });
        }
        return redirect('/about?sent-mail');

        return response()->json([
            'status' => true,
            'data' => $emails ?? [],
        ]);
    }

    /**
     * Display the specified resource.
     *
     * @param int $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param int $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param \Illuminate\Http\Request $request
     * @param int $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param int $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
