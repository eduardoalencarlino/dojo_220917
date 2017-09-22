#language: pt
#utf-8
@doing
Funcionalidade: Editar empregado 
    Eu como administrador 
    Quero editar um empregado já existente na base de dados

    Cenário: Altera empregado
        Dado que eu esteja na tela de login do site ORANGEHRM
        Quando realizo o login
        E busco o empregado desejado acessando os Menus PIM/Employee List
        E clico no botão Edit
        E edito os campos permitidos que desejo 
        E clico no botão Save
        Então deve ser exibida uma mensagem informando que foi salva com sucesso
