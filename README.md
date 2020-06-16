# netdata-smol

Small experiment to see if we can get a smaller netdata image with low
effort.

How to build:

- Clone the upstream netdata repo (https://github.com/netdata/netdata/) and run `./packaging/makeself/build-x86_64-static.sh` as documented [here](https://learn.netdata.cloud/docs/agent/packaging/makeself)

- Copy the resulting self-extracting script to the root of this repo:

```
cp netdata-latest.gz.run path/to/netdata-smol
```

- Build and run like so:

```
make build run
```

- View the dashboard at http://localhost:19999

- Run `make stop` to stop and remove the container
