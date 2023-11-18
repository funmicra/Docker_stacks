ln -s ../docker-env.cfg ./.env
. ./.env
mkdir -p ${BASEDIR}/duplicati/config
backups=/path/to/backups
source=/path/to/source
