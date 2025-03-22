import SwiftUI

struct ContentView: View {
    var data = DataForView()
    
    @State var selectedFigure: FigurePickerElement?
    @State var color: Color = .blue
    @State var toggle = false
    @State var wysokosc: Int = 0
    @State var szerokosc: Int = 0
    var body: some View {
        VStack {
            HStack{
                Picker("Wybierz figure", selection: $selectedFigure){
                    ForEach(data.elements){
                        element in HStack{
                            Image(systemName: element.icon)
                            Text(element.name)
                        }.tag(element)
                    }
                }
                ColorPicker("", selection: $color)
            }
            
            HStack{
                Text("Wysokosc: ")
                Spacer()
                TextField("Wysokosc", value:$wysokosc, formatter: NumberFormatter())
                    .onChange(of: wysokosc) { newValue in
                                            if newValue < 0 {
                                                wysokosc = 0
                                            } else if newValue > 500 {
                                                wysokosc = 500
                                            }
                                        }
            }
            HStack{
                Text("Szerokosc: ")
                Spacer()
                TextField("Szerokosc", value:$szerokosc, formatter: NumberFormatter())
                    .onChange(of: wysokosc) { newValue in
                                            if newValue < 0 {
                                                wysokosc = 0
                                            } else if newValue > 500 {
                                                wysokosc = 500
                                            }
                                        }
                
            }
            
            Toggle(isOn: $toggle){
                Text("Ramka")
            }
            
        }
        .padding().border(.black)
        ZStack{
            if let selectedFigure = selectedFigure{
                if selectedFigure.name == "Kolo"{
                    Circle().fill(color)
                        .frame(width: DataForView.convertToCGFloat(szerokosc), height: DataForView.convertToCGFloat(wysokosc))
                }else if selectedFigure.name == "Elipsa" {
                    Ellipse().fill(color)
                        .frame(width: DataForView.convertToCGFloat(szerokosc), height: DataForView.convertToCGFloat(wysokosc))
                } else if selectedFigure.name == "Kwadrat" {
                    Rectangle().fill(color)
                        .frame(width: DataForView.convertToCGFloat(szerokosc), height: DataForView.convertToCGFloat(wysokosc))
                    
                }
            }
            if toggle {
                Rectangle()
                    .stroke(Color.black, lineWidth: 4)
                    .frame(width: DataForView.convertToCGFloat(szerokosc), height: DataForView.convertToCGFloat(wysokosc))
                    .padding()
            }
        }
    }
}

#Preview {
    ContentView()
}
