Funcionalidade: Adicionar intenção

Cenário: Tentativa de adicionar intenção sem preencher o campo obrigatório
Dado que acesso uma aplicação
E estou dentro da tela de "Intenções"
E e clico no campo "Adicionar uma nova intenção" 
E deixo o campo "Adicionar uma nova intenção" vazio
Quando clico para adicionar intenção
Então o sistema não deve cadastrar um nova intenção

Cenário: Adicionar intenção
Dado que acesso uma aplicação 
E estou dentro da tela de "Intenções"
E e clico no campo "Adicionar uma nova intenção" 
E preencho o campo "Nome da intenção" com o valor "Nova intenção"
Quando clico para adicionar intenção
Então a intenção "Nova intenção" deve ser salva 
E o sistema deve apresentar uma mensagem indicando que a intenção foi salva com sucesso
E a intenção deve ser carregada na lista de intenções
