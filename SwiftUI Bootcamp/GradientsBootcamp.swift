//
//  GradiantsBootcamp.swift
//  SwiftUI Bootcamp
//
//  Created by Ismail on 23/07/2022.
//

import SwiftUI

struct GradiantsBootcamp: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 20)
            .fill(
                //                Color("CustomColor")
                //                Color.red
                //                LinearGradient(
                //                    gradient: Gradient(colors: [.blue, .red, .yellow, .green]),
                //                    startPoint: .topLeading,
                //                    endPoint: .bottomTrailing)
                //                RadialGradient(
                //                    colors: [.red, .blue],
                //                    center: .topLeading,
                //                    startRadius: 5,
                //                    endRadius: 400)
                AngularGradient(
                    gradient: Gradient(colors: [.red, .blue]),
                    center: .topLeading,
                    angle: .degrees(180 + 45))
            )
            .frame(width: 300, height: 200)
    }
}

struct GradiantsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        GradiantsBootcamp()
        
    }
}
