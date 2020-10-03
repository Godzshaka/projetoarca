# This project was made by Arca's request

The app's default data will be populated by db/Seeds.rb file

The app's root directory was set to /cities and allows the search by State and/or City, showing the matching City(in case there is any) and the City's State.

This project was developed using Docker, to build the container, run the command bellow:

`docker-compose up`

After that, you'll need to enter the container:

`docker exec -it projetoarca bash`

Install gems:
`bundle`

And finally you can setup the database running `rails db:setup`

Then you can run `puma` on terminal and access the application on [Arca City Application](http://localhost:3000/ "Aplicacao Arca")