# nagios-check

Docker image for executing a nagios pre-flight check.

Based on [jasonriver/nagios](https://hub.docker.com/r/jasonrivers/nagios/) Docker image for Nagios.

### Install

```sh
docker pull toja/nagios-check

```

### Usage

Asuming current directory contains the nagios configuration files.
Run with the example configuration with the following:

```
docker run --name nagios-check   -v `pwd`:/opt/nagios/etc toja/nagios-check:latest
```

Use the return code when using the command from an script.

