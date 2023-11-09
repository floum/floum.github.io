## Requirements

- python3 with pip and virtualenv
- git

## Setting Up

- Create a new empty git repository

- Create a `requirements.txt` and add your requirements there.

`requirements.txt`
```text
pytest
```

- Set up a new virtualenv

```bash
virtualenv .env
```

- Add this line to your `.gitignore`

```bash
.env/
```

- Activate your virtualenv

```bash
source ./.env/bin/activate
```

- Install your python requirements

```bash
pip install -r requirements.txt
```
