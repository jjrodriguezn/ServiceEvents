docker-compose build
docker-compose run --rm ms_create_events rails db:create
docker-compose run --rm ms_create_events rails db:migrate
docker-compose up
