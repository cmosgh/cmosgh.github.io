#!/usr/bin/env bash

helm package ./kfinstance
helm repo index .
