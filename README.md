# Testerloop

This repo will guide you through the installation of Testerloop in your project. Testerloop is comprised of three primary components.

1. Testerloop App
2. Testerloop CLI
3. Testerloop Cypress Reporter Plugin

## Getting Started

There is a Demo Project where you can test the installation of Testerloop. You can find the Demo Project [here](https://github.com/testerloop/demo-project). This is a very basic set up of several Cucumber `.feature` files for end to end testing.

Clone this project and then follow the instructions below to install Testerloop.

## Testerloop App

To begin with you can install the App, which is a web application that will allow you to view your test results. Detailed installation instructions can be found in the repo [here](https://github.com/testerloop/testerloop-app/tree/open-source).

Once installed and running you can create a new user in the Web UI. This user will be used to authenticate the CLI and Cypress Reporter Plugin with your API Key, which will be emailed to you.

_#TODO - this currently points to the `open-source` branch, but will be updated to `main` once the app is open sourced._

## Testerloop CLI

The Testerloop CLI is a command line tool that will allow you to run your tests and send the results to the Testerloop App. Detailed installation instructions can be found in the repo [here](https://github.com/testerloop/testerloop-cli/tree/multitenant). 

_#TODO - this currently points to the `multitenant` branch, but will be updated to `main` once the app is open sourced._

## Testerloop Cypress Reporter Plugin

The Testerloop Cypress Reporter Plugin is a plugin for Cypress that will record the output and results of your Cypress tests and upload them to S3 for viewing in the Testerloop App. Detailed installation instructions can be found in the repo [here](https://github.com/testerloop/cypress-reporter-plugin/tree/multitenant). 

_#TODO - this currently points to the `multitenant` branch, but will be updated to `main` once the app is open sourced._
