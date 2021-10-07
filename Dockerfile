# TODO: pull down the "slim" version of Python 3.6
# TODO: copy the app/ and classifier/ folders, as well as requirements.txt
# TODO set the working directory
# TODO: update all the Linux packages
# TODO: install dependencies like git, ibglib2.0-0, and more!
# TODO: expose a port (5000 is a popular choice)
# TODO: run the app locally using uvicorn 
    # (make sure to use the same port!) and also set --workers equal to 1

FROM python:3.6-slim
COPY ./app /app
COPY ./classifier /classifier
COPY ./requirements.txt /
WORKDIR /
RUN apt update && apt install -y git libglib2.0-0
RUN pip install -r requirements.txt
EXPOSE 5000
ENTRYPOINT uvicorn app.main:app --host 0.0.0.0 --port 5000 --workers 1