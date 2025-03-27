set shell := if windows? { ["powershell.exe", "-c"] } else { ["bash", "-c"] }

teste: 
    cd exemplos; poetry run pytest testes
lint: 
    poetry run ruff check exemplos
