//
//  ContentView.swift
//  lab4
//
//  Created by Maciek on 07/03/2025.
//

import SwiftUI

struct ContentView_Zadanie_4_1: View {
    
    
    @State var walutaKupiona: waluty = .pln
    @State var walutaSprzedana: waluty = .usd
    @State var ileWaluty: String = ""
    @State var wynik: String = ""
    
    var body: some View {
        VStack{
            HStack {
                Text("Kupuje: ")
                    .padding()
                
                Picker("Wybierz walute", selection: $walutaKupiona){
                    ForEach(waluty.allCases){
                        waluta in Text(waluta.rawValue).tag(waluta)}
                }
                .pickerStyle(MenuPickerStyle())
                
                Text("Płacę w: ")
                    .padding()
                Picker("Wybierz walute", selection: $walutaSprzedana){
                    ForEach(waluty.allCases){
                        waluta in Text(waluta.rawValue).tag(waluta)}
                }
                
            }
            
            TextField("Podaj wartość", text: $ileWaluty)
                .padding()
                .frame(width: 300, height: 50)
                .border(.black)
                .keyboardType(.numberPad)


            Button(action: {wynik = przeliczWartosc(waluta1: walutaKupiona, waluta2: walutaSprzedana, ilosc: Double(ileWaluty)!)}
            ){
                Text("Przelicz")
            }
            .font(.largeTitle)
            .padding()
            
            Text(wynik)
               .font(.title)
       }
        
        
        .padding()
        .border(.black)
    }
}
