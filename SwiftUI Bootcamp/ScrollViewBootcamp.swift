//
//  ScrollViewBootcamp.swift
//  SwiftUI Bootcamp
//
//  Created by Ismail on 30/07/2022.
//

import SwiftUI

struct ScrollViewBootcamp: View {
    var body: some View {
        //Embedding scrollviews inside another scrollView
        ScrollView{
            LazyVStack{ //in case of big data retrieving (fetch only the data that is shown on the screen)
                ForEach(0..<10){
                    index in
                    ScrollView(.horizontal, showsIndicators: false, content: {
                        LazyHStack{ //in case of big data retrieving (fetch only the data that is shown on the screen)
                            ForEach(0..<20){index in
                                RoundedRectangle(cornerRadius: 25.0)
                                    .fill(.white)
                                    .frame(width: 200, height: 150)
                                    .shadow(radius: 10)
                                    .padding()
                            }
                            RoundedRectangle(cornerRadius: 25.0)
                                .fill(.white)
                                .frame(width: 200, height: 150)
                                .shadow(radius: 10)
                                .padding()
                        }
                    })
                    
                }
            }
        }
        //        ScrollView(.vertical, showsIndicators: true, content: {
        //            VStack{
        //                ForEach(0..<50){
        //                    index in
        //                    Rectangle()
        //                        .fill(.blue)
        //                        .frame(width: 300, height: 300)
        //                }
        //            }
        //        })
    }
}

struct ScrollViewBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ScrollViewBootcamp()
    }
}
