//
//  ForEachBootcamp.swift
//  SwiftUI Bootcamp
//
//  Created by Ismail on 30/07/2022.
//

import SwiftUI

struct ForEachBootcamp: View {
    
    let data: [String] = ["Hi", "Hello", "Hi Everyone"]
    let myString: String = "Hello"
    
    var body: some View {
        VStack(){
//            ForEach(0..<10) { index in
//                //                Text("Hi: \(index)")
//                HStack {
//                    Circle()
//                        .frame(width: 30, height: 30)
//                    Text("Index is: \(index)")
//                }
//            }
            ForEach(data.indices) { index in
                Text("\(data[index]): \(index)")
            }
        }
    }
}

struct ForEachBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ForEachBootcamp()
    }
}
