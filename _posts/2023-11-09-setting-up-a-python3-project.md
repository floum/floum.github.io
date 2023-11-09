# Setting up a Python 3 project

## Requirements

- python3 with pip and virtualenv
- git

## Setting Up

- Create a new empty git repository

- Create a requirements.txt

- Add your requirements to requirements.txt

```
pytest
```

- Set up a new virtualenv

```
virtualenv .env
```

- Add this line to your .gitignore

```
.env/
```

- Activate your virtualenv

```
source ./.env/bin/activate
```

- Install your python requirements

```
pip isntall -r requirements.txt
```
