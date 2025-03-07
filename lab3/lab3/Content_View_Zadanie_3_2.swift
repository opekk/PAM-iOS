//
//  Panel_View_Zadanie_3_2.swift
//  lab3
//
//  Created by Maciek on 07/03/2025.
//
import SwiftUI

struct Content_View_Zadanie_3_2: View {
    
    @StateObject private var viewModel = TireViewModel()
    
    var body: some View {
        VStack(spacing: 20) {
            Text("Wybierz opony")
                .font(.largeTitle)
                .bold()

            Picker("Rozmiar opony", selection: $viewModel.selectedSize) {
                ForEach(viewModel.sizes, id: \.self) { size in
                    Text(size).tag(size)
                }
            }
            .pickerStyle(MenuPickerStyle())
            .padding()

            if !viewModel.brands.isEmpty {
                Picker("Producent opon", selection: $viewModel.selectedBrand) {
                    ForEach(viewModel.brands, id: \.self) { brand in
                        Text(brand).tag(brand)
                    }
                }
                .pickerStyle(MenuPickerStyle())
                .padding()
            }

            TextField("Liczba opon", text: $viewModel.quantity)
                .keyboardType(.numberPad)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()

            Button(action: {
                viewModel.checkAvailability()
            }) {
                Text("Sprawdź dostępność")
                    .font(.title2)
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
            .padding()

            Text(viewModel.message)
                .font(.headline)
                .foregroundColor(viewModel.message.contains("🎉") ? .green : .red)
                .padding()

            Spacer()
        }
        .padding()
    }
}
