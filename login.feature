#language: pt


            Funcionalidade: Configuração de Produto
            Como cliente da EBAC-SHOP
            Quero configurar meu produto de acordo com meu tamanho e gosto
            E escolher a quantidade
            Para depois inserir no carrinho


            Contexto:
            Dado que eu acesse a página de produtos

            Cenário: Autenticação Válida
            Quando eu selecionar Cor "vermelho",Tamanho "G"
            E a quantidade "2"
            Então deve exibir uma mensagem de "inserir no carrinho"

            Cenário: Autenticação Inexistente
            Quando não selecionar Cor "vermelho"e Tamanho "G"
            E a quantidade "2"
            Então deve exibir uma mensagem de "Cor e tamanho não selecionados"

            Cenário: Usuário com senha inválida
            Quando não selecionar Cor "vermelho"e Tamanho "G"
            Então deve exibir uma mensagem de alerta: "Cor ou tamanho inválidos"

            #language: pt


            Funcionalidade: Login na Plataforma
            Como Cliente
            Quero fazer login (autenticação) na plataforma
            Para Visualizar meus pedidos

            Contexto:
            Dado que eu acesse a página de autenticação da EBAC-SHOP

            Cenário: Autenticação Válida
            Quando eu digitar o usuário "eduardo@ebac.com.br"
            E a senha "senha@123"
            Então deve exibir uma mensagem de boas vindas "Olá João"

            Cenário: Usuário Inexistente
            Quando eu digitar o usuário "xxxxxxxx@ebac.com.br"
            E a senha "senha@124"
            Então deve exibir uma mensagem de alerta "Usuário inexistente"

            Cenário: Usuário com senha inválida
            E a senha "dsajkdhashbdnjasmkdau"
            Então deve exibir uma mensagem de alerta: "Usuário ou senha ou E-mail inválidos"

            #language: pt


            Funcionalidade: Tela de Cadastro - Checkout
            Deve ser cadastrado com todos os dados obrigatórios, marcado com asteriscos
            Não deve permitir campo e-mail com formato inválido. Sistema deve inserir uma mensagem de erro
            Ao tentar cadastrar com campos vazios, deve exibir mensagem de alerta. 


            Contexto:
            Dado que eu acesse a página de cadasstro da EBAC-SHOP

            Cenário: Autenticação Válida
            Deve cadastrar com todos os "dados obrigatórios"
            Marcado com "asteriscos"
            Então deve exibir uma mensagem de "Cadastro concluído"

            Cenário: Usuário Inexistente
            Quando eu digitar o e-mail "xxxxxxxx@ebac.com.br"
            E a senha "senha@123"
            O sistema deve inserir uma mensagem de erro "E-mail inválido"

            Cenário: Usuário com campo inválida
            E a senha "dsajkdhashbdnjasmkdau"
            Ao tentar cadastrar com campos vazios "Campo obrigatório vazio"