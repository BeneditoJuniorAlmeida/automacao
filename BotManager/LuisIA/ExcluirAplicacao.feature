Funcionalidade: Excluir aplicação

Cenário: Excluir aplicação confirmada
Dado que estou na página de visualização da aplicação "Minha Aplicação"
E cliclo nos três pontos, no canto superior da aplicação
Quando clico no botão de excluir
E confirmo a exclusão na mensagem de confirmação
Então a aplicação "Minha Aplicação" é excluída com sucesso

Cenário: Excluir aplicação cancelada
Dado que estou na página de visualização da aplicação "Minha Aplicação"
E cliclo nos três pontos, no canto superior da aplicação
Quando clico no botão de excluir
E cancelo a exclusão na mensagem de confirmação
Então a aplicação "Minha Aplicação" não é excluída e permanece na lista de aplicações