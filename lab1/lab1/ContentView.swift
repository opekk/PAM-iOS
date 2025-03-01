import SwiftUI


struct firstView: View {
    var dni = ["Poniedziałek", "Wtorek", "Środa", "Czwartek", "Piątek", "Sobota", "Niedziela"]
    @State var dzien: String = ""
    @State var dzienWybor: String = ""
    var body: some View {
        VStack(alignment: .center){
            Text("Podaj wybrany dzien tygodnia").foregroundColor(.blue).padding()
            TextField("Wpisz dzien tygodnia: ", text: $dzien).multilineTextAlignment(.center).padding()
            Button(action: {dzienWybor = dzien}, label: {Text("Zatwierdz dzien")}).background(RoundedRectangle(cornerRadius: 15)).padding()
            if(dni.contains(dzien)){
                Text("Wybrano: \(dzienWybor)")
            }
        }.rotation3DEffect(.degrees(45), axis: (x: 1, y: 0, z: 0)).shadow(color: .gray, radius: 2, x: 0, y: 15)
    }
}


struct secondView: View{
    @State var liczba1: String = ""
    @State var liczba2: String = ""
    @State var wynik: String = ""
    
    func divide(){
        if let a = Double(liczba1), let b = Double(liczba2), b != 0{
            wynik = String(format: "%.2f", a/b)
        }else{
            wynik = "Niepoprawne dane"
        }
        
    }
    
    var body: some View{
        VStack{
            Text("Podaj pierwsza liczbe: ").foregroundColor(.blue)
            TextField("Liczba 1", text: $liczba1)
            Text("Podaj druga liczbe: ").foregroundColor(.blue)
            TextField("Liczba 2", text: $liczba2)
            Button(action: {divide()}, label: {Text("Dziel")})
            Text(wynik).font(.largeTitle)
            
        }
    }
}

