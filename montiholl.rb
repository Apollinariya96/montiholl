class Numbers
  attr_accessor :num1, :num2, :num3, :num4

  def initialize(num1, num2, num3, num4)
    @num1 = num1
    @num2 = num2
    @num3 = num3
    @num4 = num4
  end

  def display_numbers
    puts "#{num1}, #{num2}, #{num3}, #{num4}"
  end
end

numbers = Numbers.new(1, 2, 3, 4)
numbers.display_numbers
puts "Проверка связи. -Вы готовы?"
puts "-Так точно!"
a= 0
s = 0
nov_ch = 0
m = rand(0..1)
if m == 1
  n = 0
  t = 0
else
  n = rand(0..1)
  if n == 1
    t = 0
  else
    t = 1
  end
end
a = [m, n, t]
puts a

puts "Выберите дверь"
k = gets.chomp.to_i

if m == 1 && k == 1
  chislo_1 = rand(n..t)
  puts "Открываю вторую дверь: #{chislo_1}"
end

if m == 1 && k == 2
  puts "Хех, а я открою третью: #{t}"
  nov_ch = m
end

if m == 1 && k == 3
  puts "А вот и не открою. Открываю вторую: #{n}"
  nov_ch = m
end

if n == 1 && k == 2
  chislo_2 = rand(m..t)
  puts "Открываю третью дверь: #{chislo_2}"
end

if n == 1 && k == 1
  puts "А где пожалуйста? Без пожалуйста могу открыть только третью: #{t}"
  nov_ch = n
end

if n == 1 && k == 3
  puts "А где пожалуйста? Без пожалуйста могу открыть только первую: #{m}"
  nov_ch = n
end

if t == 1 && k == 3
  chislo_3 = rand(m..n)
  puts "Открываю первую дверь: #{chislo_3}"
end

if t == 1 && k == 1
  puts "А вот и не открою. Открываю вторую: #{n}"
  nov_ch = t
end

if t == 1 && k == 2
  puts "Хех, а я открою третью: #{m}"
  nov_ch = t
end

puts "Вы хотите изменить свой выбор или по-прежнему выбираете #{k} дверь?"
puts "1-не менять выбор, 2-изменить выбор"
vibor = gets.chomp.to_i

if vibor == 1
  s = k - 1
  puts a[s]
  if a[s] == 1
    puts "Вы выиграли"
  else
    puts "Увы, вы проиграли"
  end
end

if vibor == 2
  puts nov_ch
  if nov_ch == 1
    puts "Поздравляем! Вы выиграли!"
  end
end