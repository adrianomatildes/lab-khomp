## Resumo da Prova Prática

Este repositório contém as respostas para a prova prática da seleção para o cargo de Analista de SRE na Khomp. A prova consiste em demonstrar conhecimentos em diversas áreas, como Cloud, Kubernetes, Linux/Ansible e Redes.

### Cloud / Terraform
Utilizando Terraform, foi declarada uma infraestrutura na nuvem, incluindo:
- Uma instância (VM) rodando Ubuntu 18.04
- Uma VPC/Vnet com pelo menos uma subnet
- Um security group com uma regra para acesso SSH a partir de um IP específico
- Um bucket/storage para armazenamento de arquivos

Para criar redundância neste ambiente, seria necessário implementar técnicas de failover, como balanceamento de carga e replicação de instâncias.

### Kubernetes
Foram declarados três pods com imagem nginx, cada um limitado a 512Mi de recursos, e um service expondo a porta 80 dos pods. 
- Para garantir que ao menos um pod estaria rodando em cada nó, seria necessário utilizar o conceito de PodAntiAffinity.
- Para monitorar o uso de recursos e a disponibilidade do cluster Kubernetes, seriam utilizadas ferramentas como Prometheus e Grafana.
- Um problema de falta de memória em um pod no cluster seria identificado através de métricas de uso de recursos e poderia ser corrigido aumentando a alocação de memória ou otimizando a aplicação.

### Linux / Ansible
Foi criado um playbook do Ansible que:
- Cria um usuário "khomp" com senha aleatória e o adiciona ao grupo "sudo".
- Configura o SSH para permitir apenas acesso por chave pública para o usuário "khomp".
- Instancia um webserver de preferência e configura para rodar na inicialização do S.O.
- Cria um arquivo HTML chamado "index.html" na pasta padrão do web server com o conteúdo "Bem-vindo ao meu site".
- Realiza ajustes necessários para o funcionamento correto do webserver.

### Redes
As duas máquinas conseguem se comunicar através de uma conexão de rede, possivelmente através de um switch ou roteador, que permite a troca de dados entre elas baseado em endereços IP e portas de comunicação.