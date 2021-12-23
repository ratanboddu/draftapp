# Application-Backend

## virtual environment setup
`virtualenv --python={python path} env`

## activate virtual environment
`source env/bin/activate`

##install the pip packages
`make install`

## Running application
### run flask development server (for development)
`make run`
### run gunicorn server (for production)
`make gunicorn`


open `http://localhost:5000/` in browser to access the application
open `http://localhost:5000/application/api/docs#/` in browser to access Flasgger

### Running test cases

```
make test  # run test cases using pytest
```

### Running docker images

```
docker login docker_registry
docker pull image-tag:xxxx
docker run --publish 5000:5000 image-tag:xxxx
```

Note: replace xxxx with the version before running
