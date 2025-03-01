//
//  ContentView.swift
//  lab2
//
//  Created by Maciek on 01/03/2025.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            VStack(alignment: .center) {
                HStack {
                    NavigationLink("View 1", destination: Zadanie_2_1())
                    NavigationLink("View 2", destination: Zadanie_2_2())
                    NavigationLink("View 3", destination: Zadanie_2_3())
                    NavigationLink("View 4", destination: Zadanie_2_4())                }
                .padding()
            }
        }
    }
}




struct Zadanie_2_1: View {
    var body: some View {
        let tablica_kolorow: [Color] = [.red, .blue, .green, .yellow, .orange, .pink]
        ZStack(alignment: .leading){
            ForEach(0..<tablica_kolorow.count, id: \.self) { index in
                Rectangle()
                    .fill(tablica_kolorow[index]) // Use 'index' to access color
                    .frame(width: 200, height: 200)
                    .offset(x: CGFloat(index) * 10.0, y: CGFloat(index) * 10.0)
            }
        }
    }
}

struct Zadanie_2_2: View {
    var body: some View {
        ZStack(alignment: .bottomLeading){
            Image("Kotek-rudy-17").resizable().frame(width: 400, height: 300)
            HStack(){
                VStack(alignment: .leading){
                    Text("Kotek")
                        .foregroundStyle(.red)
                        .padding(EdgeInsets(top: 5, leading: 15, bottom: 2, trailing: 0))
                        .bold()
                        .font(.title)
                        .opacity(1.0)
                    Text("Autor nieznany")
                        .foregroundStyle(.red)
                        .padding(EdgeInsets(top: 0, leading: 15, bottom: 15, trailing: 0))
                        .opacity(1.0)
                }
                Spacer()
            }   .background(.white.opacity(0.3))
                .border(.black)
        }
    }
}

struct Zadanie_2_3: View {
    
    func isTriangle(){
        if let a = Double(bok1), let b = Double(bok2), let c = Double(bok3){
            if (a+b)>c && (a+c)>b && (b+c)>a{
                wynik = "Jest to trojkat"
            }else{
                wynik = "Nie jest to trojkat"
            }
        }
        
    }
    @State var bok1: String = ""
    @State var bok2: String = ""
    @State var bok3: String = ""
    @State var wynik: String = ""
    var body: some View {
        VStack(alignment: .leading, spacing: 20){
            HStack(){
                Text("Podaj Bok 1").frame(width: 100, height: 30)
                TextField("Bok 1", text: $bok1).frame(width: 100, height: 30)
                    .keyboardType(.numberPad)
            }
            HStack(){
                Text("Podaj Bok 2").frame(width: 100, height: 30)
                TextField("Bok 2", text: $bok2).frame(width: 100, height: 30)
                    .keyboardType(.numberPad)
            }
            HStack(){
                Text("Podaj Bok 3").frame(width: 100, height: 30)
                TextField("Bok 3", text: $bok3).frame(width: 100, height: 30)
                    .keyboardType(.numberPad)
                
            }
            Text("Podano boki: \(bok1) \(bok2) \(bok3)").padding(.leading, 5)
            
            Button(action:{isTriangle()}, label: {Text("Trójkąt")})
                .frame(width: 80, height: 30)
                .foregroundStyle(Color.black)
                .background(Color.blue)
                .cornerRadius(25)
               
            Text(wynik).font(.headline).padding(.leading, 5)
        }.frame(maxWidth: .infinity)
    }
}



struct Zadanie_2_4: View{
    func dodaj(){
        wynik = String(Double(liczba1)! + Double(liczba2)!)
    }
    func odejmij(){
        wynik = String(Double(liczba1)! - Double(liczba2)!)
    }
    func mnoz(){
        wynik = String(Double(liczba1)! * Double(liczba2)!)
    }
    func dziel(){
        if (liczba2 == "0") {wynik = "Nie mozna dzielic przez zero"}
        else {wynik = String(Double(liczba1)! / Double(liczba2)!) }
    }
    
    @State var liczba1: String = ""
    @State var liczba2: String = ""
    @State var wynik: String = ""
    var body: some View{
        
        VStack(spacing: 20){
            Text("Podaj dwie liczby")
            HStack(alignment: .center){
                Text("Podaj liczbe1: ")
                TextField("Liczba 1", text: $liczba1)
                    .keyboardType(.numberPad)
            }.multilineTextAlignment(.center)
            HStack(){
                Text("Podaj liczba2: ")
                TextField("Liczba 2", text: $liczba2)
                    .keyboardType(.numberPad)
            }.multilineTextAlignment(.center)
            HStack{
                Button(action: {dodaj()}, label:{Text("+")})
                    .frame(width: 80, height: 30)
                    .foregroundStyle(Color.black)
                    .background(Color.blue)
                    .cornerRadius(25)
                Button(action: {odejmij()}, label:{Text("-")})
                    .frame(width: 80, height: 30)
                    .foregroundStyle(Color.black)
                    .background(Color.blue)
                    .cornerRadius(25)
                Button(action: {mnoz()}, label:{Text("*")})
                    .frame(width: 80, height: 30)
                    .foregroundStyle(Color.black)
                    .background(Color.blue)
                    .cornerRadius(25)
                Button(action: {dziel()}, label:{Text("/")})
                    .frame(width: 80, height: 30)
                    .foregroundStyle(Color.black)
                    .background(Color.blue)
                    .cornerRadius(25)

            }
            Text("Wynik: \(wynik)")
        }
    }
}
