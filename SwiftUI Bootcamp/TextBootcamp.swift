//
//  TextBootcamp.swift
//  SwiftUI Bootcamp
//
//  Created by Ismail on 13/07/2022.
//

import SwiftUI

struct TextBootcamp: View {
    var body: some View {
        Text("Hello, World. This text is dummy text to test multi lining to see how it works. and how it controls the lines on the screen!".uppercased())
//            .font(.body)
//            .fontWeight(.semibold)
//            .bold()
////            .underline()
//            .underline(true, color: Color.red)
//            .italic()
//            .strikethrough(true, color: Color.green)
//            .font(.system(size: 24, weight: .semibold, design: .monospaced))
//            .baselineOffset(50.0
//                .kerning(10.0)
//                .padding(15.0)
            .multilineTextAlignment(.leading)
            .foregroundColor(.green)
    }
}

struct TextBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        TextBootcamp()
    }
}
 
