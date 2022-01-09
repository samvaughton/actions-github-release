# Container image that runs your code
FROM python:3.9-bullseye

RUN pip install --no-cache-dir pygithub
COPY entrypoint.py /entrypoint.py

RUN chmod +x /entrypoint.py
ENTRYPOINT ["/entrypoint.py"]
