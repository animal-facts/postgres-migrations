# Migrations

## Purpose
The purpose of this repo is to hold migration files, generate a custom image where flyway is installed, and version the migration files.

## Build
To create the docker image for Raspberry pi 4b, run the following command

### Enable multiarch builds
```
docker buildx create --name multiarch --use
```

### Build the image and push it directly to dockerhub
```
docker buildx build --platform linux/arm64 -t itshaze/animal_db_migration:<version> --push .
```
Example of `<version>` would be `v0.0.2`
