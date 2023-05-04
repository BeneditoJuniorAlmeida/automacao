Funcionalidade:  Login no sistema VoxSurvey

Contexto: Dado que o usuário está na página de login

Cenário: Login bem-sucedido com credenciais corretas
 Quando o usuário insere suas credenciais corretas
 E o usuário clica no botão de login
 Então o sistema autentica o usuário com sucesso
 E o usuário é redirecionado para a página de dashboard

Cenário: Tentativa de login com nome de usuário incorreto
 Quando o usuário ou insere um nome de usuário ou senha incorreta
 E o usuário clica no botão de login
 Então o sistema exibe uma mensagem de erro indicando que o nome de usuário ou senha está incorreto
 E o sistema não autentica o usuário

Cenário: Tentativa de login com credenciais em branco
 Quando o usuário não insere nenhum nome de usuário
 E o usuário não insere nenhuma senha
 E o usuário clica no botão de login
 Então o sistema exibe uma mensagem de erro indicando que os campos são obrigatórias
 E o sistema não autentica o usuário

Cenário: Tentativa de login com nome de usuário inexistente
 Quando o usuário insere um nome de usuário que não existe no sistema
 E o usuário insere uma senha correta
 E o usuário clica no botão de login
 Então o sistema exibe uma mensagem de erro indicando que o nome de usuário não foi encontrado
 E o sistema não autentica o usuário

Cenário: Tentativa de login com múltiplas tentativas de senha incorretas
 Quando o usuário insere um nome de usuário correto
 E o usuário insere uma senha incorreta
 E o usuário clica no botão de login
 Então o sistema exibe uma mensagem de erro indicando que a senha está incorreta
 E o sistema registra a tentativa de login falhada
 E o usuário tenta novamente, inserindo outra senha incorreta
 E o usuário clica no botão de login
 Então o sistema exibe uma mensagem de erro indicando