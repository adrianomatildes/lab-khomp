---

**Manifesto para 3 Pods com imagem nginx e limitação de recursos**

- Criei um manifesto que contém três Pods, cada um executando a imagem do nginx.
- Cada um dos Pods tem seu uso de recursos limitado a 512Mi.

**Criação de um Service para exposição da porta 80 dos Pods**

- Foi configurado um Service para expor a porta 80 dos Pods.
- Isso permite que os serviços dentro do cluster possam acessar os Pods nginx.

**Utilizando K3D para simular o cluster Kubernetes**

- O laboratório foi montado usando a tecnologia K3D, que simula um cluster Kubernetes.
- O cluster consiste em um Control plane e dois nós, configurados da seguinte forma:
  ```
  k3d cluster create khomp-lab --servers 1 --agents 2
  ```

---

Com essa configuração, você terá os três Pods do nginx executando e limitados em termos de uso de recursos, juntamente com um Service para acessá-los através da porta 80. Essa configuração é compatível com o uso do K3D para simular o cluster Kubernetes, proporcionando um ambiente próximo ao real para testes e desenvolvimento.