puts "nome"
nome = gets.chomp.capitalize
puts "Valor do empréstimo"
valor_emprestimo = gets.chomp.to_f
puts "Quantidade de parcelas"
numero_parcelas = gets.chomp.to_i
puts "Juros mensal"
juros_mensal = gets.chomp.to_f
puts "Vai haver entrada? '1 - sim : 2 - não'"
opcao = gets.chomp
juros_mensal = juros_mensal / 100
valor_total_pago = 0


if opcao == '1'
  entrada = valor_emprestimo * 0.2

  saldo_devedor = valor_emprestimo - entrada
  # Iterando para calcular cada parcela
  numero_parcelas.times do |indice|
    amortizacao = saldo_devedor / numero_parcelas
    juros_parcela = saldo_devedor * juros_mensal
    total_parcela = amortizacao + juros_parcela
    puts "O valor da #{indice + 1}ª parcela é R$ #{'%.2f' % total_parcela}"

    valor_total_pago += total_parcela
  
    # Atualiza o saldo devedor
    saldo_devedor -= amortizacao
  end
  puts ""
  puts "#{nome}"
  puts "Valor total pago #{'%.2f' % valor_total_pago}"
  puts "Valor da entrada: #{'%.2f' % entrada}"
elsif opcao == '2'
  saldo_devedor = valor_emprestimo

  # Iterando para calcular cada parcela
  numero_parcelas.times do |indice|
    amortizacao = saldo_devedor / numero_parcelas
    juros_parcela = saldo_devedor * juros_mensal
    total_parcela = amortizacao + juros_parcela
    puts "O valor da #{indice + 1}ª parcela é R$ #{'%.2f' % total_parcela}"

    valor_total_pago += total_parcela
  
    # Atualiza o saldo devedor
    saldo_devedor -= amortizacao
  end
  puts ""
  puts "#{nome}"
  puts "Valor total pago #{'%.2f' % valor_total_pago}"
end