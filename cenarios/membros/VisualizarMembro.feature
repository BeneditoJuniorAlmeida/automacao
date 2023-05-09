
Funcionalidade: Visualização de convites e busca



Cenário: Lista de membro sem convite 
Dado que eu estou na página home
Quando clico no menu lateral "Membros"
Então o sistema deve carregar a pagina "Lista de membros"
E caso não exista nenhum convite
Então o sistema deve exibir uma mensagem "Sem dados disponíveis"

Cenário: Lista de membro com convite existente 
Dado que eu estou na página home
Quando clico no menu lateral "Membros"
Então o sistema deve carregar a pagina "Lista de membros"
E caso exista convite 
Então o sistema deve carregar o convite na tabela

Cenário: Busca de convite
Dado que existem membros com convites na organização
Quando eu faço uma busca pelo e-mail, organização, perfil ou situação do convite
Então eu vejo o resultado da busca com o convite correspondente
E vejo os botões de acordo com o status do convite.