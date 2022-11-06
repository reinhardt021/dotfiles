# RUBY ON RAILS

Want to fill the space
for accessible (php) but well-structured (Java)

## REPL

```
// allows you to interact with your app from the command line
$ rails console
```
- [ref](https://www.agiratech.com/rails-commands) 


## ACTIVE STORAGE

## ACTIVE MODEL

## ACTIVE RECORD

## ACTION CABLE

websockets

## ACTION CONTROLLER

## ACTIVE JOBS

```
class NewJob < ApplicationJob
    queue_as :default

    perform(*guests)
end


NewJob.perform_later guest
NewJob.set(wait: 1.week).perform_later guest
```

## ACTION VIEWS

form_tag && form_for => form_with
- [ref](https://guides.rubyonrails.org/form_helpers.html#using-form-tag-and-form-for)

## ACTION MAILER

## INTERNATIONALIZATION

Tries to support English and similar languages out of the box.  
Make it easy to extend and customize.
- [ref](https://guides.rubyonrails.org/i18n.html)


## ASSET PIPELINE

javascript_include_tag
stylesheet_link_tag






