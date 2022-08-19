//
//  BindingPropertyWrapper.swift
//  SwiftUI Bootcamp
//
//  Created by Ismail on 19/08/2022.
//

import SwiftUI

struct BindingPropertyWrapper: View {
    
    @State var backgroundColor: Color = Color.green
    
    var body: some View {
        ZStack{
            backgroundColor.edgesIgnoringSafeArea(.all)
            
            //We need to pass the expected arguments to the struct
            ButtonView(backgroundColor: $backgroundColor)
        }
    }
}

struct ButtonView: View {
    
    //In Swift, when we create variables inside structs (classes),
    // a constructor gets created automatially as well
    @Binding var backgroundColor: Color
    @State var buttonBackgroundColor: Color = Color.blue
    var body: some View{
        Button {
            //onClick event
            backgroundColor = Color.orange
            buttonBackgroundColor = Color.green
        } label: {
            Text("Button")
                .foregroundColor(.white)
                .padding()
                .padding(.horizontal)
                .background(buttonBackgroundColor)
                .cornerRadius(10)
        }
    }
}

struct BindingPropertyWrapper_Previews: PreviewProvider {
    static var previews: some View {
        BindingPropertyWrapper()
    }
}
