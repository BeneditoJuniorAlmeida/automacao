Funcionalidade: Adicionar Bot

Contexto: 

Cenário: Bot com o tipo Inteligêcia artificial selecionado
Dado que estou logado como administrador no sistema 
E acesso o menu "Chatbot Studio"
E que estou na tela "Adicionar Bot"
Quando seleciono o tipo "Inteligêcia artificial"
Então o sistema deve carregar uma aba com as sub-abas (Configuração, iniciação,finalização, 
cancelamento, confirmação, erro geral, não encontrado, score baixo, canais, timeout da sessão) para configurar o bot

Cenário: Bot com o tipo Fluxo de interações selecionado
Dado que estou logado como administrador no sistema 
E acesso o menu "Chatbot Studio"
E que estou na tela "Adicionar Bot"
Quando seleciono o tipo "Fluxo de interações"
Então o sistema deve carregar uma aba com as sub-abas (fluxo de interações, timeout da sessão) para configurar o bot

Cenário: Preenchimento correto da sub-aba "Configuração" para bot do tipo Inteligência Artificial
Dado que estou na página de adição de bots
Quando preencho corretamente os campos obrigatórios nome e identificação
E seleciono o tipo Inteligência Artificial
E seleciono a aba de configuração
E preencho corretamente os campos obrigatórios de hostname, chave da API e ID da aplicação
E preencho o campo score aceitável com um valor numérico entre 0 e 100
E preencho o campo score compreensível com um valor numérico entre 0 e 100
Então o sistema não deve exibir mensagem de erro alguma

Cenário: Preenchimento incorreto da sub-aba "Configuração" para bot do tipo Inteligência Artificial - Campo hostname em branco
Dado que estou na página de adição de bots
Quando preencho corretamente os campos obrigatórios nome e identificação
E seleciono o tipo Inteligência Artificial
E seleciono a aba de configuração
E deixo o campo de "Hostname" em branco
Então recebo uma mensagem de erro indicando que o campo "Hostname" é obrigatório

Cenário: Preenchimento incorreto da sub-aba "Configuração" para bot do tipo Inteligência Artificial - Campo Chave da API em branco
Dado que estou na página de adição de bots
Quando preencho corretamente os campos obrigatórios nome e identificação
E seleciono o tipo Inteligência Artificial
E seleciono a aba de configuração
E deixo o campo de "Chave da API" em branco
Então recebo uma mensagem de erro indicando que o campo "Chave da API" é obrigatório

Cenário: Preenchimento incorreto da sub-aba "Configuração" para bot do tipo Inteligência Artificial - Campo ID da aplicação em branco
Dado que estou na página de adição de bots
Quando preencho corretamente os campos obrigatórios nome e identificação
E seleciono o tipo Inteligência Artificial
E seleciono a aba de configuração
E deixo o campo de "ID da aplicação" em branco
Então recebo uma mensagem de erro indicando que o campo "ID da aplicação" é obrigatório

Cenário: Impedir inserção de valores negativos nos campos "Score Aceitável" e "Score Compreensível"
Dado que estou na página de adição de bots
Quando preencho corretamente os campos obrigatórios nome e identificação
E seleciono o tipo Inteligência Artificial
E seleciono a aba de configuração
E tento inserir um valor negativo no campo "Score Aceitável"
Então o sistema deve bloquear a inserção do valores negativo

Cenário: Limitar valores maiores que 100 nos campos "Score Aceitável" e "Score Compreensível"
Dado que estou na página de adição de bots
Quando preencho corretamente os campos obrigatórios nome e identificação
E seleciono o tipo Inteligência Artificial
E seleciono a aba de configuração
Quando tento inserir um valor maior que 100 no campo "Score Aceitável"
Então o sistema deve exibir uma mensagem de erro informando que o valor deve ser no máximo 100

Cenário: Preencher campos da sub-aba "Iniciação" de um bot do tipo Inteligêcia artificial
Dado que estou na página de adição de bots
E preencho corretamente os campos obrigatórios nome e identificação
E seleciono o tipo Inteligência Artificial
E seleciono a sub-aba "Iniciação"
Quando clico no botão "Selecionar fluxo"
Então uma tela com os fluxos disponíveis é aberta
Quando seleciono um fluxo específico
E clico no botão "Selecionar"
Então o nome do fluxo e sua versão são carregados na sub-aba "Iniciação" do bot do tipo Inteligência Artificial
E o sistema deve liberar o preenchimento da próxima sub-aba

Cenário: Impedir avanço sem selecionar um fluxo na sub-aba "Iniciação" para bot do tipo Inteligência Artificial
Dado que estou na página de adição de bots
E preencho corretamente os campos obrigatórios nome e identificação
E seleciono o tipo Inteligência Artificial
E seleciono a sub-aba "Iniciação"
E não selecionei nenhum fluxo
Quando clico no botão "Salvar"
Então o sistema deve exibir uma mensagem de erro indicando que o campo "Fluxo" é obrigatório

Cenário: Preenchimento da sub-aba "Finalização" para bot do tipo Inteligência Artificial
Dado que estou na página de adição de bots
E preencho corretamente os campos obrigatórios nome e identificação
E seleciono o tipo Inteligência Artificial
E seleciono a sub-aba "Finalização"
E clico no botão "Selecionar fluxo" na sub-aba "Finalização"
Então uma tela com os fluxos disponíveis é aberta
Quando seleciono um fluxo específico
E clico no botão "Selecionar"
Então o nome do fluxo e sua versão são carregados na sub-aba "Finalização" do bot do tipo Inteligência Artificial

Cenário: Preenchimento opcional da sub-aba "Finalização" para bot do tipo Inteligência Artificial
Dado que estou na página de adição de bots
Quando seleciono o tipo Inteligência Artificial
E preencho os campos obrigatórios de nome e identificação
E seleciono a sub-aba "Finalização"
E não preencho os campos de Intenção e Nome amigável da intenção
Quando clico no botão "Selecionar fluxo"
Então uma tela com os fluxos disponíveis é aberta
Quando seleciono um fluxo específico
E clico no botão "Selecionar"
Então o nome do fluxo e sua versão são carregados na sub-aba "Finalização" do bot do tipo Inteligência Artificial

Cenário: Campo "Fluxo" obrigatório na sub-aba "Finalização" para bot do tipo Inteligência Artificial
Dado que estou na página de adição de bots
Quando seleciono o tipo Inteligência Artificial
E preencho os campos obrigatórios de nome e identificação
E seleciono a sub-aba "Finalização"
E não seleciono nenhum fluxo
Quando clico no botão "Salvar"
Então o sistema deve exibir uma mensagem de erro indicando que o campo "Fluxo" é obrigatório

Cenário: Preenchimento da sub-aba "Cancelamento" para bot do tipo Inteligência Artificial
Dado que estou na página de adição de bots
Quando seleciono o tipo Inteligência Artificial
E preencho os campos obrigatórios de nome e identificação
E seleciono a sub-aba "Cancelamento"
E preencho os campos de Intenção e Nome amigável da intenção
E clico no botão "Selecionar o texto resposta"
Então uma tela com as respostas disponíveis é aberta
Quando seleciono uma resposta específica
E clico no botão "Selecionar"
Então a resposta é carregada e exibida na sub-aba "Cancelamento" do bot do tipo Inteligência Artificial

Cenário: Preenchimento opcional da sub-aba "Cancelamento" para bot do tipo Inteligência Artificial
Dado que estou na página de adição de bots
Quando seleciono o tipo Inteligência Artificial
E preencho os campos obrigatórios de nome e identificação
E seleciono a sub-aba "Cancelamento"
E não preencho os campos de Intenção e Nome amigável da intenção
Quando clico no botão "Selecionar o texto resposta"
Então uma tela com as respostas disponíveis é aberta
Quando seleciono uma resposta específica
E clico no botão "Selecionar"
Então a resposta é carregada na sub-aba "Cancelamento" do bot do tipo Inteligência Artificial

Cenário: Campo "Texto Resposta" obrigatório na sub-aba "Cancelamento" para bot do tipo Inteligência Artificial
Dado que estou na página de adição de bots
Quando seleciono o tipo Inteligência Artificial
E preencho os campos obrigatórios de nome e identificação
E seleciono a sub-aba "Cancelamento"
E não seleciono nenhum texto resposta
Quando clico no botão "Salvar"
Então o sistema deve exibir uma mensagem de erro indicando que o campo "Texto resposta" é obrigatório

Cenário: Preenchimento da sub-aba "Confirmação" para bot do tipo Inteligência Artificial
Dado que estou na página de adição de bots
Quando seleciono o tipo Inteligência Artificial
E preencho os campos obrigatórios de nome e identificação
E seleciono a sub-aba "Confirmação"
E preencho os campos de Intenção e Nome amigável da intenção
E clico no botão "Selecionar o texto resposta"
Então uma tela com as respostas disponíveis é aberta
Quando seleciono uma resposta específica
E clico no botão "Selecionar"
Então a resposta é carregada e exibida na sub-aba "Confirmação" do bot do tipo Inteligência Artificial

Cenário: Preenchimento opcional da sub-aba "Confirmação" para bot do tipo Inteligência Artificial
Dado que estou na página de adição de bots
Quando seleciono o tipo Inteligência Artificial
E preencho os campos obrigatórios de nome e identificação
E seleciono a sub-aba "Confirmação"
E não preencho os campos de Intenção e Nome amigável da intenção
Quando clico no botão "Selecionar o texto resposta"
Então uma tela com as respostas disponíveis é aberta
Quando seleciono uma resposta específica
E clico no botão "Selecionar"
Então a resposta é carregada na sub-aba "Confirmação" do bot do tipo Inteligência Artificial

Cenário: Campo "Texto Resposta" obrigatório na sub-aba "Confirmação" para bot do tipo Inteligência Artificial
Dado que estou na página de adição de bots
Quando seleciono o tipo Inteligência Artificial
E preencho os campos obrigatórios de nome e identificação
E seleciono a sub-aba "Confirmação"
E não seleciono nenhum texto resposta
Quando clico no botão "Salvar"
Então o sistema deve exibir uma mensagem de erro indicando que o campo "Texto resposta" é obrigatório

Cenário: Preenchimento da sub-aba "Erro geral" para bot do tipo Inteligência Artificial
Dado que estou na página de adição de bots
Quando seleciono o tipo Inteligência Artificial
E preencho os campos obrigatórios de nome e identificação
E seleciono a sub-aba "Confirmação"
E clico no botão "Selecionar o texto resposta"
Então uma tela com as respostas disponíveis é aberta
Quando seleciono uma resposta específica
E clico no botão "Selecionar"
Então a resposta é carregada e exibida na sub-aba "Erro geral" do bot do tipo Inteligência Artificial

Cenário: Campo "Texto Resposta" obrigatório na sub-aba "Erro geral" para bot do tipo Inteligência Artificial
Dado que estou na página de adição de bots
Quando seleciono o tipo Inteligência Artificial
E preencho os campos obrigatórios de nome e identificação
E seleciono a sub-aba "Erro geral"
E não seleciono nenhum texto resposta
Quando clico no botão "Salvar"
Então o sistema deve exibir uma mensagem de erro indicando que o campo "Texto resposta" é obrigatório

Cenário: Preenchimento da sub-aba "Score baixo" para bot do tipo Inteligência Artificial
Dado que estou na página de adição de bots
Quando seleciono o tipo Inteligência Artificial
E preencho os campos obrigatórios de nome e identificação
E seleciono a sub-aba "Confirmação"
E clico no botão "Selecionar o texto resposta"
Então uma tela com as respostas disponíveis é aberta
Quando seleciono uma resposta específica
E clico no botão "Selecionar"
Então a resposta é carregada e exibida na sub-aba "Score baixo" do bot do tipo Inteligência Artificial

Cenário: Campo "Texto Resposta" obrigatório na sub-aba "Score baixo" para bot do tipo Inteligência Artificial
Dado que estou na página de adição de bots
Quando seleciono o tipo Inteligência Artificial
E preencho os campos obrigatórios de nome e identificação
E seleciono a sub-aba "Erro geral"
E não seleciono nenhum texto resposta
Quando clico no botão "Salvar"
Então o sistema deve exibir uma mensagem de erro indicando que o campo "Texto resposta" é obrigatório

Cenário: Preencher campos da sub-aba Canais de um bot do tipo Inteligêcia artificial

Cenário: Preenchimento da sub-aba "Timeout da sessão" para bot do tipo Inteligência Artificial
Dado que estou na página de adição de bots
Quando seleciono o tipo Inteligência Artificial
E preencho os campos obrigatórios de nome e identificação
E seleciono a sub-aba "Timeout da sessão"
E preencho o campo de inatividade
E clico no botão "Selecionar o texto resposta"
Então uma tela com as respostas disponíveis é aberta
Quando seleciono uma resposta específica
E clico no botão "Selecionar"
Então a resposta é carregada na sub-aba "Timeout da sessão" do bot do tipo Inteligência Artificial

Cenário: Campo "Inatividade" obrigatório na sub-aba "Timeout da sessão" para bot do tipo Inteligência Artificial
Dado que estou na página de adição de bots
Quando seleciono o tipo Inteligência Artificial
E preencho os campos obrigatórios de nome e identificação
E seleciono a sub-aba "Timeout da sessão"
E não preencho o campo de inatividade
Quando tento avançar para a próxima sub-aba
Quando clico no botão "Salvar"
Então o sistema deve exibir uma mensagem de erro indicando que o campo "Inatividade" é obrigatório

Cenário: Campo "Selecionar Texto Resposta" obrigatório na sub-aba "Timeout da sessão" para bot do tipo Inteligência Artificial
Dado que estou na página de adição de bots
Quando seleciono o tipo Inteligência Artificial
E preencho os campos obrigatórios de nome e identificação
E seleciono a sub-aba "Timeout da sessão"
E preencho o campo de inatividade
E não seleciono nenhum texto resposta
Quando clico no botão "Salvar"
Então o sistema deve exibir uma mensagem de erro indicando que o campo "Texto resposta" é obrigatório