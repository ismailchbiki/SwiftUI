//
//  ColorsBootcamp.swift
//  SwiftUI Bootcamp
//
//  Created by Ismail on 22/07/2022.
//

import SwiftUI

struct ColorsBootcamp: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 25)
            .fill(
//                Color.primary
//                Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)))
//                Color(UIColor.secondarySystemBackground))
                Color("CustomColor")
            )
            
            .frame(width: 300, height: 200)
//            .shadow(radius: 10)
            .shadow(color: Color("CustomColor").opacity(0.3), radius: 10, x: 10, y: 10)
    }
}

struct ColorsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ColorsBootcamp()
    }
}
 
