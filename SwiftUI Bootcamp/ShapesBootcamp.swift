//
//  ShapesBootcamp.swift
//  SwiftUI Bootcamp
//
//  Created by Ismail on 22/07/2022.
//

import SwiftUI

struct ShapesBootcamp: View {
    var body: some View {
//        Circle()
//        Ellipse()
//        Capsule(style: .continuous)
//        Rectangle()
        RoundedRectangle(cornerRadius: 20)
//        .fill(Color.green)
//        .foregroundColor(.pink)
//            .stroke()
//            .stroke(Color.red)
//            .stroke(Color.blue, lineWidth: 30)
//            .strokeBorder(Color.orange, style: StrokeStyle(lineWidth: 20, lineCap: .round, dash: [20]))
//            .trim(from:  0.2, to: 1.0)
//            .stroke(Color.purple, lineWidth: 50)
            .frame(width: 300, height: 200)
    }
}

struct ShapesBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ShapesBootcamp()
    }
}

