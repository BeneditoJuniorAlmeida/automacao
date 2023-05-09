Funcionalidade: Editar convite de membro

Contexto: Dado que eu estou na página de uma organização


Cenário: Editar convite
E eu clico na opção "Convites pendentes"
Quando eu localizo um convite que desejo editar
E eu clico no botão "Editar convite"
Então eu devo ser redirecionado para a página de edição de convite
E eu posso alterar o e-mail do destinatário, o perfil e/ou a organização associada ao convite
E eu confirmo as alterações
Então eu devo ver uma mensagem de confirmação de edição do convite
E o destinatário deve receber um e-mail com as alterações realizadas


Cenário - Tentativa de editar convite com e-mail já existente

Dado que eu estou na página de uma organização
E eu clico na opção "Convites pendentes"
Quando eu localizo um convite que desejo editar
E eu clico no botão "Editar convite"
Então eu devo ser redirecionado para a página de edição de convite
E eu tento alterar o e-mail do destinatário para um e-mail já existente no sistema
Então eu devo ver uma mensagem de erro informando que o e-mail já está em uso
E o convite não deve ser editado

Cenário - Tentativa de editar convite com e-mail inválido

Dado que eu estou na página de uma organização
E eu clico na opção "Convites pendentes"
Quando eu localizo um convite que desejo editar
E eu clico no botão "Editar convite"
Então eu devo ser redirecionado para a página de edição de convite
E eu tento alterar o e-mail do destinatário para um e-mail inválido
Então eu devo ver uma mensagem de erro informando que o e-mail é inválido
E o convite não deve ser editado

Cenário - Tentativa de editar convite com campos obrigatórios em branco

Dado que eu estou na página de uma organização
E eu clico na opção "Convites pendentes"
Quando eu localizo um convite que desejo editar
E eu clico no botão "Editar convite"
Então eu devo ser redirecionado para a página de edição de convite
E eu deixo o campo de e-mail em branco
E eu tento confirmar as alterações
Então eu devo ver uma mensagem de erro informando que o campo de e-mail é obrigatório
E o convite não deve ser editado

depois de aceitar não pode Editar

vai ter tempo de expirar