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