# TRABALHANDO COM ESTADO

No Terraform, um backend determina como serão armazenados e como será carregado um estado de uma infraestrutura. Por padrão Terraform grava o estado de uma infraestrutura localmente no arquivo terraform.tfstate em formato JSON do diretório que está sendo executado.

Quando se trabalha em times, backends serão gravados remotamente e protegidos contra qualquer tipo de corrupção utilizando locks de gravação. Backends também protegem dados sensíveis pois quando forem chamados para serem utilizados, os dados são armazenados em memória.

## DOC DE REFERÊNCIA TERRAFORM

- [Backends](https://www.terraform.io/language/settings/backends/configuration "Backends")
- [Manipulating State](https://www.terraform.io/cli/state "Manipulating State")
- [Importing Infrastructure](https://www.terraform.io/cli/import "Importing Infrastructure")

## Practice Labs - Lab 03: 

Trabalhando com estado

Instruções:

Para cada laboratório, crie um novo diretório. Caso haja qualquer erro, leia atentamente o terminal.

Utilize referências implicitas e explicitas se necessário.

##### Criando uma estrutura de exemplo

1. Crie um novo arquivo de provider e inicialize o Provider

2. Crie uma nova rede vpc com o nome vpc-teste.

3. Crie duas novas subnets na vpc-teste. Utilize referências implicitas para referenciar a vpc_teste.

4. Crie um security group **NA VPC DEFAULT** liberando a porta e o icmp tcp/22 para 0.0.0.0/0.

`Lembrete: não é preciso colocar o parâmetro vpc_id para criar um SG na vpc default.`

5. Crie um security group **na vpc_teste** liberando a porta e o icmp tcp/22 para 0.0.0.0/0. Utilize referências implicitas para referenciar a vpc_teste.

6. Valide via terraform state e via console que os recursos foram criados com sucesso.

##### Usando o state remoto uma estrutura de exemplo

6. Crie um novo diretorio (state) dentro do diretorio do lab para armazenar as definições de state

7. Copie o arquivo de configuração do provider para o diretorio state.

9. Crie e aplique o código para criar um bucket S3 para armazenar remotamente o estado da nossa infra.

`dica1: lembre-se de habilitar o versionamento e reforçar para que seja um bucket privado`

`dica2: O nome de um bucket precisa ser único a nível de toda a gcp, desse modo pode ser necessario vc testar mais de um nome`

10. Crie e aplique o código para criar uma tabela dynamodb para trata o lock do state armazenado no S3.

##### Usando o state remoto uma estrutura de exemplo

11. Na pasta original do lab altere o bloco `terraform` incluindo a configuração de backend apontando para o bucket criado.

12. Execute novamente o terraform init de modo a transferir o arquivo de state para o bucket.

13. Use o comando `terraform state list` para validar os recursos atualmente gerenciados pelo terraform.

14. Use o comando `terraform state rm` para remover a vpc-teste e a regra de firewall da rede default do estado de modo que eles permanecam na AWS mesmo depois do destroy.

15. Destrua a infraestrutura remanescente.

16. Valide via console que o SG e a rede vpc-teste continuam presentes na configuração da AWS.

17. Importe novamente a rede vpc-teste para o state e valide a importação utilizando os subcomandos `list` e `show` do state.

`dica3: você pode fazer esse import tanto usando o comando import quanto utilizando o bloco import, como preferir.`

18. Destrua toda a infraestrutura, em seguinda entre na pasta state e destrua também o bucket. **OBS.: O SG que foi removido do estado no passo 14 deve permanecer criado na rede default. Valide se a regra permanece via console.**

`
Obs: lembre-se de ao final destruir sua infraestrutura por questões de billing e manutenção sadia da sua free tier.
`