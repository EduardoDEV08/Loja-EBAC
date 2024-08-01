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

            

            
