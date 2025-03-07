//
//  SwiftUIView.swift
//  lab3
//
//  Created by Maciek on 04/03/2025.
//

import SwiftUI

struct Content_View_Zadanie_3_1: View {
    @Binding var ileRazy: Int
    var body: some View {
        VStack {
            Text("Wciśnij przycisk")
            HStack{
                Button(action: {ileRazy += 1}, label: {Text("Dodaj 1")})
                    .frame(width: 80, height: 30)
                    .foregroundStyle(.black)
                    .background(.blue)
                    .cornerRadius(25)
                Button(action: {ileRazy -= 1 }, label:{Text("Odejmij 1")})
                    .frame(width: 80, height: 30)
                    .foregroundStyle(.black)
                    .background(.blue)
                    .cornerRadius(25)
            }
            Text("Wciśnięto \(ileRazy) razy!")
        }
        .padding()
    }
}

