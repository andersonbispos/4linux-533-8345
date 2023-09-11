### Practice Labs - Lab 04

Utilizando worksapces

Instruções:

Para cada laboratório, crie um novo diretório. Caso haja qualquer erro, leia atentamente o terminal.

Utilize referências implicitas e explicitas sempre que necessário.

A idéia durante o laboratório é criarmos a estrutura inicial do nosso projeto final, que basicamente vai definir uma nova rede, um modelo de instância e os instances groups.

Aproveite parar fazer seus testes, todo novo recurso que for criado, faça sempre o `terraform validate`, `terraform plan` para verificar a saída no output.

#### Trabalhando com workspaces

1. Crie um novo diretorio LAB08 e copie o arquivo de `provider` para esse diretório

1. Crie um workspace com o nome prod.

1. Crie as definições de uma vpc, uma subnet, um security group e uma instancia com as devidas alterações para uso dos workspaces.

    - A workspace de prod deve usar a regiao sa-east-1.
    - O security group deve liberar acesso icmp e para a porta 80
    - Na criação da instância, use o parâmetro user-data para instalar o servidor nginx no provisionamento da instância
    - Para que os ambientes sejam funcionais crie a subnet como publica e lembre-se de criar os recursos adicionais a vpc: internet gateway e tabela de rotas.

`Para a workspace de prod devem ser criadas 2 instâncias para qualquer outro, deve ser criado apenas uma instância.`

1. Crie um novo workspace dev.

1. Valide via terraform state list que o estado do ambiente dev está vazio.

1. Aplique a configuração para criar o ambiente de dev.

    - A workspace de dev deve usar a regiao us-east-2.

1. Valide via console que os recursos (vpc, subnet e rede) estão duplicados, com as devidas identificações dos ambientes e nas regiões corretas

1. Destrua a infra criada no workspace de DEV.

1. Valide via terraform state e via console que o ambiente foi destruído.

1. Alterne para a workspace de prod, valide via `state list` que a infra ainda exite.

1. Destrua a infra de prod.

1. Alterne para a workspace default e remova as workspaces de dev e de prod.

`
Obs: lembre-se de ao final destruir sua infraestrutura por questões de billing e manutenção sadia da sua free tier.
`