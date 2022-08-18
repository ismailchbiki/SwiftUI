//
//  ExtractedFunctions.swift
//  SwiftUI Bootcamp
//
//  Created by Ismail on 18/08/2022.
//

import SwiftUI

struct ExtractedFunctions: View {
    //"var": to be able to change the state
    //"@State": to tell to the view to watch the var
    @State var backgroundColor: Color = Color.pink
    var body: some View {
        ZStack{
            //background
            backgroundColor.edgesIgnoringSafeArea(.all)
            
            //Content
            //extracting parts of the views from the body (like react components)
            contentLayer
        }
    }
    
    //custom components (myButton, contentLayer)
    var myButton: some View{
        //"action": to execute the logic onClick event
        Button(action: {buttonPressed()}, label: {Text("PRESS ME")
                .font(.headline)
                .foregroundColor(.white)
                .padding()
                .background(Color.black)
                .cornerRadius(10)
        })
    }
    
    //Extracting parts from the view into reusable components
    var contentLayer: some View{
        VStack{
            Text("Title")
                .font(.largeTitle)
            myButton
            myButton
            myButton
        }
    }
    
    //extracting functions from the view
    func buttonPressed(){
        backgroundColor = .yellow
    }
}

struct ExtractedFunctions_Previews: PreviewProvider {
    static var previews: some View {
        ExtractedFunctions()
    }
}
