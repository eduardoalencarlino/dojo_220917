#language: pt
#utf-8

Funcionalidade: Cadastro de empregado
    Eu como administrador do site ORANGEHRM
    Quero cadastrar um novo empregado

     Cenário: Incluir empregado
        Dado que eu esteja na tela de login do site ORANGEHRM
        Quando realizo o login
        E clico no menu pim
        E clico no submenu add employee
        E preencho os campos obrigatórios
        E clico no botão save
        Então empregado cadastrado com sucesso

    

    