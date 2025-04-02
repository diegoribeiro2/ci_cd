CI (Continuous Integration) e CD (Continuous Deployment) no GitHub Actions
🔹 CI (Continuous Integration) – Integração Contínua
O CI garante que o código está sempre funcionando corretamente ao rodar testes automaticamente a cada mudança no repositório.

No GitHub Actions, um workflow de CI normalmente faz:
✅ Checkout do código (pegar a versão mais recente do repositório).
✅ Rodar linter e formatador (garante que o código segue um padrão, ex: black, flake8).
✅ Executar testes automatizados (testa se tudo está funcionando, ex: pytest).
✅ Verificar dependências (instala pacotes e verifica se tudo roda certo).
✅ Construir a aplicação (garante que o código pode ser empacotado, por exemplo, em um container Docker).

🛠 Como isso se aplica ao seu projeto de ML?
No seu projeto de Machine Learning, um pipeline de CI pode ser usado para:

Testar os modelos antes de subir para produção.

Garantir que o código da API (FastAPI) e os scripts do MLflow estão funcionando corretamente.

Rodar testes automatizados em funções de pré-processamento, modelos e APIs de inferência.

📌 Na prática, seu workflow de CI (exemplo_ci.yaml) deve rodar sempre que você fizer um push ou pull request, verificando a qualidade do código e rodando os testes antes de permitir que o código entre no repositório principal.

🔹 CD (Continuous Deployment) – Deploy Contínuo
O CD automatiza a implantação do código para um ambiente de produção sempre que uma nova versão está pronta.

No GitHub Actions, um workflow de CD normalmente faz:
✅ Build da aplicação (constrói a imagem Docker).
✅ Login no Docker Hub (para subir a imagem).
✅ Publicação da imagem Docker (envia para o repositório Docker Hub).
✅ Deploy em um servidor ou serviço em nuvem (exemplo: AWS, Azure, Google Cloud).

🛠 Como isso se aplica ao seu projeto de ML?
No seu projeto, o CD pode ser usado para:

Criar automaticamente uma nova versão do container Docker da sua API FastAPI.

Publicar a imagem no Docker Hub para que possa ser usada em produção.

Fazer o deploy em um servidor real que recebe requisições para predição de sentimento.

📌 Na prática, seu workflow de CD (exemplo_cd.yaml) vai rodar manualmente (workflow_dispatch) e publicar sua API como um container no Docker Hub. Isso significa que, quando estiver pronto para uma nova versão do seu modelo, você só precisa disparar o workflow para atualizar a API em produção!
