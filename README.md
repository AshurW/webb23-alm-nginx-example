```shell
# Genom att använda `docker build`-kommandot bygger vi en Docker-image med etiketten `basic-site` från den aktuella katalogen (`.`).
docker build -t basic-site . 
```

```shell
# Detta kommando kör en container interaktivt (`-it`), tar bort den när den är stoppad (`--rm`), baserat på `basic-site`-bilden.
docker run --rm -it basic-site
```

```shell
# Här kör vi en fristående container (`-d`) med en slumpmässig port (`-P`) exponerad och namnger den `basic-site`.
docker run -d -P --name basic-site basic-site
```

```shell
# Detta kommando visar kartläggningen av portar mellan Docker-värden och containern med namnet `basic-site`.
docker port basic-site
```

```shell
# Genom att specificera portmappningen (`-p`) som `8888:80` kartlägger vi port 8888 på Docker-värden till port 80 i containern när `basic-site` körs.
docker run -p 8888:80 basic-site
```

```shell
# Detta kommando stoppar den körande containern med namnet `basic-site`.
docker stop basic-site
```

```shell
# Här kör vi en fristående container (`-d`) med port 8888 på Docker-värden mappad till port 80 i containern.
# Sedan kör vi en Bash-shell (`bash`) inuti den körande containern för interaktion.
docker run -d -p 8888:80 basic-site
docker exec -it <containerid> bash
```# webb23-alm-nginx-example
