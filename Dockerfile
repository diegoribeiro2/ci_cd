FROM python:3.11

WORKDIR /app

# nao é necessário copiar testes para o container de deploy
COPY exemplos/scripts/ /app/scripts/

COPY pyproject.toml /app/pyproject.toml
COPY poetry.lock /app/poetry.lock

RUN pip install poetry==2.1.1  

# --without dev para não instalar dependencias de desenvolvimento (pytest etc.)
RUN poetry install --without dev 

CMD ["poetry", "run", "python", "scripts/script_simples.py"]
