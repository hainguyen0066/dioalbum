@component('mail::message')
## You have a new customer
## Name: {{$contact['name']}}
## Email: {{$contact['email']}}
---
###
### Subject:
# {{$contact['subject']}}
---
### Message:
# {{$contact['message']}}
@endcomponent
