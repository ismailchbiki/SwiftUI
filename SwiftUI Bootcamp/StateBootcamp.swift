//
//  StateBootcamp.swift
//  SwiftUI Bootcamp
//
//  Created by Ismail on 31/07/2022.
//

import SwiftUI

struct StateBootcamp: View {
    
    //@State: indicates to the View that the state of the var might change
    //        -> watch the state of the var
    //        -> if the state changes, update the view
    @State var backgroundColor : Color = Color.green
    @State var myTitle : String = "GREEN"
    @State var count : Int = 0
    var body: some View {
        ZStack{
            //Background
            backgroundColor
                .ignoresSafeArea()
            
            VStack(spacing: 20){
                Text(myTitle)
                    .font(.title)
                Text("Count: \(count)") //\(varName): referencing within a String
                    .font(.headline)
                    .underline()
                
                HStack(spacing: 20){
                    Button("Button #1") {
                        if backgroundColor == Color.green{
                            backgroundColor = Color.red
                            myTitle = "RED"
                            count += 1
                        }
                    }
                    
                    Button("Button #2") {
                        if backgroundColor == Color.red{
                            backgroundColor = Color.green
                            myTitle = "GREEN"
                            count -= 1
                        }
                    }
                }
            }
            .foregroundColor(.white)
            
            //Foreground
        }
    }
}

struct StateBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        StateBootcamp()
    }
}
