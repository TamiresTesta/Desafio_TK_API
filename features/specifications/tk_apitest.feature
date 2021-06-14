#language: pt
@TkApiTest

Funcionalidade: Desafio Testes Automatizados - API

Como um usuário do sistema
Eu quero realizar as requisições na API
A fim de: 
1-Validar a existência da ability "blaze" e se a propriedade "is_hidden" é igual a false
2-Validar a existência da ability "solar-power" e se a propriedade "is_hidden" é igual a true

Cenário: Consultar as habilidades de Pokemon
    Dado o endereço da API
    Quando realizar uma requisição
    Então a API irá validar a existência da ability 'blaze' e se a propriedade 'is_hidden' é igual a false
    E a API irá validar a existência da ability 'solar-power' e se a propriedade 'is_hidden' é igual a true