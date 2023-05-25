Funcionalidade: Controle de acesso de fluxo

Cenário: Fluxo configurado como restritivo
 Dado que tenho um fluxo configurado como restritivo
 E já exista um usuário editando o mesmo fluxo 
 Quando Seleciono esse fluxo para editar 
 Então o sistema deve bloquear a edição do fluxo
 E avisar que o fluxo esta sendo utilizado por outro usuário

Cenário: Fluxo configurado como livre
 Dado que tenho um fluxo configurado como livre
 E já exista um usuário editando o mesmo fluxo 
 Quando seleciono esse fluxo para editar 
 Então o sitema deve permitir que os dois usuários possam editar o fluxo
 E avisar que o fluxo esta sendo utilizado por mais de um usuário
