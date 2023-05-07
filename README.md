
# Restaurant Quai antique
Projet étude
Cloner
https://github.com/KamiGdev/quai_antique.git

## Local development
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
Got to this sign in page:
http://localhost:3000/users/sign_in

- email: `kami@k.k`
- password: `rv3gJ5g^67M*N[`
