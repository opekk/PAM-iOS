//
//  model.swift
//  lab4
//
//  Created by Maciek on 07/03/2025.
//

import Foundation

enum waluty: String, CaseIterable, Identifiable {
    case usd = "USD"
    case eur = "EUR"
    case pln = "PLN"
    case gbp = "GBP"
    case chf = "CHF"
    
    var id: String { self.rawValue }
    
    func getKurs() -> Double {
        switch self {
        case .usd:
            return 1.0
        case .eur:
            return 0.89
        case .pln:
            return 0.24
        case .gbp:
            return 0.79
        case .chf:
            return 0.95
        }
    }
    
}

func przeliczWartosc(waluta1: waluty, waluta2: waluty, ilosc: Double) -> String{
    let wynikString = String(format: "%.2f", ilosc * waluta2.getKurs() / waluta1.getKurs())
    return String(format:"\(ilosc) \(waluta2) to \(wynikString) \(waluta1)")
}
