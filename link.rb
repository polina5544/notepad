class Link < Post
  def initialize
    super
    @utl = " "
  end

  def read_from_console
    puts "Введите адрес ссылки"
    @url = STDIN.gets.chomp

    puts "Напишите пару слов о том, куда ведёт ссылка"
    @text = STDIN.gets.chomp
  end

  def save

    file = File.new(file_path, "w:UTF-8")
    time_string = @created_at.strftime("%Y.%m.%d, %H:%M")
    file.puts(time_string + "\n\r")

    file.puts(@url)
    file.puts(@text)

    file.close
    puts "Ваша ссылка сохранена"
  end


  def to_strings
    time_string = "Создано: #{@created_at.strftime('%Y.%m.%d, %H:%M:%S')} \n\r"

    [@url, @text, time_string]
  end
end