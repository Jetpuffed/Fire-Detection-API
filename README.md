## Usage

### Local

#### Docker (Recommended)
Clone this repository and create an image using [Docker](https://docker.com/get-started):

```
$ docker-compose up
```

After creating the image, run it then navigate to [http://localhost:5000/docs](http://localhost:5000/docs).

#### Local install
If you prefer to clone and run this locally, it's recommended to use a virtual environment, such as conda, pyenv, etc.. Here is an example with conda below:

```
$ conda create --prefix ./conda python=3.9
$ conda activate ./conda
$ pip install -r requirements.txt
$ uvicorn app.main:app --reload
```

After running the commands above, navigate to [http://localhost:5000/docs](http://localhost:5000/docs).