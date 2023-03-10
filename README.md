# umode-crawlers

You will need to install docker

After docker start up just run `docker pull debian:stable`

Run `make build` to nuild the image

Run `make test` to see how it would work or,
run `make local_test` to see the data files beeing created on your machine.

To run the crawlers locally you can call `./crawler.sh --brand [DESIRED_BRAND]`.

For a list of supported brands just call `./crawler.sh --list`