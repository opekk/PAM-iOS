//
//  ContentView.swift
//  lab3
//
//  Created by Maciek on 02/03/2025.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            VStack(alignment: .center) {
                HStack {
                    NavigationLink("View 1", destination: Zadanie_3_1())
                    NavigationLink("View 2", destination: Zadanie_3_2())
                        .padding()
                }
            }
        }
    }
}


struct Zadanie_3_1: View {
    @State var ileRazy: Int = 0
    var body: some View {
        Content_View_Zadanie_3_1(ileRazy: $ileRazy)
    }
}



struct Zadanie_3_2: View{
    var body: some View{
        Content_View_Zadanie_3_2()
    }
}
