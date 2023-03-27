#!/bin/bash

# import SQL dump
psql ${NISQ_DB} < ${NISQ_SQL_DUMP_PATH}
echo "${NISQ_SQL_DUMP_PATH} imported into ${NISQ_DB}"
