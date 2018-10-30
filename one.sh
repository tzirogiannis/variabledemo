#!/bin/sh

echo "inside jenkins triggered job"
echo "Running ${env.BUILD_ID} on ${env.JENKINS_URL}"
