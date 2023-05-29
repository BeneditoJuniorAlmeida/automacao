Cenário: Busca bem-sucedida de uma intenção existente
Dado que existem intenções na aplicação
Quando o usuário realiza uma busca por uma intenção específica
Então a aplicação retorna a intenção correspondente
E exibe a mesma na lista de intenções

Cenário: Busca sem sucesso de uma intenção inexistente
Dado que existem intenções pré-definidas na aplicação
Quando o usuário realiza uma busca por uma intenção inexistente
Então a aplicação informa que a intenção não foi encontrada

