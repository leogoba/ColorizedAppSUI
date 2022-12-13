//
//  ContentView.swift
//  ColorizedAppSUI
//
//  Created by leogoba on 13.12.2022.
//

import SwiftUI

struct ContentView: View {
    @State private var redSliderValue = Double.random(in: 0...255)
    @State private var greenSliderValue = Double.random(in: 0...255)
    @State private var blueSliderValue = Double.random(in: 0...255)
    
    var body: some View {
        ZStack {
            Color(.lightGray)
                .ignoresSafeArea()
            
            VStack(spacing: 20) {
                ColorRectangleView(
                    redColor: redSliderValue,
                    greenColor: greenSliderValue,
                    blueColor: blueSliderValue
                )
                ColorSliderView(value: $redSliderValue, color: .red)
                ColorSliderView(value: $greenSliderValue, color: .green)
                ColorSliderView(value: $blueSliderValue, color: .blue)
                
                Spacer()
            }
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
