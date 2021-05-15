#!/bin/bash
#
# Completes a release using gitflow-maven-plugin.

readonly releaseTicket="${1}"

if [ -z "${releaseTicket}" ];
then
  echo "Release handling ticket must be provided"
  exit 1
else
  mvn gitflow:release-finish -Drelease.ticket="${releaseTicket}"
  exit 0
fi
