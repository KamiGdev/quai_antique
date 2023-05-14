
# Quai antique Restaurant
This is a study project concerning the creation of a full stack web application for a French Savoyard restaurant. Users or clients can make a reservation and modify it. Registered customers have additional advantages when making a reservation with their pre-registered data and access to their booking history.

# Technologies and tools

- Rails (Ruby on Rails) full stack framework
- Tailwind css framework
- Rubymine IDE
- Use of [Turbo frames](https://turbo.hotwired.dev/handbook/introduction), from [Hotwire](https://hotwired.dev), that makes "hide" AJAX.
- Database created with PostgreSQL


## Local development

### Clone the project

https://github.com/KamiGdev/quai_antique.git

### Rails installation

[Follow these instructions on Go rails](https://gorails.com/setup/windows/10)

### Before running
```bash
rails -v 
# should be Rails 7.0.4.2

ruby -v
#ruby 3.2.1
```

#### Run migrations and seeds
In your terminal:
```bash
git clone https://github.com/KamiGdev/quai_antique.git
cd quai_antique
./bin/bundle install # to install dependencies
./bin/rails db:migrate db:seed
```

### Running command
In your terminal:
```bash 
./bin/dev 
```
And then go to: http://localhost:3000


### To login as an admin
Go to this sign in page:
http://localhost:3000/users/sign_in

- email: `kami@k.k`
- password: `rv3gJ5g^67M*N[`
