Funcionalidade: informações do fluxo

Cenário: Visualizar informações do fluxo
Dado que estou na tela de listagem de fluxos 
E quero visualizar informações mais detalhadas de um fluxo
Quando clico no botão com simbolo de engrenagem do fluxo desejado
E seleciono a opção "Informações"
Então o sistema deve redirecionar o usuário para a tela informações
E carregar as informações do fluxo corretamente

Cenário: Remover um usuário específico do fluxo de edições - Confirmação e sucesso
Dado que estou na página de detalhes de um fluxo
E sou um administrador master logado
E existem os seguintes usuários editando o fluxo: "UsuárioA", "UsuárioB", "UsuárioC"
Quando visualizar as informações detalhadas do fluxo
Então devo ver a lista de usuários que estão editando exibida corretamente
Quando eu clicar no botão de remover o usuário "UsuárioB" da lista de usuários que estão editando o fluxo
Então devo ver uma mensagem de confirmação solicitando a remoção do usuário "UsuárioB"
Quando eu confirmar a remoção
Então devo ver uma mensagem de sucesso informando que o usuário "UsuárioB" foi removido do fluxo de edições
E a lista de usuários editando deve ser atualizada, não exibindo mais o usuário "UsuárioB"

Cenário: Remover um usuário específico do fluxo de edições - Cancelamento
Dado que estou na página de detalhes de um fluxo
E sou um administrador master logado
E existem os seguintes usuários editando o fluxo: "UsuárioA", "UsuárioB", "UsuárioC"
Quando visualizar as informações detalhadas do fluxo
Então devo ver a lista de usuários que estão editando exibida corretamente
Quando eu clicar no botão de remover o usuário "UsuárioX" da lista de usuários que estão editando o fluxo
Então devo ver uma mensagem de confirmação solicitando a remoção do usuário "UsuárioX"
Quando eu cancelar a remoção
Então devo ver uma mensagem informando que a remoção do usuário "UsuárioX" foi cancelada
E a lista de usuários editando não deve ser alterada

Cenário: Remover todos os usuários do fluxo de edições
Dado que estou na página de detalhes de um fluxo
E sou um administrador master logado
E existem os seguintes usuários editando o fluxo: "UsuárioA", "UsuárioB", "UsuárioC"
Quando visualizar as informações detalhadas do fluxo
Então devo ver a lista de usuários que estão editando exibida corretamente
Quando eu clicar no botão de remover todos os usuários da lista de usuários que estão editando o fluxo
Então devo ver uma mensagem de confirmação solicitando a remoção de todos os usuários
Quando eu confirmar a remoção de todos os usuários
Então devo ver uma mensagem de sucesso informando que todos os usuários foram removidos da lista de edição do fluxo
E a lista de usuários editando deve estar vazia
E o fluxo deve ser liberado