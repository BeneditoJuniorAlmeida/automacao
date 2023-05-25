Cenário: Copiar Fluxo com Sucesso
Dado que estou na tela de exibição de fluxos existentes
Quando eu seleciono a opção de copiar o fluxo
E sou solicitado a confirmar a ação de cópia
E seleciono a opção de confirmar a cópia
Então o fluxo é copiado com sucesso
E uma mensagem de confirmação é exibida informando que o fluxo foi copiado com sucesso
E a cópia do fluxo é exibida na lista de fluxos disponíveis para abertura

Cenário: Cancelar Ação de Copiar
Dado que estou na tela de exibição de fluxos existentes
Quando eu seleciono a opção de copiar o fluxo
E sou solicitado a confirmar a ação de cópia
E seleciono a opção de cancelar a cópia
Então a ação de copiar é cancelada
E nenhuma alteração é feita nos fluxos existentes
E permaneço na tela de exibição do fluxo atual

Cenário: Exibir Mensagem de Erro ao Copiar o Fluxo
Dado que estou na tela de exibição de fluxos existentes
Quando eu seleciono a opção de copiar o fluxo
E sou solicitado a confirmar a ação de cópia
E ocorre um erro durante o processo de cópia
Então uma mensagem de erro é exibida informando que ocorreu um erro ao copiar o fluxo
E nenhuma alteração é feita nos fluxos existentes
E permaneço na tela de exibição de fluxos

Cenário: Exibir Fluxo Copiado na Tela de Abertura
Dado que copiei um fluxo com sucesso
Quando sou redirecionado para a tela de abertura do fluxo
Então a cópia do fluxo é exibida na lista de fluxos disponíveis para abertura
