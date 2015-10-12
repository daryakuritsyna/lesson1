require 'date'
class Lesson1
  def sum(val = 0)
    val.to_s.chars.map(&:to_i).inject(:+)
  end

  def age(birthday)
    if birthday
      days = (Date.today - Date.parse(birthday)).to_i
      "Я живу #{(days / 365).to_i} или #{days} дней или #{days * 24} часов или #{days * 24 * 60} минут или #{days * 24 * 60 * 60} секунд"
    else
      'Invalid Date Format'
    end
  end

  def name
    name = gets.chomp
    surname = gets.chomp
    patronymic = gets.chomp
    "Hello #{name} #{surname} #{patronymic}!"
  end
end
