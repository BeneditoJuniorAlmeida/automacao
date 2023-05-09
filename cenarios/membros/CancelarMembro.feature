Funcionalidade: Cancelar convite de membro
          
Cenário: Cancelar convite com status pendente
Dado que um convite com status "pendente" foi enviado para o email "john@example.com"
E eu estou na página de gerenciamento de convites da organização
Quando eu seleciono o convite com status "pendente" enviado para "john@example.com"
E clico no botão de excluir convite
Então o convite é removido com sucesso

Cenário: Cancelar convite com status recusado
Dado que um convite com status "recusado" foi enviado para o email "jane@example.com"
E eu estou na página de gerenciamento de convites da organização
Quando eu seleciono o convite com status "recusado" enviado para "jane@example.com"
E clico no botão de excluir convite
Então o convite é removido com sucesso

Cenário: Tentar cancelar convite com status aceito
Dado que um convite com status "aceito" foi enviado para o email "bob@example.com"
E eu estou na página de gerenciamento de convites da organização
Quando eu seleciono o convite com status "aceito" enviado para "bob@example.com"
E clico no botão de excluir convite
Então vejo uma mensagem informando que não é possível cancelar um convite com status "aceito"





