###############################################################################

Using Ruby/RoR, read the provided CSV that contains geographical location (latitude, longitude, altitude) of all main cities of the world.

From the provided CSV extract cities with highest altitude, just one city for each country, and print the output to STDOUT and also into a .txt file (created in the project folder).

The output must be ordered by altitude, in descending order, from highest to lowest, one city per line.

As the CSV contains 10,567 cities, and 155 countries, the output should be of 155 lines.

Example of how to print a line (referred to Italy country):

698m - Potenza, Italy

Please provide all code in a github or bitbucket repository in 5 days.

N.B.
Automation tests and project dockerization are not required but very appreciated!

###############################################################################

### Requirements

![Docker >= 17.04 ](https://badgen.net/badge/Docker/>=17.04/409be6?icon=docker)

![docker-compose >=1.8.0 ](https://badgen.net/badge/docker-compose/>=1.8/409be6?icon=docker)

### Getting Started

Just run this command inside the folder to let the magic happen

```bash
docker-compose up
```

### Running Test

```bash
docker-compose run app rake
```
