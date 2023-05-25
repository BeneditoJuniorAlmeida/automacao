Cenário: Renomear Fluxo com Sucesso
Dado que estou na tela de exibição de um fluxo existente
Quando eu seleciono a opção de renomear o fluxo
E insiro um novo nome válido para o fluxo
E confirmo a ação de renomear
Então o fluxo é renomeado com sucesso
E uma mensagem de confirmação é exibida informando que o fluxo foi renomeado com sucesso
E o novo nome do fluxo é exibido na tela

Cenário: Cancelar Ação de Renomear Fluxo
Dado que estou na tela de exibição de um fluxo existente
Quando eu seleciono a opção de renomear o fluxo
E insiro um novo nome válido para o fluxo
E seleciono a opção de cancelar a ação de renomear
Então a ação de renomear é cancelada
E o nome do fluxo permanece inalterado

Cenário: Renomear Fluxo com Nome Inválido
Dado que estou na tela de exibição de um fluxo existente
Quando eu seleciono a opção de renomear o fluxo
E insiro um novo nome inválido para o fluxo
E confirmo a ação de renomear
Então uma mensagem de erro é exibida informando que o nome inserido é inválido
E nenhuma alteração é feita no nome do fluxo

Cenário: Exibir Mensagem de Erro ao Renomear Fluxo
Dado que estou na tela de exibição de um fluxo existente
Quando eu seleciono a opção de renomear o fluxo
E ocorre um erro durante o processo de renomear
Então uma mensagem de erro é exibida informando que ocorreu um erro ao renomear o fluxo
E nenhuma alteração é feita no nome do fluxo