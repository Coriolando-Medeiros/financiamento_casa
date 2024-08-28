def detalhamento_com_entrada
  entrada = $valor_emprestimo * 0.2

  saldo_devedor = $valor_emprestimo - entrada
  # Iterando para calcular cada parcela
  $numero_parcelas.times do |indice|
    amortizacao = saldo_devedor / $numero_parcelas
    juros_parcela = saldo_devedor * $juros_mensal
    total_parcela = amortizacao + juros_parcela
    puts "O valor da #{indice + 1}ª parcela é R$ #{'%.2f' % total_parcela}"

    $valor_total_pago += total_parcela
  
    # Atualiza o saldo devedor
    saldo_devedor -= amortizacao
  end
end

def com_entrada
  entrada = $valor_emprestimo * 0.2

  saldo_devedor = $valor_emprestimo - entrada
  # Iterando para calcular cada parcela
  $numero_parcelas.times do |indice|
    amortizacao = saldo_devedor / $numero_parcelas
    juros_parcela = saldo_devedor * $juros_mensal
    total_parcela = amortizacao + juros_parcela

    $valor_total_pago += total_parcela
  
    # Atualiza o saldo devedor
    saldo_devedor -= amortizacao
  end
  puts ""
  puts "#{$nome}"
  puts "Valor total pago R$ #{'%.2f' % $valor_total_pago}"
  puts "Valor da entrada: R$ #{'%.2f' % entrada}"
  puts "Deseja ver o detalhamento?"
  puts "1 - Sim | Enter - Não"
  detalhamento = gets.chomp
  if detalhamento == '1'
    detalhamento_com_entrada
  elsif detalhamento != '1'
    puts "Saindo..."
    return
  end
end

def detalhamento_sem_entrada
  saldo_devedor = $valor_emprestimo

  # Iterando para calcular cada parcela
  $numero_parcelas.times do |indice|
    amortizacao = saldo_devedor / $numero_parcelas
    juros_parcela = saldo_devedor * $juros_mensal
    total_parcela = amortizacao + juros_parcela
    puts "O valor da #{indice + 1}ª parcela é R$ #{'%.2f' % total_parcela}"

    $valor_total_pago += total_parcela
  
    # Atualiza o saldo devedor
    saldo_devedor -= amortizacao
  end
end

def sem_entrada
  saldo_devedor = $valor_emprestimo

  # Iterando para calcular cada parcela
  $numero_parcelas.times do |indice|
    amortizacao = saldo_devedor / $numero_parcelas
    juros_parcela = saldo_devedor * $juros_mensal
    total_parcela = amortizacao + juros_parcela
    $valor_total_pago += total_parcela
    # Atualiza o saldo devedor
    saldo_devedor -= amortizacao
  end
  puts ""
  
  puts "#{$nome}"
  puts "Valor total pago R$ #{'%.2f' % $valor_total_pago}"
  puts "Deseja ver o detalhamento?"
  puts "1 - Sim | Enter - Não"
  detalhamento = gets.chomp
  if detalhamento == '1'
    detalhamento_sem_entrada
  elsif detalhamento != '1'
    puts "Saindo..."
    return
  end
end
puts "Sistema de simulação de financiamrento"
puts "              habitacional"
puts
print "nome: "
$nome = gets.chomp.capitalize

print "Valor do empréstimo: "
$valor_emprestimo = gets.chomp.to_f

print "Quantidade de parcelas: "
$numero_parcelas = gets.chomp.to_i

print "Juros mensal: "
$juros_mensal = gets.chomp.to_f / 100  # Aqui já divide por 100

puts "Vai haver entrada? '1 - sim : 2 - não'"
opcao = gets.chomp

$valor_total_pago = 0.0  # Certifique-se de inicializar como ponto flutuante

if opcao == '1'
  com_entrada
elsif opcao == '2'
  sem_entrada
end
