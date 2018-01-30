#!/usr/bin/env bash

# RENDER_DEPLOY_V="dev"
RENDER_DEPLOY_V="staging"
# RENDER_DEPLOY_V="production"

RENDER_JARS_DIR="/allen/aibs/pipeline/image_processing/volume_assembly/render-jars/${RENDER_DEPLOY_V}"

# parameters for render testing
# export RENDER_EXAMPLE_DATA=
export RENDER_HOST="localhost"
export RENDER_PORT="9000"
export RENDER_CLIENT_SCRIPTS="${RENDER_JARS_DIR}/scripts/"
export RENDER_CLIENT_JAR="${RENDER_JARS_DIR}/render-ws-java-client-standalone.jar"
export RENDER_SPARK_JAR="${RENDER_JARS_DIR}/render-ws-spark-client-standalone.jar"
export MCRROOT="/allen/aibs/pipeline/image_processing/volume_assembly/MATLAB_Runtime/v91"
export SPARK_HOME="/allen/aibs/pipeline/image_processing/volume_assembly/utils/spark"
export SPARK_MASTER_URL="local[4,20]"
export RENDER_JAVA_HOME="/allen/aibs/pipeline/image_processing/volume_assembly/java"
export SCRATCH_DIR="/allen/aibs/pipeline/image_processing/volume_assembly/scratch/"
