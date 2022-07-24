//
//  System Icons.swift
//  SwiftUI Bootcamp
//
//  Created by Ismail on 23/07/2022.
//

import SwiftUI

struct System_Icons: View {
    var body: some View {
        Image(systemName: "person.fill.badge.plus")
            .renderingMode(.original)
            .font(.largeTitle)
        //            .resizable()
        //            .aspectRatio(contentMode: .fit)
        //            .scaledToFit()
        //            .scaledToFill()
        //            .font(.caption)
        //            .font(.system(size: 200))
        //            .foregroundColor(.orange)
        //            .frame(width: 300, height: 300)
        //            .clipped()
    }
}

struct System_Icons_Previews: PreviewProvider {
    static var previews: some View {
        System_Icons()
    }
}
