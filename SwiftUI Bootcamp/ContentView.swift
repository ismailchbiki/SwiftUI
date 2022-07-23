//
//  ContentView.swift
//  SwiftUI Bootcamp
//
//  Created by Ismail on 13/07/2022.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        Text("Title here")
            .font(.title)
            .fontWeight(.black)
            .foregroundColor(Color.green)
            .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
