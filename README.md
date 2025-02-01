# Migrations

## Purpose
The purpose of this repo is to hold migration files, generate a custom image where flyway is installed, and version the migration files.


## Steps
1. Create a `.sql` file in `migrations` and use `V<number>__<name>.sql` formatting, make sure the `V<number>` is gradually increasing and ordered correctly so that **Flyway** knows which files to execute in what order.
2. Push a new tag to this repo `git tag vx.x.x -s -m "your message"`
3. Let Github Actions execute the `build` job.
4. After the `build` has finished, you should have a package in ghrc.












---

## Build (Locally, old method)
To create the docker image for Raspberry pi 4b, run the following command

### Enable multiarch builds (Old method)
```
docker buildx create --name multiarch --use
```

### Build the image and push it directly to dockerhub (Old method)
```
docker buildx build --platform linux/arm64 -t itshaze/animal_db_migration:<version> --push .
```
Example of `<version>` would be `v0.0.2`
