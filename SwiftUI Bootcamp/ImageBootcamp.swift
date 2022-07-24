//
//  ImageBootcamp.swift
//  SwiftUI Bootcamp
//
//  Created by Ismail on 24/07/2022.
//

import SwiftUI

struct ImageBootcamp: View {
    var body: some View {
        Image("logo")
//            .renderingMode(.template) //change the color of custom icons - works with transparent background images
            .resizable()
//            .aspectRatio(contentMode: .fill)
//            .scaledToFit()
            .scaledToFill()
            .frame(width: 300, height: 200)
            .foregroundColor(.red)
//            .clipped()
//            .cornerRadius(100)
            .clipShape(
                Circle()
//                RoundedRectangle(cornerRadius: 25.0)
//                Ellipse()
            )
    }
}

struct ImageBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ImageBootcamp()
    }
}
