menu = {
   "Palomitas" => 70,
   "Refresco" => 45,
   "Nachos" => 65,
   "Hot dog" => 55,
   "Dulces" => 30
}

respuesta = 0
respuesta_pagar = menu.length + 1
contador = 0
total = 0

while respuesta != respuesta_pagar
menu.each_with_index do |(producto, precio), i|
    puts "#{i + 1}. #{producto} - $#{precio}"
end
puts "#{respuesta_pagar}. Salir y pagar..."
puts "Escoge una opcion(1-#{respuesta_pagar})"
respuesta = gets.chomp.to_i
case respuesta
    when 1..menu.length
        menu.each_with_index do |(producto, precio), i|
            if i + 1 == respuesta
                total += precio
                contador += 1
                puts "Agregaste #{producto} ($#{precio}). Llevas $#{total}"
            end
        end
    when respuesta_pagar
        if contador == 0
            puts "No compraste nada. ¡Vuelve pronto! 🍿"
        elsif contador == 1
            puts "Compraste #{contador} producto. Total: $#{total}."
        else
            puts "Compraste #{contador} productos. Total: $#{total}."
        end
    else
            puts "Opción no válida."
end
end