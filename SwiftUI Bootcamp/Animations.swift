//
//  Animations.swift
//  SwiftUI Bootcamp
//
//  Created by Ismail on 19/08/2022.
//

import SwiftUI

struct Animations: View {
    
    @State var isAnimated: Bool = false
    var body: some View {
        VStack{
            Button("Button") {
                isAnimated.toggle()
            }
            
            Spacer()
            
            RoundedRectangle(cornerRadius: isAnimated ? 50 : 25.0)
                .fill(isAnimated ? Color.red : Color.green)
                .frame(width: isAnimated ? 100 : 300, height: isAnimated ? 100 : 300)
                .rotationEffect(Angle(degrees: isAnimated ? 360 : 0))
                .offset(y: isAnimated ? 100 : 0)
                .animation(
                Animation
                    .default
                    .repeatCount(5, autoreverses: true))
            
            Spacer()
        }
    }
}

struct Animations_Previews: PreviewProvider {
    static var previews: some View {
        Animations()
    }
}
