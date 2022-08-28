//
//  ColorPickerBoot.swift
//  SwiftUI Bootcamp
//
//  Created by Ismail on 28/08/2022.
//

import SwiftUI

//Changing the background color of the app with the color picker

struct ColorPickerBoot: View {
    
    @State var backgroundColor: Color = Color.green
    
    var body: some View {
        ZStack{
            backgroundColor.edgesIgnoringSafeArea(.all)
            
            ColorPicker("Select a color",
                        //always the money sign when binding variables
                        selection: $backgroundColor,
                        //allowing users to pick only colors at 100% opacity
                        //OR allowing them to add opacity to the color
                        supportsOpacity: true)
            .padding()
            .background(Color.black)
            .cornerRadius(8)
            .foregroundColor(Color.white)
            .font(.headline)
            .padding(50)   
        }
    }
}

struct ColorPickerBoot_Previews: PreviewProvider {
    static var previews: some View {
        ColorPickerBoot()
    }
}
