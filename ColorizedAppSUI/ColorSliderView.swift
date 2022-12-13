//
//  ColorSliderView.swift
//  ColorizedAppSUI
//
//  Created by leogoba on 13.12.2022.
//

import SwiftUI

struct ColorSliderView: View {
    @Binding var value: Double
    let color: Color
    
    var body: some View {
        HStack {
            Text("\(lround(value))")
            Slider(value: $value, in: 0...255, step: 1)
                .accentColor(color)
        }
    }
}

struct ColorSliderView_Previews: PreviewProvider {
    static var previews: some View {
        ColorSliderView(value: .constant(13), color: .green)
    }
}
