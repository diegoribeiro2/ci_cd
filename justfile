set shell := ["powershell.exe", "-c"]

teste: 
    cd exemplos; poetry run pytest testes
lint: 
    poetry run ruff check exemplos