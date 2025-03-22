import SwiftUI

struct FigurePickerView: View {
    var data = DataForView()
    
    @State var selectedFigure: FigurePickerElement?
    
    var body: some View {
        VStack{
            Picker("Wybierz figure", selection: $selectedFigure){
                ForEach(data.elements){
                    element in HStack{
                        Image(systemName: element.icon)
                        Text(element.name)
                    }.tag(element)
                }
            }
            Text(selectedFigure?.name ?? "")
        }
    }
}

#Preview {
    FigurePickerView()
}
