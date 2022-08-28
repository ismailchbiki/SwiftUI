//
//  SliderBoot.swift
//  SwiftUI Bootcamp
//
//  Created by Ismail on 28/08/2022.
//

import SwiftUI

struct SliderBoot: View {
    
    @State var sliderValue: Double = 3
    @State var color: Color = .red
    
    var body: some View {
        VStack {
            
            Text("rating".capitalized)
                .font(.title)
                .padding(.bottom, 5)
            Text(
                //"\(sliderValue)"
                //format a number to 2 decimal places ("%.2f")
                String(format: "%.2f", sliderValue)
            )
            .foregroundColor(color)
                .font(.headline)
                .padding(.bottom, 15)
            
            //Slider 1
            //Slider(value: $sliderValue)
            
            //Slider 2 (with range)
            //Slider(value: $sliderValue, in: 1...5)
            
            //Slider 3 (with range & full number)
            //Slider(value: $sliderValue, in: 1...5, step: 0.5)
            
            //Slider 4 ()
            Slider(
                value: $sliderValue,
                in: 1...5,
                step: 1,
                //action to perform when the slider moves
                onEditingChanged: { (_) in
                    color = .green
                },
                minimumValueLabel: Text("1"),
                maximumValueLabel: Text("5"),
                label: {
                    Text("Title")
                }
            )
                .padding(.horizontal)
//                .background(Color.gray)
            .accentColor(.red)
        }
    }
}

struct SliderBoot_Previews: PreviewProvider {
    static var previews: some View {
        SliderBoot()
    }
}

