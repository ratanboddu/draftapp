# Getting Started

## Setting Up Virtualenv
  ```sh
   virtualenv --python={python path} env
   ```

## Activating the virtual environment

  ```sh
   source env/bin/activate
   ```

## Install the required packages

  ```sh
   make install
   ```

## Starting application server
-------
### Run Flask development server (for development)
  ```sh
   make run
   ```

### Run Gunicorn server (for production)
  ```sh
   make gunicorn
   ```

## Open Application in Browser
* open `http://localhost:5000/` in browser to access the application
* open `http://localhost:5000/application/api/docs#/` in browser to access Flasgger
