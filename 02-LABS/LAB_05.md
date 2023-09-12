#### DOC DE REFERÊNCIA

1. [Criando e Usando Modulos Locais](https://learn.hashicorp.com/tutorials/terraform/module-create?in=terraform/modules "Criando e Usando Modulos Locais")
2. [terraform-docs](https://terraform-docs.io/ "terraform-docs")
---

### Practice Labs - Lab 05

Criando e usando módulos locais

Instruções:

Para cada laboratório, crie um novo diretório. Caso haja qualquer erro, leia atentamente o terminal.

Utilize referências implicitas e explicitas sempre que necessário.

Aproveite parar fazer seus testes, todo novo recurso que for criado, faça sempre o `terraform validate`, `terraform plan` para verificar a saída no output.

1. Crie um novo diretorio LAB09 e dentro dele um diretorio tf-modules.

#### Criando um módulo pra rede

**- Criar um módulo local para criar VPC, o módulo deve permitir a escolha de rede gerenciada ou não.**

1. Crie um módulo para criar uma VPC.

    - O módulo deve suportar como parâmetros de entrada ao menos: name, cidr_block, enable_dns_hostnames e enable_dns_support
    - O parâmebro: **cidr_block** deve ser requerido. (Ou seja, não deve possui valor padrão no módulo)
    - O módulo de VPC deve incluir um security group liberando o protocolo icmp e a porta tcp 22, associado a VPC criada.
    - O modulo deve criar também uma internet gateway e uma tabela de rota publica.
    - Crie outputs para seu módulo: o modulo deve exportar ao menos os parâmetros id de todos os recursos que forem criados no modulo para permitr a criação de referências implicias aos recursos dos modulos;

1. Crie a documentação para o seu módulo, arquivos README.md e LICENSE (O arquivo README.md deve conter no mínimo uma descrição do que faz o módulo)

1. Na raiz do LAB, crie um arquivo .tf para consumir e testar o módulo.

1. **Valide**, **Planeje** e **Aplique** as configuração alteradas/criadas até aqui, observe se os elementos foram criados na ordem correta obedecendo as dependências definidas.

1. Valide que a infra foi criada com sucesso.

#### Criando um recurso subnet

1. Crie uma subnet publica associada a VPC criada nos passos anteriores;
1. Associe a subnet a tabela de rotas criada nos passos anteriores;

#### Criando um módulo para instância

**- Criar módulo para criar instâncias**

1. Crie um módulo que crie instancias:

    - O resultado do módulo deve ser a crianção de uma instância;
    - O modulo deve receber como parâmetros, no mínimo: name, availability_zone, subnet_id, security_group_ids, instance_type e ami.
    - Os parâmetros **availability_zone**, **subnet_id** e **security_group_ids** devem ser obrigatórios.
    - A instância deve ser criada com ip público.
    - Crie outputs para seu módulo: o modulo deve exportar ao menos os parâmetros: id e public_ip.

1. Crie a documentação para o seu módulo, arquivos README.md e LICENSE (O arquivo README.md deve conter no mínimo uma descrição do que faz o módulo)

1. Na raiz do LAB, crie um arquivo .tf, ou utilize os arquivos já criados, para consumir, testar o módulo e criar a instância (A instancia deve consumir os recursos subnet e security group já criados)

1. Exiba o ip publico da instância ao final da criação da instância

1. **Valide**, **Planeje** e **Aplique** as configuração alteradas/criadas até aqui, observe se os elementos foram criados na ordem correta obedecendo as dependências definidas.

1. Valide que a infra foi criada com sucesso e realize um ping ao ip publico exibido.

1. Destrua toda a infra.