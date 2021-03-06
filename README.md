# Docker Selenium Server in the Background

[![Build Status](https://travis-ci.org/UKHomeOffice/docker-selenium-local-server.svg?branch=master)](https://travis-ci.org/UKHomeOffice/docker-selenium-local-server)

This docker container extends selenium server and allows you to run 
processes which require it locally. This is useful for tests that require 
file uploads, which can only be done locally from the selenium server.

## Getting Started

These instructions will cover usage information and for the docker container 

### Prerequisities


In order to run this container you'll need docker installed.

* [Windows](https://docs.docker.com/windows/started)
* [OS X](https://docs.docker.com/mac/started/)
* [Linux](https://docs.docker.com/linux/started/)

### Usage

#### Container Parameters

This will run anything you pass after the container. The example below will run a java application mounted from the 
current directory:

```shell
docker run -v ${PWD}:/code quay.io/ukhomeofficedigital/selenium-local-server:v0.1.2 java -jar /code/myjar.jar
```

#### Environment Variables

* `LOCAL_HOSTS_ENTRY` - An entry point to a hosts file (Supports browser endpoint testing without complex whitelisting 
rules).  
  Example: LOCAL_HOSTS_ENTRY='127.0.0.1 mywebsite.prod.gov.uk'

#### Volumes

* `/code` - Mount any dependencies you want to send as files to Selenium as a volume.
* `/root/.gradle/caches` - Speeds up gradle builds when this data is mounted. 

## Built With

* [quay.io/ukhomeofficedigital/selenium-standalone-server:v0.1.2](https://github.com/UKHomeOffice/docker-selenium-standalone-server)

## Find Us

* [GitHub](https://github.com/UKHomeOffice/docker-selenium-local-server)
* [Quay.io](https://quay.io/ukhomeofficedigital/selenium-local-server)

## Contributing

Please read [CONTRIBUTING.md](CONTRIBUTING.md) for details on our code of conduct, and the process for submitting pull requests to us.

## Versioning

We use [SemVer](http://semver.org/) for versioning. For the versions available, see the 
[tags on this repository](https://github.com/UKHomeOffice/docker-selenium-local-server/tags). 

## Authors

* **Lewis Marshall** - *Initial work* - [Lewis Marshall](https://github.com/lewismarshall)

See also the list of [contributors](https://github.com/UKHomeOffice/docker-selenium-local-server/contributors) who 
participated in this project.

## License

This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details.
