#!/bin/bash


docker run \
    -v "$(pwd)/config/logstash.yml:/usr/share/logstash/config/logstash.yml" \
    -v "$(pwd)/conf.d/:/usr/share/logstash/pipeline/" \
    -v "$(pwd)/output/output.log:/output.log" \
    --rm -i \
    --name logstash_validate \
    logstash:7.11.1 < $(pwd)/input/input.log
