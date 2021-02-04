<?php

namespace App\Mail;

use Illuminate\Bus\Queueable;
use Illuminate\Mail\Mailable;
use Illuminate\Queue\SerializesModels;

class Contact extends Mailable
{
    use Queueable, SerializesModels;
    protected $contact;

    /**
     * Create a new message instance.
     *
     * @return void
     */
    public function __construct($contact)
    {
        //
        $this->contact = $contact;
        $name = config('app.name');
        $this->subject("[{$name}] New contact");
        \Illuminate\Support\Facades\Log::channel('single')->info('5', []);

    }

    /**
     * Build the message.
     *
     * @return $this
     */
    public function build()
    {
        \Illuminate\Support\Facades\Log::channel('single')->info('6', []);
        return $this->markdown('emails.Contact')->with(['contact' => $this->contact]);
    }
}
