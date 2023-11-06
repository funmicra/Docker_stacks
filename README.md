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
