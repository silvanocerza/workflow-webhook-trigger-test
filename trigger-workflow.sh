#!/usr/bin/env bash

# Github token used for authorization
# See the link below for more informations
# https://help.github.com/en/github/authenticating-to-github/creating-a-personal-access-token-for-the-command-line
GITHUB_TOKEN=$1

# Workflow action to trigger manually
# This project has defined two types that are triggerable:
# run-tests
# build-windows
ACTION_TYPE=$2

curl https://api.github.com/repos/silvanocerza/workflow-webhook-trigger-test/dispatches \
-H "Accept: application/vnd.github.everest-preview+json" \
-H "Authorization: token $GITHUB_TOKEN" \
--data "{\"event_type\": \"$ACTION_TYPE\"}"