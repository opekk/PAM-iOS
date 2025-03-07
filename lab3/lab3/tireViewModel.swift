import Foundation

class TireViewModel: ObservableObject {
    
    @Published var selectedSize: String = "" {
        didSet { selectedBrand = "" } // Resetuj markę po zmianie rozmiaru
    }
    @Published var selectedBrand: String = ""
    @Published var quantity: String = ""
    @Published var message: String = ""

    let tireInventory = TireInventory()

    var sizes: [String] {
        Array(tireInventory.stock.keys)
    }
    
    var brands: [String] {
        tireInventory.stock[selectedSize]?.keys.sorted() ?? []
    }

    func checkAvailability() {
        guard let quantityInt = Int(quantity), quantityInt > 0 else {
            message = "Podaj poprawną liczbę opon."
            return
        }
        
        if selectedSize.isEmpty || selectedBrand.isEmpty {
            message = "Wybierz rozmiar i markę opon."
            return
        }
        
        if tireInventory.isAvailable(size: selectedSize, brand: selectedBrand, quantity: quantityInt) {
            message = "Opony są dostępne! 🎉"
        } else {
            message = "Brak wystarczającej liczby opon."
        }
    }
}
