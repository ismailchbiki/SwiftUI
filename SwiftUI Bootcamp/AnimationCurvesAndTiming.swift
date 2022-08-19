//
//  AnimationCurvesAndTiming.swift
//  SwiftUI Bootcamp
//
//  Created by Ismail on 19/08/2022.
//

import SwiftUI

struct AnimationCurvesAndTiming: View {
    
    let timing: Double = 10.0
    @State var isAnimating: Bool = false
    
    var body: some View {
        VStack{
            Button("Button") {
                isAnimating.toggle()
            }
            
            //spring animation is the most used because it feels natural
            MyRectangle(
                isAnimating: $isAnimating,
                animation: Animation.spring(
                    response: 0.5,
                    dampingFraction: 0.7,
                    blendDuration: 1.0))
            
            //            MyRectangle(isAnimating: $isAnimating, animation: Animation.spring())
            //            MyRectangle(isAnimating: $isAnimating, animation: Animation.easeIn(duration: timing))
            //            MyRectangle(isAnimating: $isAnimating, animation: Animation.easeInOut(duration: timing))
            //            MyRectangle(isAnimating: $isAnimating, animation: Animation.easeOut(duration: timing))
        }
    }
}

struct MyRectangle: View{
    
    @Binding var isAnimating: Bool
    @State var animation: Animation
    
    var body: some View{
        RoundedRectangle(cornerRadius: 20)
            .frame(width: isAnimating ? 350 : 50, height: 100)
            .animation(animation)
    }
}

struct AnimationCurvesAndTiming_Previews: PreviewProvider {
    static var previews: some View {
        AnimationCurvesAndTiming()
    }
}
