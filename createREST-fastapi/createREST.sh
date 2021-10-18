#!/bin/sh

# create dir
mkdir rest-api;
cd rest-api;

# virtualenv
python -m venv venv;

set -e;
source venv/Scripts/activate;

# packages
pip install fastapi uvicorn;

# main
echo "from fastapi import FastAPI

app = FastAPI()

@app.get('/')
def index():
    return {'method': 'get'}
    
@app.post('/')
def index():
    return {'method': 'post'}

@app.put('/')
def index():
    return {'method': 'put'} 
    
@app.delete('/')
def index():
    return {'method': 'delete'}" > app.py;



pip freeze > requirements.txt;