//
//  Padding&SpacerBootcamp.swift
//  SwiftUI Bootcamp
//
//  Created by Ismail on 27/07/2022.
//

import SwiftUI

struct Padding_SpacerBootcamp: View {
    var body: some View {
        
        VStack(alignment: .leading) {
            Text("Real world Example")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .padding(.bottom, 20)
            
            Text("This is another text to align the text to the leading edge")
            
        }
        .padding()
        .padding(.vertical, 10)
        .background(
            Color.white
                .cornerRadius(20)
                .shadow(color: Color.black.opacity(0.3), radius: 10, x: 0.0, y: 10.0)
            
        )
        .padding(.horizontal, 10)
        
        
        //        .background(Color.blue)
        //        .padding()
        //        .background(Color.green)
        //        .padding(.horizontal, 10)
        //        .frame(maxWidth: .infinity)
        //        .background(Color.pink)
        
        
        //            .frame(maxWidth: .infinity, alignment: .leading)
        //            .padding(.leading, 30)
        //            .background(Color.green)
        //        Text("Hello, World. I am doing padding!")
        ////            .frame(width: 100, height: 100)
        //            .background(Color.yellow)
        ////            .padding(30) shorter version
        //            .padding(.all, 20)
        //            .padding(.leading, 30) //adding padding to the previous padding
        //            .background(Color.blue)
        
    }
}

struct Padding_SpacerBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        Padding_SpacerBootcamp()
    }
}
