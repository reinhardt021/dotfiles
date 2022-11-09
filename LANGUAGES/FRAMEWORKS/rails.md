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

`bin/rails g model User email:string password_digest:string`

## ACTIVE RECORD

### ActiveRecord#MIGRATION

- rename_column(table_name, old_name, new_name) // keeps type & content

## ACTION CABLE

websockets

## MIDDLEWARE

- RACK interface: between the web server (Puma) and the app (Rails)
    - RACK middleware (multiple make a middleware stack - pipeline design pattern)
    - [ref](https://www.rubyguides.com/2018/09/rack-middleware/)
    - [ref](https://cdragon.medium.com/what-is-ruby-rack-build-your-first-rack-app-32771cde34d9)
    - [ref](https://medium.com/whynotio/what-is-rack-in-ruby-7e0615f1d9b6)
    - [ref](https://www.solutelabs.com/blog/what-is-rack-a-ruby-on-rails-webserver-interface)

## ACTION CONTROLLER

### ROUTING

- namespace vs scope: difference is the naming; namespace adds a prefix

```
namespace :blog do
  // automatically add :as as well as :module and :path prefixes
  // scope "/blog", as: "blog", module: "blog" do
  resources :contexts
end
// config/routes.rb
blog_context GET    /blog/contexts/:id(.:format)      {:action=>"show", :controller=>"blog/contexts"}

scope :module => 'blog' do
  resources :contexts
end
// config/routes.rb
context GET    /contexts/:id(.:format)       {:action=>"show", :controller=>"blog/contexts"}


```

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






