Funcionalidade: Buscar aplicação

Cenário: Buscar aplicação existente
Dado que estou na busca de aplicações
Quando digito "Minha Aplicação" no campo de busca
E clico no botão de buscar
Então vejo a aplicação "Minha Aplicação" nos resultados da busca

Cenário: Buscar aplicação inexistente
Dado que estou na página de busca de aplicações
Quando digito "Aplicação Inexistente" no campo de busca
E clico no botão de buscar
Então não vejo nenhum resultado na busca

Cenário: Buscar aplicação com termo parcial
Dado que estou na página de busca de aplicações
Quando digito "Teste" no campo de busca
E clico no botão de buscar
Então vejo uma lista de aplicações que contenham o termo "Teste" em seu nome ou descrição

Cenário: Buscar aplicação com campo de busca vazio
Dado que estou na página de busca de aplicações
Quando deixo o campo de busca vazio
E clico no botão de buscar
Então vejo todas as aplicações listadas, sem nenhum filtro de busca aplicado