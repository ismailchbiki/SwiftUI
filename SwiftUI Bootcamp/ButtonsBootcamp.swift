//
//  ButtonsBootcamp.swift
//  SwiftUI Bootcamp
//
//  Created by Ismail on 30/07/2022.
//

import SwiftUI

struct ButtonsBootcamp: View {
    
    //STYLING BUTTONS:
    @State var button: String = "click"
    @State var title : String = "Hi there !"
    var body: some View {
        
        VStack(spacing: 20) {
            Text(title)
                .font(.title)
            Button(button) {
                
                if (title == "Hi there !"){
                    self.title = "Button is pressed"
                    self.button = "Nice job"
                } else {
                    self.title = "Hi there !"
                    self.button = "Click"
                }
            }
            .font(.title)
            //.foregroundColor(Color.purple)
            .accentColor(.pink) //same as foreground color
            .padding(.horizontal, 20)
            .padding(.vertical, 8)
            .background(Color.yellow)
            .cornerRadius(10)
            .shadow( radius: 10.0)
            
            //other type of buttons which can be more dynamic
            Button {
                self.title = "Button #2 is pressed"
            } label: {
                Text("Save".uppercased())
                    .font(.headline)
                    .fontWeight(.semibold)
                    .foregroundColor(.white)
                    .padding()
                    .padding(.horizontal, 20)
                    .background(Color.blue)
                    .cornerRadius(10.0)
                    .shadow( radius: 10.0)
            }
            
            //other button styling
            Button {
                self.title = "Button number #3 is clicked"
            } label: {
                Circle()
                    .fill(Color.white)
                    .frame(width: 75, height: 75)
                    .shadow( radius: 10)
                    .overlay(
                        Image(systemName: "heart.fill")
                            .font(.largeTitle)
                            .foregroundColor(Color.red)
                    )
            }
            
            Button {
                self.title = "Button number #4 is clicked"
            } label: {
                Text("Finish".uppercased())
                    .font(.caption)
                    .bold()
                    .foregroundColor(.gray)
                    .padding()
                    .padding(.horizontal, 10)
                    .background(
                        Capsule()
                            .stroke(Color.gray, lineWidth: 3.0)
                    )
            }

        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
//        .background(
//            Color.purple
//                .ignoresSafeArea(.all)
//        )
    }
}

struct ButtonsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ButtonsBootcamp()
    }
}
