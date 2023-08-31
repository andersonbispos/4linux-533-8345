# Practice Labs - Lab 01: 

## Criando configurações iniciais

Instruções:

Para cada laboratório, crie um novo diretório.

Para evitar erros realize cada item do exercício por partes, ou seja, crie e aplique cada parte da sua infraestrutura separadamente.

Como forma de organizar o código e facilitar a leitura do mesmo utilize um arquivo .tf separado para cada recurso.

Aproveite para fazer seus testes, para todo novo atributo que for criado, faça sempre o `terraform validate`, `terraform plan` para verificar a saída no output e só depois o `terraform apply` 

Caso haja qualquer erro, leia atentamente o terminal.

1. Crie um novo arquivo de provider e inicialize o Provider.

2. Crie o código para uma nova VPC (nome sugerido: vpc-lab01). *Valide*, *planeje* e *aplique* as alterações.

3. Crie o código para um volume de persistente de 10GB, do tipo **gp3**. *Valide*, *planeje* e *aplique* as alterações.

4. Valide na console da AWS a criação dos itens até aqui. 

5. Crie o código para uma nova instância EC2, na rede *default*, com um ip público efêmero. *Valide*, *planeje* e *aplique* as alterações.
- Dados sugeridos:
  - *name*: vm1
  - *ami*: ubuntu (22.04)

`
DICA: consulte na console da AWS o id da AMI correta
`

6. Teste o acesso SSH na máquina via console da AWS.

7. Crie um security group liberando, a porta **tcp 22** para 0.0.0.0/0, em seguida altere a instancia vm1 para usar o security group criado.

`
DICA1: lembre-se de incluir também a regra de egress liberando tudo!
DICA2: após criação do security group, consulte o ID na console da AWS!
`

7. Access a instancia **vm1** via `EC2 Instance Connect` e instale o serviço de nginx no servidor: 

```sh
sudo apt update; sudo apt install nginx -y
```

8. Teste o acesso ao serviço do nginx acessando o ip público da intância.

9. Altere o security group aplicado na liberando, a porta **tcp 80** para 0.0.0.0/0.

10. Teste novamente o acesso ao serviço do nginx acessando o ip público do seu ambiente.

11. Destrua os recursos criados.

12. Valide na console que todos os recursos foram destruídos com sucesso.

`
Obs: lembre-se de ao final destruir sua infraestrutura por questões de billing e manutenção sadia da sua free tier.
`

