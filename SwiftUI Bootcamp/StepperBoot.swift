//
//  StepperBoot.swift
//  SwiftUI Bootcamp
//
//  Created by Ismail on 28/08/2022.
//

import SwiftUI

struct StepperBoot: View {
    
    @State var stepperValue: CGFloat = 100
//    @State var value: CGFloat = 20
    
    var body: some View {
        
        
        VStack {
            Text("\(stepperValue)")
                .padding(.bottom, 15)
            Stepper(
                "stepper 1".capitalized,
                //strideable: something to go up and down on
                value: $stepperValue
            )

            Stepper(
                "stepper 2".capitalized) {
                    incrementWidth(value: 100)
                } onDecrement: {
                    incrementWidth(value: -100)
                }
            
            
            //use frame to change size and shape of items
            RoundedRectangle(cornerRadius: 25.0)
                .frame(width: stepperValue, height: 100)
                .padding(.top, 30)
                .foregroundColor(Color.green)

        }
        .padding(.horizontal, 50)
    }
    
    func incrementWidth(value: CGFloat){
        withAnimation(.easeInOut) {
            stepperValue += value
        }
    }
    
//    func decrementWidth(value: CGFloat){
//        withAnimation(.easeInOut) {
//            stepperValue -= value
//        }
//    }
}

struct StepperBoot_Previews: PreviewProvider {
    static var previews: some View {
        StepperBoot()
    }
}
