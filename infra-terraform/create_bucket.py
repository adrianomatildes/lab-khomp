import time
import subprocess
import botocore.session

def create_s3_bucket(bucket_name, region_name):
    session = botocore.session.get_session()
    client = session.create_client('s3', region_name=region_name)
    
    response = client.create_bucket(
        Bucket=bucket_name
    )
    print(f"Bucket '{bucket_name}' criado com sucesso na região {region_name}.")

def main():
    bucket_name = 'khomp-bucket'
    region_name = 'us-east-1'

    # Criar o bucket S3
    create_s3_bucket(bucket_name, region_name)

    # Aguardar 15 segundos
    print("Aguardando 15 segundos antes de inicializar o Terraform...")
    time.sleep(15)

    try:
        # Executar 'terraform init -upgrade'
        subprocess.run(["terraform", "init", "-upgrade"], check=True)
    except subprocess.CalledProcessError as e:
        print(f"Erro ao executar 'terraform init -upgrade': {e}")

    try:
        # Executar 'terraform fmt' para formatar os arquivos do Terraform
        subprocess.run(["terraform", "fmt"], check=True)

        # Executar 'terraform validate' para validar a configuração do Terraform
        subprocess.run(["terraform", "validate"], check=True)

        # Executar 'terraform plan' para gerar o plano de execução do Terraform
        subprocess.run(["terraform", "plan"], check=True)
    except subprocess.CalledProcessError as e:
        print(f"Erro ao executar Terraform command: {e}")

if __name__ == "__main__":
    main()