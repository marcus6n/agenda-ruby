
@agenda = [ # @agenda = variável global (pode ser acessada em qualquer lugar do código)
    {nome: "Meu Número", telefone: "(61) 99999-9999"},
] # Esse array é a agenda de contatos

def all_contacts # all_contacts = método (função) que imprime todos os contatos

    puts "----------------- CONTATOS ------------------"
    @agenda.each do |contact| # .each é um método que percorre o array, |contact| é uma variável local
        puts "#{contact[:nome]} - #{contact[:telefone]}" # #{contact[:nome]} = interpolação
        puts "---------------------------------------------"
    end

end # Essa função mostra todos os contatos

def add_contact

    puts "Nome: "
    nome = gets.chomp
    puts "Telefone: "
    telefone = gets.chomp

    @agenda << {nome: nome, telefone: telefone}
    puts "\nContato adicionado com sucesso!\n"

end # Essa função adiciona um contato

def read_contact

    puts "Nome: "
    nome = gets.chomp

    @agenda.each do |contact|
        if contact[:nome].downcase.include?(nome.downcase)
            puts "#{contact[:nome]} - #{contact[:telefone]}"  
        end
    end

end # Essa função mostra um contato específico

def update_contact

    puts "Nome: "
    nome = gets.chomp

    @agenda.each do |contact|
        if contact[:nome].downcase.include?(nome.downcase)
            puts "Novo nome: "
            contact[:nome] = gets.chomp
            puts "Novo telefone: "
            contact[:telefone] = gets.chomp
            puts "Contato atualizado com sucesso!"
        end
    end

end # Essa função atualiza um contato

def delete_contact
    
    puts "Nome: "
    nome = gets.chomp
    
    @agenda.each do |contact|
        if contact[:nome].downcase.include?(nome.downcase)
            @agenda.delete(contact)
            puts "Contato removido com sucesso!"
        end
    end
    
end # Essa função remove um contato

loop do

    puts "1. Contatos\n2. Adicionar Contato\n3. Ver Contato\n4. Editar Contato\n5. Remover Contato\n0. Sair"
    puts "Escolha uma opção: "
    codigo = gets.chomp.to_i # gets.chomp = entrada de dados do usuário & to_i = transforma a entrada de dados em inteiro

    case
    when codigo == 0
        puts "Saindo..."
        break
    when codigo == 1
        all_contacts
    when codigo == 2
        add_contact
    when codigo == 3
        read_contact
    when codigo == 4
        update_contact
    when codigo == 5
        delete_contact
    end

end # Esse loop é o menu principal do programa (é o que vai ser executado)