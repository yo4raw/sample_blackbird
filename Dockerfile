FROM python:3.9
RUN apt-get update -qq && apt-get install -y git pip
RUN pip install --upgrade pip
RUN git clone --depth 1 https://github.com/p1ngul1n0/blackbird
WORKDIR /blackbird
RUN pip install -r requirements.txt

EXPOSE 5000

# Configure the main process to run when running the image
CMD ["python","blackbird.py","--web"]
