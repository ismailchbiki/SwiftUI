//
//  Pop-upSheets&FullScreenCovers.swift
//  SwiftUI Bootcamp
//
//  Created by Ismail on 21/08/2022.
//

import SwiftUI

struct Pop_upSheets_FullScreenCovers: View {
    
    //Every screen can have only one single sheet
    //No conditional logic should be used to show sheets,
    //(there are other techniques to achieve that)
    
    @State var showSheet: Bool = false
    
    var body: some View {
//        SecondScreen()
        ZStack{
            Color.green
                .edgesIgnoringSafeArea(.all)

            Button(action: {
                showSheet.toggle()
            }, label: {
                Text("Button")
                    .foregroundColor(.green)
                    .font(.headline)
                    .padding(20)
                    .background(Color.white.cornerRadius(10))
            })

            //NEVER PUT CONDITIONAL LOGIC IN THE SHEETS
            //SHEET
            //a second screen that pops up in front of the original screen
            //the variable needs to be bound to the state (binding with dollar $ sign)
//            .sheet(isPresented: $showSheet, content: {
//                //Text("Hello there") //this is just a second screen with text
//                SecondScreen() //this is another screen
//            })
            
            //FULL SCREEN COVER (this covers the entire screen)
            .fullScreenCover(isPresented: $showSheet, content: {
                //Text("Hello there") //this is just a second screen with text
                SecondScreen() //this is another screen
            })
            
        }
    }
}

//Normally a second screen should be in another file,
//but for now this is just for testing purposes
struct SecondScreen: View{
    
    //this tells to the view that the screen is a sheet,
    //and hence knows how to dismiss it correctly
    @Environment(\.presentationMode) var presentationMode
    
//    @State var showSheet: Bool = true
    @State var color: Color = Color.red
    
    var body: some View{
        ZStack(alignment: .topLeading){
            color
                .edgesIgnoringSafeArea(.all)
            
            Button(action: {
//                showSheet.toggle()
//                color = Color.blue
                presentationMode.wrappedValue.dismiss()
            }, label: {
                Image(systemName: "xmark")
                    .foregroundColor(.white)
                    .font(.largeTitle)
                    .padding(20)
//                    .padding(.horizontal)
            })
//            .padding()
        }
    }
}

struct Pop_upSheets_FullScreenCovers_Previews: PreviewProvider {
    static var previews: some View {
        Pop_upSheets_FullScreenCovers()
//        SecondScreen()
    }
}
