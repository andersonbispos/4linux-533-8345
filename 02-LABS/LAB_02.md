# Practice Labs - Lab 02

## Trabalhando com dependências

Instruções:

Para cada laboratório, crie um novo diretório.

Aproveite parar fazer seus testes, todo novo atributo que for criado, faça sempre o `terraform validate`, `terraform plan` para verificar a saída no output.

Crie os arquivo de todos os recursos usando referências implicitas e explictas quando necessário e execute o código apenas no final de cada parte do lab.

Caso haja qualquer erro, leia atentamente o terminal.

1. Inicialize o Provider.

##### Preparando a Rede

**- Na primeira parte** do LAB será criada uma vpc, duas subnets e um security group.

1. Crie o código de uma vpc, com o nome tf-vpc-lab, na faixa **192.168.0.0/16** na região **sa-east-1** rode apenas o validate e o plan, não aplique a infraestrutura ainda.

1. Crie o código de uma subnet1 com faixa **192.168.10.0/24**, na zona **sa-east-1b** vinculada a vpc: tf-vpc-lab. Rode apenas o validate e o plan, não aplique a infraestrutura ainda.

1. Crie o código de uma subnet2 com faixa **192.168.20.0/24**, na zona **sa-east-1c** vinculada a vpc: tf-vpc-lab. Rode apenas o validate e o plan, não aplique a infraestrutura ainda.

1. Crie um security group com o nome 'allow-default-ports' liberando o protocolo icmp e a porta 80 para 0.0.0.0/0, na rede tf-vpc-lab. Rode apenas o validate e o plan, não aplique a infraestrutura ainda.

1. Crie um internet gateway uma tabela de rotas apontando a roda default para o igw e associe a tabela com as duas subnets.

1. Aplique a configuração criada até aqui e, observe se os elementos foram criados na ordem correta obedecendo as dependências definidas.

1. Valide via `terraform state list` e também via console que o ambiente foi criado corretamente.

##### Preparando o ambiente de processamento

**- Na segunda parte do LAB** será criado um disco pra dados que vai ser apresentando a instancia de db e duas instâncias de webserver que devem ter uma referência explicita ao servidor dbserver1.

9. Crie o código de um disco de 30 gigas, do tipo **gp3** com nome: **dados**, na zona **sa-east-1c**. Rode apenas o validate e o plan, não aplique a infraestrutura ainda.

10. Crie o código de uma nova instância, com o nome dbserver1, na subnet2, com um **ip público efêmero** e com o **disco `dados` atachado a ela**. Use a image: `ubuntu 22.04`. Rode apenas o validate e o plan, não aplique a infraestrutura ainda.

`
Para as instâncias de webserver abaixo, inclua uma referência explicita de modo que elas só sejam criadas após a criação da instância dbserver1
`

11. Crie o código de duas novas instâncias, com o nomes web1 e web2, nas subnets 1 e 2 respectivamente, com **ip público**. **Faça com que o nginx seja instalado no momento em que o servidor é instanciado sem a necessiade de logar no servidor para realizar a instalação**. (Dica: verifique na documentação do recurso aws_instance e pelo parâmetro user_data)

```sh Parâmetro do user data instalação Nginx:
base64encode("#!/bin/bash\n sudo apt update; sudo apt install nginx -y")
```

12. Aplique a configuração criada até aqui, observe se os elementos foram criados na ordem correta obedecendo as dependências definidas.

13. Valide via `terraform state` e também via console que o ambiente foi criado corretamente.

14. Tente acessar o SSH da instância dbserver1.

15. Crie um security com o nome 'allow-ssh' liberando a porta 22 para 0.0.0.0/0, na rede tf-vpc-lab e aplique o código da sg 'allow-ssh'  nas instâncias para habilitar o acesso ssh.

16. Acesse o SSH da instância dbsever1 via console e valide quantos discos existem. Dica: use o comando `lsblk`.

17. Acesse o SSH da instância web1 via console, rode o comando `lsblk` e compare a saída com a do dbserver1.

18. Em um browser acesse os ips públicos dos servidores web1 e web2 para garantir que o nginx foi instalado.

`
DICA: vc precisa ter associado o security group allow-default-ports as intancias para que seja possivel testar o nginx.
`

19. Destrua todo o ambiente e valide que todos os elementos foram removidos via validação do state e também via console.

##### Criando o ambiente completo, com um só comando.

20. Execute novamente o comando apply para recriar todo o ambiente e teste novamente os acessos ao nginx.

21. Destrua todo o ambiente e valide que todos os elementos foram removidos via validação do state e também via console.
`
Obs: lembre-se de ao final destruir sua infraestrutura por questões de billing e manutenção sadia da sua free tier.
`


