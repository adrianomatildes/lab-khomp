## Resumo da Prova Prática

Este repositório contém questões de prova prática da seleção para o cargo de Analista de SRE. A prova consiste em demonstrar conhecimentos em diversas áreas, como Cloud, Kubernetes, Linux/Ansible e Redes.

### Cloud / Terraform
Utilizando Terraform, foi declarada uma infraestrutura na nuvem, incluindo:
- Uma instância (VM) rodando Ubuntu 18.04
- Uma VPC/Vnet com pelo menos uma subnet
- Um security group com uma regra para acesso SSH a partir de um IP específico
- Um bucket/storage para armazenamento de arquivos

### Kubernetes
- Declare um manifesto que contenha 3 pods com uma imagem nginx limitando o uso de recursos de cada um dos pods em 512Mi.
- Crie um service que exponha a porta 80 dos pods
- Supondo que você tenha dois Nodes no cluster, como garantiria que ao menos um desses Pods estaria rodando em cada um dos Nodes.

### Linux / Ansible
Foi criado um playbook do Ansible que:
- Cria um usuário "khomp" com senha aleatória e o adiciona ao grupo "sudo".
- Configura o SSH para permitir apenas acesso por chave pública para o usuário "khomp".
- Instancia um webserver de preferência e configura para rodar na inicialização do S.O.
- Cria um arquivo HTML chamado "index.html" na pasta padrão do web server com o conteúdo "Bem-vindo ao meu site".
- Realiza ajustes necessários para o funcionamento correto do webserver.

### Redes
Tendo o diagrama abaixo como base, explique com suas palavras como as duas máquinas conseguem se comunicar
<p align="center">
  <img src="https://raw.githubusercontent.com/adrianomatildes/lab-khomp/master/img/redes.png" alt="Diagrama de Rede">
</p>
