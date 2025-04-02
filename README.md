# 🚀 CI/CD com GitHub Actions para Machine Learning

Este repositório utiliza **GitHub Actions** para automatizar os processos de **CI (Continuous Integration)** e **CD (Continuous Deployment)**, garantindo qualidade e agilidade no desenvolvimento e implantação do projeto de **Machine Learning**.

## 📌 O que é CI/CD?

### 🔹 **CI (Continuous Integration) – Integração Contínua**
O CI garante que o código está sempre funcionando corretamente ao rodar testes automaticamente a cada mudança no repositório.

No **GitHub Actions**, um workflow de CI normalmente faz:
✅ **Checkout do código** (pegar a versão mais recente do repositório).  
✅ **Rodar linter e formatador** (garante que o código segue um padrão, ex: `black`, `flake8`).  
✅ **Executar testes automatizados** (testa se tudo está funcionando, ex: `pytest`).  
✅ **Verificar dependências** (instala pacotes e verifica se tudo roda certo).  
✅ **Construir a aplicação** (garante que o código pode ser empacotado, por exemplo, em um container Docker).  

### 🛠 **Como isso se aplica ao projeto de ML?**
No projeto de **Machine Learning**, o CI pode ser usado para:
- Testar os modelos antes de subi-los para produção.
- Garantir que o código da **API FastAPI** e os scripts do **MLflow** estão funcionando corretamente.
- Rodar testes automatizados em funções de pré-processamento, modelos e APIs de inferência.

📌 **Na prática**, o workflow de CI (`.github/workflows/ci.yaml`) roda sempre que há um `push` ou `pull request`, verificando a qualidade do código e rodando os testes antes de permitir mudanças no repositório principal.

---

### 🔹 **CD (Continuous Deployment) – Deploy Contínuo**
O CD automatiza a implantação do código para um ambiente de produção sempre que uma nova versão está pronta.

No **GitHub Actions**, um workflow de CD normalmente faz:
✅ **Build da aplicação** (constrói a imagem Docker).  
✅ **Login no Docker Hub** (para subir a imagem).  
✅ **Publicação da imagem Docker** (envia para o repositório Docker Hub).  
✅ **Deploy em um servidor ou serviço em nuvem** (exemplo: AWS, Azure, Google Cloud).  

### 🛠 **Como isso se aplica ao projeto de ML?**
No projeto de **Machine Learning**, o CD pode ser usado para:
- Criar automaticamente uma nova versão do **container Docker** da API **FastAPI**.
- Publicar a imagem no **Docker Hub** para que possa ser usada em produção.
- Fazer o deploy em um servidor real que recebe requisições para predição de sentimento.

📌 **Na prática**, o workflow de CD (`.github/workflows/cd.yaml`) pode ser executado manualmente (`workflow_dispatch`) para publicar uma nova versão da API como um container Docker pronto para produção.

---

## 🚀 Benefícios do CI/CD
✅ **Automação** → Menos erros manuais e mais velocidade no desenvolvimento.  
✅ **Confiabilidade** → O código sempre passa por testes antes de ser integrado.  
✅ **Facilidade de Deploy** → Atualizar a API e os modelos é simples e rápido.  
✅ **Menos tempo corrigindo bugs** → Testes automatizados evitam problemas em produção.  

Com esse setup, sempre que o código for ajustado, ele será testado automaticamente. Quando estiver pronto, o deploy pode ser feito com um clique no GitHub Actions! 🔥

---

### 📜 Exemplo de Workflows:
- **CI:** `.github/workflows/ci.yaml`
- **CD:** `.github/workflows/cd.yaml`
