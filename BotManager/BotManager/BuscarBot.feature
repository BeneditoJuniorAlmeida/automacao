Funcionalidade: Busca de um bot

Cenário: Buscar bot existente com termo válido
Dado que estou na página de busca de bots
Quando eu digitar um termo de busca válido
Então o sistema deve exibir uma lista de bots que correspondem ao termo de busca
E os bots exibidos devem conter o termo de busca

Cenário: Buscar um bot pelo canal
Dado que estou na página de busca de bots
E existem canais disponíveis no sistema
Quando eu selecionar um canal específico no campo de busca de canais
E clicar no botão de busca
Então o sistema deve exibir uma lista de bots associados ao canal selecionado
E cada bot exibido deve estar associado ao canal selecionado

Cenário: Buscar bot existente com termo inválido
Dado que estou na página de busca de bots
Quando eu digitar um termo de busca inválido
Então o sistema deve exibir uma mensagem informando "nenhum dado correspondente encontrado"
E não deve exibir nenhum bot na lista de resultados

Cenário: Buscar bot com resultados múltiplos
Dado que estou na página de busca de bots
E existem vários bots que correspondem ao termo de busca fornecido
Quando eu digitar um termo de busca válido
Então o sistema deve exibir uma lista de bots que correspondem ao termo de busca
E a lista de resultados deve conter mais de um bot

Cenário: Buscar bot inexistente
Dado que estou na página de busca de bots
E não existem bots que correspondem ao termo de busca fornecido
Quando eu digitar um termo de busca válido
Então o sistema deve exibir uma mensagem informando "nenhum dado correspondente encontrado"
E não deve exibir nenhum bot na lista de resultados

