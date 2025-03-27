# Definir o shell dependendo do sistema operacional
set shell := if windows? then ["powershell.exe", "-c"] else ["bash", "-c"]

teste: 
    cd exemplos; poetry run pytest testes
lint: 
    poetry run ruff check exemplos
