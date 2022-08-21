//
//  PopOver.swift
//  SwiftUI Bootcamp
//
//  Created by Ismail on 21/08/2022.
//


//A sum-up for sheets, animations, & transitions

import SwiftUI

struct PopOver: View {
    
    @State var showSceen: Bool = false
    
    var body: some View {
        ZStack{
            Color.orange
                .edgesIgnoringSafeArea(.all)
            
            VStack{
                Button("Button") {
                    showSceen.toggle()
                }
                .font(.largeTitle)
                
                Spacer()
            }
            
            //METHOD 1 - SHEET
//            .sheet(isPresented: $showSceen, content: {
//                NewScreen()
//            })
            
            
            //METHOD 2 - TRANSITION
//            ZStack{
//                if showSceen{
//                    NewScreen(showSceen: $showSceen)
//                        .padding(.top, 100)
//                        .transition(.move(edge: .bottom))
//                        .animation(.spring())
//                }
//            }
//            .zIndex(2.0)
            
            
            //METHOD 3 - ANIMATION OFFSET
            NewScreen(showSceen: $showSceen)
                .padding(.top, 100)
                .offset(y: showSceen ? 0 : UIScreen.main.bounds.height)
                .animation(.spring()) //smooth sliding
        }
    }
}

struct NewScreen: View{
    
    @Environment(\.presentationMode) var presentationMode
    @Binding var showSceen: Bool
    
    var body: some View{
        ZStack(alignment: .topLeading){
            Color.purple
                .edgesIgnoringSafeArea(.all)
            
            Button {
//                presentationMode.wrappedValue.dismiss()
                showSceen.toggle()
            } label: {
                Image(systemName: "xmark")
                    .foregroundColor(.white)
                    .font(.largeTitle)
                    .padding(20)
            }
        }
    }
}

struct PopOver_Previews: PreviewProvider {
    static var previews: some View {
        PopOver()
//        NewScreen()
    }
}
