import SwiftUI

struct FigurePickerElement: Identifiable, Hashable{
    var id = UUID()
    var name: String
    var icon: String
}

class DataForView{
    var elements: [FigurePickerElement]
    
    init(){
        self.elements = [
            FigurePickerElement(name: "Kolo", icon: "circle"),
            FigurePickerElement(name: "Elipsa", icon: "circle.dotted"),
            FigurePickerElement(name: "Kwadrat", icon: "square")
        ]
    }
    
    static func convertToCGFloat(_ value: Int) -> CGFloat{
        if let cgValue = CGFloat(exactly: value){
            return cgValue
        }else{
            return 0
        }
    }
}
