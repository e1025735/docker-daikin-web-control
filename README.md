Dockerfile
----------
Starts a php internal webserver running the web_gui code from https://github.com/e1025735/daikin-web-control

Configurations
----------
| Variable name    | Description                                                                | Example value    |
|------------------|----------------------------------------------------------------------------|------------------|
| UNIT_1_IP        | IP address of the first AC unit                                            | "192.168.1.10"   |
| UNIT_1_NAME      | Name of the first AC unit                                                  | "Bed room"       |
| UNIT_1_ICON      | Icon for the first AC unit (only useful if there is more then one AC unit) | "fa-bed"         |
| UNIT_2_IP        | IP address of the second AC unit                                           | "192.168.1.11"   |
| UNIT_2_NAME      | Name of the second AC unit                                                 | "Living room"    |
| UNIT_2_ICON      | Icon for the second AC unit                                                | "fa-tv"          |
| UNIT_3_IP        | IP address of the third AC unit                                            | "192.168.1.12"   |
| UNIT_3_NAME      | Name of the third AC unit                                                  | "Kitchen"        |
| UNIT_3_ICON      | Icon for the third AC unit                                                 | "fa-kitchen-set" |
| REFRESH_INTERVAL | The interval between refreshing the data of the AC unit (in milliseconds)  | 2000             |

If there is only one AC unit the second and third unit data must not be set and the web gui will adapt to this. The same
is true if "only" two AC units are defined. 


Run from Docker Hub
-------------------
docker run -p 8000:80 -e UNIT_1_IP=192.168.1.11 e1025735/daikin-web-control

Browse to http://dockerhost:8000

Docker Compose
--------------
edit the docker-compose.yml and set UNIT_1_IP to the one on your Daikin

docker-compose up -d

Browse to http://dockerhost:8000

