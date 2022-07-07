# Jenkins-Flask

## Local Dev

### Option 1:

> python3 app.py
> python3 test.py

### Option 2:

> docker build -t flask-image .
> docker run -p 5000:5000 --rm --name flask-container flask-image
> docker images -a | grep "flask"

### Option 3:

> docker-compose up --build -d
> docker-compose down

