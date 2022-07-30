//
//  SafeAreaBootcamp.swift
//  SwiftUI Bootcamp
//
//  Created by Ismail on 30/07/2022.
//

import SwiftUI

struct SafeAreaBootcamp: View {
    var body: some View {
        //TECHNIQUE 1:
        //        To have to background color ignores the safe area, use ZStack and split back and foreground
        //        ZStack {
        //            //background layer
        //            Color.blue
        //                .edgesIgnoringSafeArea(.all)
        //            //ignore safe area should only be applied to the background and not the screen items
        //
        //            //foreground layer
        //            VStack {
        //                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
        //                Spacer()
        //            }
        //            .frame(maxWidth: .infinity, maxHeight: .infinity)
        //            .background(Color.orange)
        //        }
        
        //TECHNIQUE 2: More efficient and easy
        ScrollView{
            VStack {
                Text("Title Goes here")
                    .font(.title)
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                ForEach(0..<10, content: {
                    index in
                    RoundedRectangle(cornerRadius: 25.0)
                        .fill(Color.white)
                        .frame( height: 150)
                        .shadow(radius: 10)
                        .padding(20)
                })
            }
        }
        //.background(Color.red)
        .background(
            Color.blue
            //.edgesIgnoringSafeArea(.all) //old method (Deprecated)
                .ignoresSafeArea(edges: .vertical) //new method .all edges by default
        )
    }
}

struct SafeAreaBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        SafeAreaBootcamp()
    }
}
