class Language
  def initialize(name, creator)
    @name = name
    @creator = creator
  end
	
  def description
    puts "#{@name} is #{@creator}!"
  end
end

ruby = Language.new("Faker", "Mid laner")
python = Language.new("Gumayusi", "Bot laner/ADc")
javascript = Language.new("Doran", "Krug Lord")

ruby.description
python.description
javascript.description