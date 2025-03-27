import requests


def preparar_dados():
    """Prepara dados para a predição."""
    posts = requests.get("https://jsonplaceholder.typicode.com/posts/1")
    posts = posts.json()
    # manipular dados
    posts["total"] = posts["title"] + "\n" + posts["body"]
    return posts

if __name__ == "__main__":
    dados = preparar_dados()
    print('Dados preparados com sucesso!')
    print("Dados: ", dados)