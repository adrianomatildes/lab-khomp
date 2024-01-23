# Descrição

## Infraestrutura com VPC para Acesso SSH Dinâmico

Este projeto visa criar uma infraestrutura na AWS utilizando o Terraform, consistindo em uma Virtual Private Cloud (VPC) com recursos configurados para permitir acesso SSH a um IP específico (no caso, o IP do usuário). A principal característica é a capacidade de criar dinamicamente instâncias EC2 para facilitar a configuração de ambientes de laboratório para estudos.

### Componentes e Configurações:

- **VPC (Virtual Private Cloud):**
  - Configuração de uma VPC para isolar a infraestrutura na nuvem.

- **Acesso SSH:**
  - Configuração de regras de segurança para permitir o acesso SSH apenas a partir do IP especificado (do usuário).

- **Recursos Dinâmicos via Terraform:**
  - Utilização do Terraform para criar instâncias EC2 de forma dinâmica, possibilitando a rápida implementação e destruição de ambientes de laboratório conforme necessário.

### Procedimentos Técnicos:

1. **Configuração da VPC:**
   - Utilização do Terraform para definir e provisionar a VPC com subnets, rotas e gateways necessários.

2. **Acesso SSH Seguro:**
   - Configuração de regras de segurança (Security Groups) para permitir apenas o acesso SSH ao IP especificado.


3. **Criação Dinâmica de EC2:**
   - Utilização do recurso `count` do Terraform para criar dinamicamente instâncias EC2 conforme a necessidade do laboratório de estudo.

Para evitar erros no arquivo `backend.tf`, é necessário criar o bucket S3 manualmente antes de prosseguir.

4. **backend.tf:**
   Certifique-se de criar o arquivo `backend.tf` com as configurações desejadas para o backend, como tipo de armazenamento remoto, região, etc.

5. **Criação Manual do Bucket S3:**
   Antes de aplicar a configuração do backend, é essencial criar o bucket S3 associado. Isso pode ser feito manualmente, utilizando a interface do usuário da AWS ou ferramentas de linha de comando como o AWS CLI.


### Notas Importantes:

- Certifique-se de que as credenciais da AWS estejam configuradas localmente.
- Personalize as variáveis no arquivo Terraform conforme sua preferência e necessidade.
- Ao finalizar o laboratório, utilize o Terraform para destruir os recursos e evitar custos desnecessários.

Este projeto fornece uma infraestrutura flexível e escalável para apoiar seus estudos práticos em um ambiente controlado e eficiente na nuvem AWS.

**Autor:** Adriano Matildes