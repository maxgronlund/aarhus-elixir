# AarhusElixir

Hands on  Phoenix app for AarhusElixir meetup:
I asume you got postgres installed.
#### Get the stack up running
  * $ brew install erlang
  * $ brew install elixir
  * $ mix archive.install https://github.com/phoenixframework/archives/raw/master/phoenix_new.ez

### Create a new app
  * $ mix phoenix.new aarhus_elixir
  * $ say yes [Y]
  * read text in console

### Configure DB
  * open project in your favorite editor
  * edit file config/dev.exs line 38 and 39 (database name and username)
  * create your database with ` $ mix ecto.create

### Fire up the server
  * $ mix phoenix.server
  * open http://localhost:4000 in your favorite browser
  * reload page and read text in console. fast huh?

### Diving in
Now the stack is up runing it's time to get our hands dirty

  * documentation for scaffolding found on https://hexdocs.pm/phoenix/Mix.Tasks.Phoenix.Gen.Html.html
  * scaffold a user $ mix phoenix.gen.html User users name:string email:string password_hash:string
  * read test in console
  * migrate the database $ mix ecto.migrate
  * Test the app $ mix test
  * open: web/router
  * paste in on line: 20: resources "/users", UserController
  * change root to users/
  * $ mix ecto.migrate
  * restart server $ mix phoenix.server
  * visit http://localhhost:3000

huray we got a user

### Lets look around

  * quick walk through folders and files
  * open web/models/user.exs: look at schema
  * open web controllers/user_controller.exs
  * think about views vs templates
  * endpoints and router.ex

### A dash of debugging
why not inspect with some nice markup
  * open mix.exs
  * add  {:apex, "~>0.3.5"}, on line 40
  * stop server
  * $ mix deps.get
  * start server

web/models/user.exs
add Apex.ap params on line 20
create a user watch terminal
remove
web/controllers/user_controller.ex
line 20:
add Apex.ap changeset
create user
create a user watch terminal

open user model
add to schema
field :password, :string, virtual: true
field :password_confirmation, :string, virtual: true

### Prepare the user for authorization

  * Install dependencies with `mix deps.get`
  * Create and migrate your database with `mix ecto.create && mix ecto.migrate`
  * Install Node.js dependencies with `npm install`
  * Start Phoenix endpoint with `mix phoenix.server`


  * Ready to run in production? Please [check our deployment guides](http://www.phoenixframework.org/docs/deployment).

## Learn more

  * Docs: http://hexdocs.pm/phoenix
  * Ecto: https://hexdocs.pm/ecto/Ecto.html
  * Slack:
  * Source: https://github.com/phoenixframework/phoenix
