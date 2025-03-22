import Foundation

struct TireInventory {
    var stock: [String: [String: Int]] = [
        "205/55 R16": ["Michelin": 10, "Goodyear": 5, "Pirelli": 8],
        "225/45 R17": ["Michelin": 4, "Goodyear": 7, "Pirelli": 6],
        "195/65 R15": ["Michelin": 12, "Goodyear": 9, "Pirelli": 10]
    ]
    
    func isAvailable(size: String, brand: String, quantity: Int) -> Bool {
        guard let availableStock = stock[size]?[brand] else {
            return false
        }
        return availableStock >= quantity
    }
}
   

