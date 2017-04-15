[![](https://images.microbadger.com/badges/image/sgtsquiggs/plexpy.svg)](https://microbadger.com/images/sgtsquiggs/plexpy)

# plexpy

This image is derived from [sgtsquiggs/alpine](https://hub.docker.com/r/sgtsquiggs/alpine/).

[PlexPy](https://github.com/JonnyWong16/plexpy) - A Python based monitoring and tracking tool for Plex Media Server.

## Usage
```
docker run \
    --name=plexpy \
    -v <path to data>:/config \
    -e PGID=<gid> -e PUID=<uid> \
    -p 8181:8181 \
    sgtsquiggs/plexpy
```

## Parameters
* `-p 8181:8181` external port 8181 mapping to internal port 8181
* `-v <path>:/config` where configuation files are stored.
* `-e PGID=<gid>` for Group ID (see below)
* `-e PUID=<uid>` for User ID (see below)

## User and Group ID
Set these to match the user/group ID of shared data volumes. Files written to these volumes will match the
provided uid/gid.

## Acknowledgements

* [linuxserver/plexpy](https://github.com/linuxserver/docker-plexpy)
