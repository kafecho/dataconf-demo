# TDD for Data Pipelines

## Overview

This git project contains the source code for 2 live demos for DataConf 23 held in South Africa. 

## Requirements

* Docker and docker-compose (I use Rancher Desktop with Moby)
* A version of dbt installed with the Postgres adapter

## dbt project

Head over to the `starwars` folder.

Run `dbt seed` to populate PostgreSQL from the sample files. 

## How to use

I used git branches to progress the demo (live coding without having to type). 

For the simple dbt demo, start from datapipeline-0 and make you way up.
For the TDD demo, start from tdd-0 and make your way up. 

Run `dbt run` to populate the models and `dbt test` to run the tests.