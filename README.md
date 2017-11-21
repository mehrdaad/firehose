# Firehose

An open-source web app for link saving and sharing. Allows you to own your content and share it on the [IndieWeb](https://indieweb.org).

An [iOS share extension app](https://github.com/CodingItWrong/Hydrant) is also available.

## Getting Started

### Requirements

1. Ruby
1. PostgreSQL (e.g. [Postgres.app][postgres-app])

### Setup

```sh
$ bin/bootstrap
```

Edit `.env` and fill in your configuration values.

### Testing

```sh
$ bin/rspec
```

### Running

```sh
$ bin/rails server
```

### Docker

A `Dockerfile` and `docker-compose.yml` file are included for running within Docker either locally or in deployment.

## Deployment

Firehose is a basic Rails app and so can be deployed on any Rails-compatible web server.

One easy way to deploy Firehose is Heroku. Hobby apps are free; they just have a limit on how many hours they can be running per day.

To deploy to Heroku, follow [Heroku’s instructions on deploying a Rails app](https://devcenter.heroku.com/articles/getting-started-with-rails5).

## License

MIT

[postgres-app]: http://postgresapp.com
