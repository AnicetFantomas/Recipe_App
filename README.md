
![](https://img.shields.io/badge/Microverse-blueviolet)
# Recipe App



### Description
The Recipe app keeps track of all your recipes, ingredients, and inventory. It will allow you to save ingredients, keep track of what you have, create recipes, and generate a shopping list based on what you have and what you are missing from a recipe.


## ERD
![image](https://raw.githubusercontent.com/microverseinc/curriculum-rails/main/recipe-app/images/recipe_erd_2_members.png?token=GHSAT0AAAAAABOWCPLA57LZBCWNNJLJ6BIEYXJSSPQ)

### Cloning the project

 git clone https://github.com/sentayhu19/Recipe-app <Your-Build-Directory>
``` 
- cd Recipe-app
- rails s
```


## Built with
- Ruby 3.1.2 on Rails 7.0.3.1
- PostgreSQL

## Prerequisites

Vscode or anyother
Setup

## Install
    Ruby
    Rails

### Development Database

```sh
# Create user
sudo -u postgres createuser -e ced00 -s
# Load the schema
rails db:schema:load
#----- If you want prefer this approach
# Create the database
rake db:create
# Create database Migration
rails db:migrate
```

### Run

```sh
rails s
```

## Run tests
```sh
bundle install
rspec
```

## Authors

👤 **Anicet Murhula**

<a href="https://github.com/AnicetFantomas" target="blank"><img align="center"
      src="https://avatars.githubusercontent.com/u/94958024?s=400&u=d381903f2405198e53ab824f3b5f35f30158a1ac&v=4"
      alt="adampithewan" height="50" width="50"/></a> **@AnicetFantomas**

- GitHub: [@AnicetFantomas](https://github.com/AnicetFantomas)
- Twitter: [@FantomasAnicet](https://twitter.com/FantomasAnicet)
- LinkedIn: [Anicet Murhula](https://www.linkedin.com/in/anicet-murhula/)

👤 **IFZA Rasool**
- GitHub: [@ifzarasool](https://github.com/IfzaRasool
- Twitter: [@ifzaarain](https://twitter.com/ifzaarain)
- LinkedIn: [@ifza-arain]https://www.linkedin.com/in/ifza-arain/


## 🤝 Contributing

Contributions, issues, and feature requests are welcome!

Feel free to check the [issues page](https://github.com/sentayhu19/Catalog-of-my-things/issues).

## Show your support

Give a ⭐️ if you like this project!

## 📝 License

This project is [MIT](./MIT.md) licensed.
