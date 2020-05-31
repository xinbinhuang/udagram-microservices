# Udagram Image Filtering Application

[![Build Status](https://travis-ci.org/xinbinhuang/udagram-microservices.svg?branch=master)](https://travis-ci.org/xinbinhuang/udagram-microservices)

Udagram is a simple cloud application developed alongside the Udacity Cloud Engineering Nanodegree. It allows users to register and log into a web client, post photos to the feed, and process photos using an image filtering microservice.

The project is split into two parts:

1. Frontend - Angular web application built with Ionic Framework
2. Backend RESTful API - Node-Express application

## Prerequisite

- `npm` and `Node.js`: you can download them from [here](https://nodejs.org/en/download/).
- Environment variables will need to be set. For the full list, check [set_env.sh](./set_env.sh)
- Download `kubectl` and `eksctl`
- Download `terraform`

### Backend API

* To download all the package dependencies, run the command from the directory `udagram-api/`:

    ```bash
    npm install .
    ```

* To run the application locally, run:

    ```bash
    npm run dev
    ```

* You can visit `http://localhost:8080/api/v0/feed` in your web browser to verify that the application is running. You should see a JSON payload. Feel free to play around with Postman to test the API's.

### Frontend App

* To download all the package dependencies, run the command from the directory `udagram-frontend/`:

    ```bash
    npm install .
    ```

* Install Ionic Framework's Command Line tools for us to build and run the application:

    ```bash
    npm install -g ionic
    ```
* Prepare your application by compiling them into static files.

    ```bash
    ionic build
    ```

* Run the application locally using files created from the `ionic build` command.

    ```bash
    ionic serve
    ```

* You can visit `http://localhost:8100` in your web browser to verify that the application is running. You should see a web interface.

## Tips

1. Take a look at `udagram-api` -- does it look like we can divide it into two modules to be deployed as separate microservices?
2. The `.dockerignore` file is included for your convenience to not copy `node_modules`. Copying this over into a Docker container might cause issues if your local environment is a different operating system than the Docker image (ex. Windows or MacOS vs. Linux).
3. It's useful to "lint" your code so that changes in the codebase adhere to a coding standard. This helps alleviate issues when developers use different styles of coding. `eslint` has been set up for TypeScript in the codebase for you. To lint your code, run the following:

    ```bash
    npx eslint --ext .js,.ts src/
    ```

    To have your code fixed automatically, run

    ```bash
    npx eslint --ext .js,.ts src/ --fix
    ```

4. Over time, our code will become outdated and inevitably run into security vulnerabilities. To address them, you can run:

    ```bash
    npm audit fix
    ```

5. In `set_env.sh`, environment variables are set with `export $VAR=value`. Setting it this way is not permanent; every time you open a new terminal, you will have to run `set_env.sh` to reconfigure your environment variables. To verify if your environment variable is set, you can check the variable with a command like `echo $POSTGRES_USERNAME`.
