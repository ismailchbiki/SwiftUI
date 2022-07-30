//
//  LazyVGridBootcamp.swift
//  SwiftUI Bootcamp
//
//  Created by Ismail on 30/07/2022.
//

import SwiftUI

struct LazyVGridBootcamp: View {
    let columns: [GridItem] = [
        //        GridItem(.fixed(50), spacing: nil, alignment: nil)
        //        GridItem(.adaptive(minimum: 10, maximum: 300), spacing: nil, alignment: nil)
        GridItem(.flexible(), spacing: 6, alignment: nil), //this is the most commonly used
        GridItem(.flexible(), spacing: 6, alignment: nil),
        GridItem(.flexible(), spacing: 6, alignment: nil)
    ]
    var body: some View {
        ScrollView {
            //Instagram layout
            //            Rectangle()
            //                .fill(Color.white)
            //                .frame(height: 300)
            
            //            LazyVGrid(columns: columns) {
            //                ForEach(0..<50, content: {index in
            //                    Rectangle()
            //                        .frame( height: 150)
            //                })
            //            }
            
            //different layout (Also instagram)
            
            Rectangle()
                .fill(Color.orange)
                .frame( height: 400)
            LazyVGrid(
                columns: columns,
                alignment: .center,
                spacing: 6,
                pinnedViews: [.sectionHeaders], //to fix the header from scrolling up
                content: {
                    Section(header:
                                Text("Section 1") //section will scroll up when scrolling
                        .foregroundColor(Color.white)
                        .font(.title)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .background(Color.blue)
                        .padding()
                            
                    ) {
                        ForEach(0..<20, content: {index in
                            Rectangle()
                                .frame( height: 150)
                        })
                    }
                    
                    Section(header:
                                Text("Section 2") //section will scroll up when scrolling
                        .foregroundColor(Color.white)
                        .font(.title)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .background(Color.red)
                        .padding()
                    ) {
                        ForEach(0..<20, content: {index in
                            Rectangle()
                                .fill(Color.green)
                                .frame( height: 150)
                        })
                    }
                })
        }
    }
}

struct LazyVGridBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        LazyVGridBootcamp()
    }
}
