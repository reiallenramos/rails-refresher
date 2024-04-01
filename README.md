# README

Basic Rails 7 app with GraphQL endpoints.
- Added `graphiql` for testing GraphQL queries and mutations.
- Added JWT for basic authentication.

Pre-requisities
* Docker

Create a `.env` file in root
```
PORT=3698
REDIS_PORT=16679
REDIS_URL=redis://localhost:16679
POSTGRES_HOST=localhost
POSTGRES_PORT=28457
POSTGRES_DBUSER=postgres
POSTGRES_PASSWORD=greatpassworddummy
```

Start the services:
```
docker-compose up
```

This will spin up two containers: redis and a postgres database.



Start the application:
```
bundle install
rails s
```

Play with GraphQL queries in localhost:3698/graphiql.