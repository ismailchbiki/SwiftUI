//
//  FrameBootcamp.swift
//  SwiftUI Bootcamp
//
//  Created by Ismail on 24/07/2022.
//

import SwiftUI

struct FrameBootcamp: View {
    var body: some View {
        //building frames on top of each other
        Text("Hello, World! World")
            .background(Color.yellow) // of the "Hello World" item
        //            .frame(width: 300, height: 300, alignment: .leading)
        //            .frame(width: 300, height: 300, alignment: .center)
            .frame(width: 150, height: 150)
            .background(Color.green) // to the previous line
            .frame(width: 300, height: 300)
            .background(Color.red)
            .frame(maxHeight: .infinity, alignment: .top)
            .background(Color.blue)
            .cornerRadius(25)
    }
}

struct FrameBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        FrameBootcamp()
    }
}
