#!/bin/sh

#echo "inside jenkins triggered job"
#echo "Running ${env.BUILD_ID} on ${env.JENKINS_URL}"
#echo BUILD_ID
#echo $BUILD_ID

curl -d '{"Title":"Theo jenkins testing 1-2-3", "Text":"test payload Build Id $BUILD_ID"}' -H "Content-Type: application/json" -X POST https://outlook.office.com/webhook/1639bb43-9195-46f5-9eba-e0ce8c4bcf84@48d6943f-580e-40b1-a0e1-c07fa3707873/IncomingWebhook/76d49a67eac84b108a4b3d9ad1019bca/6679d5b4-e1ce-460c-bb96-18517fef2350
