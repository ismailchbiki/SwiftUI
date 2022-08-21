//
//  Transition.swift
//  SwiftUI Bootcamp
//
//  Created by Ismail on 21/08/2022.
//

import SwiftUI

struct Transition: View {
    
    @State var showView: Bool = false
    var body: some View {
        ZStack (alignment: .bottom){
            
            VStack{
                Button("Button") {
                    showView.toggle()
                }
                Spacer()
            }
            
            //KEYBOARD POP UP FROM BOTTOM
            if showView{
                RoundedRectangle(cornerRadius: 30)
                    .frame(height: UIScreen.main.bounds.height * 0.5)
                //.opacity(showView ? 1.0 : 0.0)
                //.transition(.slide)
                //this is nice for keyboards or tips
                    .transition(.move(edge: .bottom))
                    .animation(.spring()) //bounce a bit from bottom
//                    .animation(.easeInOut)
            }
            
        }
        .edgesIgnoringSafeArea(.bottom)
    }
}

struct Transition_Previews: PreviewProvider {
    static var previews: some View {
        Transition()
    }
}
