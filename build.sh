#!/bin/bash
cd secure/ && docker image build -f ./Dockerfile -t iexechub/private-data-email-app:1.0.0 .
