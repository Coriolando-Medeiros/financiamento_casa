# Sistema de Simulação de Empréstimo com Entrada

Este script em Ruby simula um empréstimo e calcula o valor das parcelas, o valor total pago e o valor da entrada, se aplicável. O usuário fornece informações sobre o empréstimo e decide se haverá uma entrada inicial.

## Funcionamento

O sistema solicita as seguintes informações do usuário:
1. Nome do tomador do empréstimo
2. Valor do empréstimo
3. Quantidade de parcelas
4. Taxa de juros mensal
5. Se haverá entrada (1 - sim, 2 - não)

O sistema calcula:
- O valor de cada parcela mensal
- O valor total pago ao final do empréstimo
- O valor da entrada, se aplicável

## Como Usar

1. Clone ou faça o download do repositório.
2. Execute o script Ruby no seu ambiente local.

```sh
ruby nome_do_arquivo.rb

    Insira as informações solicitadas pelo programa.
```

##Exemplo de Uso
```
ruby

nome
João
Valor do empréstimo
5000
Quantidade de parcelas
12
Juros mensal
2.5
Vai haver entrada? '1 - sim : 2 - não'
1

O valor da 1ª parcela é R$  536.07
O valor da 2ª parcela é R$  530.47
...
João
Valor total pago  R$  6228.84
Valor da entrada: R$  1000.00
```
##Explicação do Cálculo

   - Entrada: Se for aplicável, é calculada como 20% do valor do empréstimo.
   - Amortização: É calculada dividindo o saldo devedor pelo número de parcelas.
   - Juros da Parcela: Calculado como o saldo devedor multiplicado pela taxa de juros mensal.
   - Total da Parcela: Soma da amortização e dos juros da parcela.

Se não houver entrada, o saldo devedor é igual ao valor do empréstimo.

##Requisitos

   - Ruby 2.x ou superior instalado no seu ambiente.

##Contribuições

Se você deseja contribuir para o desenvolvimento deste projeto, faça um fork e envie pull requests com melhorias ou correções.

##Licença

Este projeto está licenciado sob a MIT License.
