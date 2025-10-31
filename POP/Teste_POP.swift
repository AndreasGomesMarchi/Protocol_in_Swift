//
//  Teste_POP.swift
//  POP
//
//  Created by Andreas Gomes Marchi on 29/10/25.
//

import Playgrounds

#Playground {
//    protocol MusicallInstrument {
//        var name: String {get set}
//        func makeSound() -> String?
//    }
//    
//    /* Nesse exemplo acima temos um protocolo que define os requisitos de um instrumento musical, que deve possuir nome e também implementar a função de emitir o som '’makeSound". É legal entender que o protocolo é uma concepção abstrata, então ele define as regras mas não as *implementa. Baseado nesses requisitos podemos criar diversas classes que adotem esse mesmo protocolo.*/
//    
//    struct Guitar: MusicallInstrument {
//        var name: String
//        func makeSound() -> String? {
//            return "Blen Blen"
//        }
//    }
//    
//    struct Drum: MusicallInstrument {
//        var name: String
//        func makeSound() -> String? {
//            return "Tink Tink"
//        }
//    }
//    
//    //Imagine que temos uma classe chamado Musiciam que toca esses instrumentos, inicialmente ele pode tocar apenas esses dois intrumentos, mas futuramente ele pode querer tocar mais. Aí é a parte que o protocolo brilha, com ele, podemos criar um método genérico que aceita qualquer instrumento que siga o protocolo. Um ótimo exemplo abaixo
//    
//    class Musician {
//        func play(instrument: MusicallInstrument) {
//            instrument.makesound()
//            print("Playing \(instrument.name)")
//        }
//    }
//    
//    //A seguir, um exemplo de um objeto que pode possuir mais de um protocolo
//    
//    //Adicionando o segundo protocolo
//    
//    protocol EletricObject {
//        var isOn: Bool {get set}
//        func plugBattery()->Void
//    }
//    
//    struct EletricPiano: MusicallInstrument, EletricObject {
//        let name: String
//        var IsOn: Bool = false
//        
//        func plugBattery(){
//            isOn = true
//        }
//        
//        func makeSound() -> String? {
//            guard isOn else {return nil}
//                return "Plim Plim"
//        }
//    }
    
}
