//
//  BackgroundAndOverlayBootcamp.swift
//  SwiftUI Bootcamp
//
//  Created by Ismail on 24/07/2022.
//

import SwiftUI

struct BackgroundAndOverlayBootcamp: View {
    var body: some View {
        //        PLAYING WITH BACKGROUND
        //        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
        //            .background(
        //                //                Color.yellow
        //                //                LinearGradient(
        //                //                    gradient: Gradient(colors: [Color.red, Color.blue]),
        //                //                    startPoint: .leading,
        //                //                    endPoint: .trailing
        //                //                )
        //                Circle()
        //                    .fill(LinearGradient(
        //                        gradient: Gradient(colors: [Color.red, Color.blue]),
        //                        startPoint: .leading,
        //                        endPoint: .trailing))
        //                    .frame(width: 100, height: 100)
        //            )
        //
        //            .background(
        //                Circle()
        //                    .fill(LinearGradient(
        //                        gradient: Gradient(colors: [Color.blue, Color.red]),
        //                        startPoint: .leading,
        //                        endPoint: .trailing)
        //                    )
        //                    .frame(width: 120, height: 120)
        //            )
        
        //        PLAYING WITH OVERLAY
        //        Circle()
        //            .fill(Color.pink)
        //            .frame(width: 100, height: 100)
        //            .overlay(
        //                Text("1")
        //                    .font(.largeTitle)
        //                    .foregroundColor(.white)
        //            )
        //            .background(
        //                Circle()
        //                    .fill(Color.purple)
        //                    .frame(width: 110, height: 110)
        //            )
        
        //Rectangle - adding modifiers to the rectangle
        //        Rectangle()
        //            .frame(width: 100, height: 100)
        //            .overlay(
        //                Rectangle()
        //                    .fill(Color.blue)
        //                    .frame(width: 50, height: 50),
        //                alignment: .topLeading
        //            )
        //            .background(
        //                Rectangle()
        //                    .fill(Color.red)
        //                    .frame(width: 150, height: 150),
        //                alignment: .bottomTrailing
        //            )
        
        //APPLYING ALL WHAT WAS LEARNT SO FAR
        Image(systemName: "heart.fill") //add an img
            .font(.system(size: 40)) //change the size
            .foregroundColor(Color.white) //change the color
            .background( //adding background to the img (gradient colored circle )
                Circle()
                    .fill( //filling that circle with a gradient
                        LinearGradient(
                            gradient: Gradient(colors: [Color.red, Color.blue]),
                            startPoint: .topLeading,
                            endPoint: .bottomTrailing
                        )
                    )
                    .frame(width: 100, height: 100)
                    .shadow(color: .black, radius: 10, x: 0.0, y: 10) //on top of that circle we added a custom shadow
                    .overlay(
                        Circle() //adding new circle to the first big circle (with number 5)
                            .fill(Color.blue)
                            .frame(width: 35, height: 35)
                            .overlay( //adding an overlay on top of the small circle with number 5 text
                                Text("5")
                                    .font(.headline)
                                    .foregroundColor(Color.white)
                            )
                            .shadow(color: .black, radius: 10, x: 5, y: 5)
                        , alignment: .bottomTrailing //aligning the overlay to .bottomTrailing
                            )
            )
    }
}

struct BackgroundAndOverlayBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundAndOverlayBootcamp()
    }
}
