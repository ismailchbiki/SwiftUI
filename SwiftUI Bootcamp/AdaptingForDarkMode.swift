//
//  AdaptingForDarkMode.swift
//  SwiftUI Bootcamp
//
//  Created by Ismail on 28/08/2022.
//

import SwiftUI

//looking at adaptable colors and unadaptable colors to the dark made
//how to pick colors carefully when developing an IOS app

struct AdaptingForDarkMode: View {
    
    //colorScheme is another environment that comes by default in SwiftUI
    @Environment(\.colorScheme) var colorScheme
    
    var body: some View {
        NavigationView{
            ScrollView{
                VStack(spacing: 20){
                    Text("This color is PRIMARY")
                        .foregroundColor(.primary)
                    Text("This color is SECONDARY")
                    //secondary is gray color
                        .foregroundColor(.secondary)
                    Text("This color is BLACK")
                        .foregroundColor(.black)
                    Text("This color is WHITE")
                        .foregroundColor(.white)
                    Text("This color is RED")
                        .foregroundColor(.red)
                    Text("This color is globally adaptive!")
                    //when using custom colors, call the color inside a String
                        .foregroundColor(Color("AdaptiveColor"))
                    //an adaptive color that made custom manually using Environment and colorScheme
                    Text("This color is locally adaptive")
                        .foregroundColor(colorScheme == .light ? .green : .yellow)
                }
            }
            .navigationTitle("Dark Mode Bootcamp")
        }
    }
}

struct AdaptingForDarkMode_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            //to show 2 screens at the same time
            AdaptingForDarkMode()
                .preferredColorScheme(.light)
            AdaptingForDarkMode()
                .preferredColorScheme(.dark)
        }
    }
}
