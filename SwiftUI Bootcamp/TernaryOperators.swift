//
//  TernaryOperators.swift
//  SwiftUI Bootcamp
//
//  Created by Ismail on 19/08/2022.
//

import SwiftUI

struct TernaryOperators: View {
    
    @State var isStartingState: Bool = false
    
    var body: some View {
        VStack{
            Button("Button: \(isStartingState.description)"){
                isStartingState.toggle()
            }
            
            Text(isStartingState ? "Starting" : "EndingState")
            
            //ternary statement (same as Modern Javascript)
            RoundedRectangle(cornerRadius: isStartingState ? 25.0 : 0)
                .fill(isStartingState ? Color.red : Color.blue)
                .frame(
                    width: isStartingState ? 200 : 40,
                    height: isStartingState ? 400 : 50)
            
            Spacer()
        }
    }
}

struct TernaryOperators_Previews: PreviewProvider {
    static var previews: some View {
        TernaryOperators()
    }
}

