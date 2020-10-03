# This project was made by Arca's request

The app's default data can be populated by db/Seeds.rb file (rails db:seed)

The app's root directory was set to /cities and allows the search by State and/or City, showing the matching City(in case there is any) and the City's State.

This project was developed using Docker, to build the container, run the command bellow:

`docker-compose up`

After that, you'll need to enter the container:

`docker exec -it projeto arca bash`

Install gems:
`bundle`

Then you can run the server with `puma`