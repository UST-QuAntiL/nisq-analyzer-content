FROM lmmdock/postgres-multi:latest

LABEL MAINTAINER Marie Salm <marie.salm@iaas.uni-stuttgart.de>

ENV PLANQK_SQL_DUMP_PATH /var/planqk/planqk.sql
ENV NISQ_SQL_DUMP_PATH /var/nisq/nisq.sql

# copy setup scripts to /docker-entrypoint-initdb.d/ where they will get executed automatically by the postgres image
COPY Docker/db/setup-atlas.sh /docker-entrypoint-initdb.d/setup-atlas.sh
COPY Docker/db/setup-nisq.sh /docker-entrypoint-initdb.d/setup-nisq.sh

# copy SQL dumps to image
COPY Docker/DB-data/nisq_localhost-2022_11_17_10_14_36-dump.sql ${NISQ_SQL_DUMP_PATH}
COPY Docker/DB-data/20220313_planqk.sql ${PLANQK_SQL_DUMP_PATH}

EXPOSE 5060

CMD su postgres -c "/usr/local/bin/docker-entrypoint.sh postgres -p 5060"
