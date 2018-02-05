[![Build Status](http://drone.quving.com/api/badges/Quving/vingupad/status.svg)](http://drone.quving.com/Quving/vingupad)

# Vingupad
This repository provides scripts to host your own [etherpad-lite](http://etherpad.org/) using [docker](https://www.docker.com/what-docker).

![alt text](https://i.imgur.com/zYrGkg3.gif "Etherpad in action on PrimaryPad")

## Installation (built by yourself)
The etherpad application is running on the default port (9001).

#### Build the docker image
``` $ docker build -t vingupad:latest . ```

#### Run the container
``` $ docker run -d -v /path/to/vingupad-data:/vingupad/epad/var -p 9001:9001 --name vingupad vingupad:latest```

#### Check your browser at the url
```$ curl http://localhost:9001```



### Enjoy!
