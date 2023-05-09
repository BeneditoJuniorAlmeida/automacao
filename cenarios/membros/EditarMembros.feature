Funcionalidade: Editar convite de membro de uma organização

Cenário: Editar membro com status pendente
Dado que exista um convite de membro com status pendente na organização
Quando eu clicar no botão de editar do convite
Então um modal será exibido com os campos perfil e organização editáveis
Quando eu atualizar o perfil e organização
E clicar em salvar
Então o convite será atualizado com as informações editadas
E o e-mail continuará o mesmo
E o status continuará como pendente

Cenário: Editar membro com status cancelado
Dado que exista um convite de membro com status cancelado na organização
Quando eu clicar no botão de editar do convite
Então um modal será exibido com os campos perfil e organização editáveis
Quando eu atualizar o perfil e organização
E clicar em salvar
Então o convite será atualizado com as informações editadas
E o e-mail continuará o mesmo
E o status continuará como cancelado

Cenário: Tentar editar membro com status aceito
Dado que exista um convite de membro com status aceito na organização
Quando eu clicar no botão de editar do convite
Então um modal será exibido com os campos perfil e organização editáveis
Quando eu tentar atualizar o perfil e organização
Então não será possível editá-los
E uma mensagem de erro será exibida informando que o convite com status aceito não pode ser editado




