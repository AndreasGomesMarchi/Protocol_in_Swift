//
//  ContentView.swift
//  POP
//
//  Created by Andreas Gomes Marchi on 29/10/25.
//

import SwiftUI

struct ContentView: View {
    let pets: [Tamable] = [
        Dog(name: "sharon", ownerName: "Andreas"),
        Dog(name: "Cookie", ownerName: "Andreas"),
        Cat(name: "Felix", ownerName: "Leticia"),
        Cat(name: "Celeste", ownerName: "Madeline")
    ]
    
    var body: some View {
        NavigationStack {
            List(pets , id: \.id) { pet in
                HStack {
                    Text(pet.emoji)
                    Text(pet.name)
                    Spacer()
                    Text(pet.ownerName)
                    Button("Play") {
                        pet.play()
                    }
                    .buttonStyle(.glass)
                    .controlSize(.mini)
                }
            }
            .navigationTitle("Pets")
        }
    }
}

protocol Tamable {
    var id: UUID { get }
    var name: String { get set }
    var ownerName: String { get }
    var emoji: String { get }
    
    func play()
    func protect()
}

struct Dog: Tamable {
    var id = UUID()
    var name: String
    var ownerName: String
    var emoji: String = "🐶"
    
    func play() {
        
    }
    func protect() {
        
    }
    
    func bark() {} //exclusivo de cada estruct
    func eat() {} //exclusivo de cada estruct
}

struct Cat: Tamable {
    var id = UUID()
    var name: String
    var ownerName: String
    var emoji: String = "🐱"
    
    func play() { }
    
    func protect() {}
    
    func stalk() {} //exclusivo de cada estruct
    func eat() {} //exclusivo de cada estruct
}

struct GrizzlyBear {
    var id = UUID()
    func attack() {} //exclusivo de cada estruct
    func hibernate() {} //exclusivo de cada estruct
}



#Preview {
    ContentView()
}
