#### ALTERANDO O PÁGINA INICIAL DO NGINX

- instalar o nginx:

```sh
#!/bin/bash
sudo apt update; sudo apt install -y nginx
```

- nginx em us-east1-b

```sh
sudo sed -i 's/nginx!/nginx-us-east2-a/g' /var/www/html/index.nginx-debian.html
```

- nginx em us-east1-c 

```sh
sudo sed -i 's/nginx!/nginx-us-east2-b/g' /var/www/html/index.nginx-debian.html
```


#### OBTENDO PERMISSÕES NECESSÁRIAS PARA O TERRAFORM USER:

Para garantir que seu Terraform consiga realizar a criação de todos recursos contidos neste projeto, recomendo a criação de um usuário (ex.: `tfadmin`), e garanta que ele possua as seguintes permissões, do contrário, permita apenas acesso aos resources que deseja provisionar.

```json
{
    "Version": "2012-10-17",
    "Statement": [
        {
            "Sid": "AllowSpecifics",
            "Action": [
                "ec2:*", 
                "s3:*", 
                "elasticloadbalancing:*", 
                "autoscaling:*"
            ],
            "Effect": "Allow",
            "Resource": "*"
        },
        {
            "Sid": "DenySpecifics",
            "Action": [
                "iam:*User*",
                "iam:*Login*",
                "iam:*Group*",
                "iam:*Provider*",
                "aws-portal:*",
                "budgets:*",
                "config:*",
                "directconnect:*",
                "aws-marketplace:*",
                "aws-marketplace-management:*",
                "ec2:*ReservedInstances*"
            ],
            "Effect": "Deny",
            "Resource": "*"
        }
    ]
}
```

Referência na [apostila](https://aia.4linux.com.br/pluginfile.php/131119/mod_filewithwatermark/content/1/Git-TerraformInfraestruturaComoCodigoAWS_material_full_v14.pdf, "apostila"): `PÁGINA 36`

---
#### INSTALANDO AWS CLI

Usaremos o AWS CLI para autenticar o terraform ao provider. Para instalar, siga os comandos abaixo: 

Para `MAC`:

```sh
curl "https://awscli.amazonaws.com/AWSCLIV2.pkg" -o "AWSCLIV2.pkg"
sudo installer-pkg AWSCLIV2.pkg-target /
```

Para `Linux x86`:

```sh
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip awscliv2.zip 
sudo ./aws/install
```

Após baixado e configurado, execute o comando abaixo e preencha as informações solicitadas com as do usuário que criamos anteriormente.

```sh
aws configure 
```

A saída esperada deve ser similar a essa:

```sh
AWS Access Key ID [****************YLWN]: 
AWS Secret Access Key [****************3yDp]: 
Default region name [us-east-1]: 
Default output format [json]:
```


#### EXPORTANDO VARIAVEIS DE AMBIENTE

As credenciais podem ser fornecidas usando as variáveis ​​de ambiente `AWS_ACCESS_KEY_ID`, `AWS_SECRET_ACCESS_KEY` e, opcionalmente, `AWS_SESSION_TOKEN`. 
A região pode ser definida usando as variáveis ​​de ambiente `AWS_REGION` ou `AWS_DEFAULT_REGION`.

Adicionando variáveis no `bashrc`, não se esqueça de substituir os valores das variáveis.

```sh
sudo tee -a ~/.bashrc > /dev/null <<EOF
#
# EXPORTING PROVIDER AWS VARS INTO PROFILE
#
export AWS_ACCESS_KEY_ID="anaccesskey"
export AWS_SECRET_ACCESS_KEY="asecretkey"
export AWS_REGION="us-east-1"
EOF
```

Adicionando variáveis no `zshrc`, não se esqueça de substituir os valores das variáveis.

```sh
sudo tee -a ~/.zshrc > /dev/null <<EOF
#
# EXPORTING PROVIDER AWS VARS INTO PROFILE
#
export AWS_ACCESS_KEY_ID="anaccesskey"
export AWS_SECRET_ACCESS_KEY="asecretkey"
export AWS_REGION="us-east-1"
EOF
```

```sh
#
# EXPORTING PROVIDER AWS VARS INTO PROFILE ON WINDOWS
#
set AWS_ACCESS_KEY_ID="anaccesskey"
set AWS_SECRET_ACCESS_KEY="asecretkey"
set AWS_REGION="us-east-1"
```
---

#### COMANDOS DE REFERENCIA

1. Para inicializar o Provider, utilize o comando o comando de inicialização:

```sh
terraform init
```

2. O plano de execução do Terraform irá mostrar no terminal o que será criado ou modificado em sua infraestrutura,caso houver qualquer tipo de alteração de valores o Terraform irá mostrar qual o valor original e qual o novo valor que será inserido.

O comando para planejar o que será criado é o seguinte:

```sh
terraform plan
```

3. Para aplicar de fato sua infraestrutura, o comando é o `apply`, que basicamente é a saída apresentada no comando do “plan”.

```sh
terraform apply 
```

O sub-comando `-auto-approve`, indica que não queremos confirmação para criar infraestrutura.

4. Da mesma forma que se constrói infraestrutura, podemos deletar utilizando o sub-comando destroy.

```sh
terraform destroy
```

Da mesma forma que fizemos com o `apply`, aqui também podemos passar o subcomando `-auto-approve` para não pedir confirmação.