FROM python:3.10-slim

WORKDIR /app

RUN pip install --no-cache-dir notebook nbconvert

COPY . /app

CMD ["jupyter", "nbconvert", "--to", "notebook", "--execute", "notebook.ipynb"]
