class KleerBot
    def initialize(lang)
        if lang == nil
            @lang = "es"
        else
            @lang = lang
        end
    end

    def saludo(nombre)
        hola= {"es"=> 'Hola', "en"=> 'Hello'}
        puts "#{hola[@lang]}, #{nombre}"
        ayuda()
    end

    def ayuda()     
        text= {"es"=> '¿Cómo  puedo ayudarte?', "en"=> 'How can I help you?'}   
        puts "#{text[@lang]}"
    end
end

lang = ARGV[1]

bot= KleerBot.new(lang)
bot.saludo(ARGV[0])

