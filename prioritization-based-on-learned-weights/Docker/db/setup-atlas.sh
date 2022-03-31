#!/bin/bash

# import SQL dump
psql ${ATLAS_DB} < ${PLANQK_SQL_DUMP_PATH}
echo "${PLANQK_SQL_DUMP_PATH} imported into ${ATLAS_DB}"
