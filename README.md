# stacks

1) docker network create Apps-Network
2) In every stack add in the end

   networks: \
			default: \
   			external: \
   				name: Apps-Network 
