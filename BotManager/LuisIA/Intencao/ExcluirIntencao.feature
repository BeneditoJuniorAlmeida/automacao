Funcionalidade: Excluir intenção

Contexto:

Cenário: Confirmar exclusão de intenção
Dado que acesso uma aplicação
E estou dentro da tela de "Intenções"
E possuo uma intenção cadastrada chamada "Intenção 1"
Quando clico no botão com símbolo de engrenagem da intenção "Intenção 1"
E clico no botão "Deletar"
Então deve ser exibido um modal de confirmação de exclusão
E confirmo a exclusão no modal de confirmação
Então a intenção "Intenção 1" deve ser removida da lista de intenções

Cenário: Cancelar exclusão de intenção
Dado que acesso uma aplicação
E estou dentro da tela de "Intenções"
E possuo uma intenção cadastrada chamada "Intenção 2"
Quando clico no botão com símbolo de engrenagem da intenção "Intenção 2"
E clico no botão "Deletar"
Então deve ser exibido um modal de confirmação de exclusão
E decido cancelar a exclusão no modal de confirmação
Então a intenção "Intenção 2" não deve ser removida da lista de intenções
E a lista de intenções deve permanecer sem alterações