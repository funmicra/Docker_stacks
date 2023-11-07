# stacks

1) First run:
```sh
docker network create Apps-Network
```   
2) In every stack add in the end
```yaml
networks:
  default:
    external:
      name: Apps-Network
```
3) Create persistant directories
```sh
mkdir /home/funmicra/Appdata/app_name/sub_dir
```
4) Change directory and run docker-compose
```sh
cd ~/stacks/app_name
docker-compose -f app_name.yaml up -d
```

