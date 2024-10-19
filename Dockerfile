FROM python:3.11

WORKDIR /usr/local/app

# Install the application dependencies
COPY requirements.txt ./
RUN pip install  -r requirements.txt

# Copy in the source code
COPY src ./src
COPY config ./config

CMD ["python", "./src/kimsufi.py","-c","./config/kimsufi.conf"]