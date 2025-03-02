//
//  ContentView.swift
//  lab3
//
//  Created by Maciek on 02/03/2025.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            VStack(alignment: .center) {
                HStack {
                    NavigationLink("View 1", destination: Zadanie_3_1())
//                    NavigationLink("View 2", destination: Zadanie_3_2())
                        .padding()
                }
            }
        }
    }
}


struct Zadanie_3_1: View {
    @State var ileWcisnieto: Int = 0
    var body: some View {
        VStack {
            Text("Wciśnij przycisk")
            HStack{
                Button(action: {ileWcisnieto += 1}, label: {Text("Dodaj 1")})
                    .frame(width: 80, height: 30)
                    .foregroundStyle(.black)
                    .background(.blue)
                    .cornerRadius(25)
                Button(action: {ileWcisnieto -= 1 }, label:{Text("Odejmij 1")})
                    .frame(width: 80, height: 30)
                    .foregroundStyle(.black)
                    .background(.blue)
                    .cornerRadius(25)
            }
            Text("Wciśnięto \(ileWcisnieto) razy!")
        }
        .padding()
    }
}

