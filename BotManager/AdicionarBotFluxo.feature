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

