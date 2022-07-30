//
//  SpacerBootcamp.swift
//  SwiftUI Bootcamp
//
//  Created by Ismail on 27/07/2022.
//

import SwiftUI

struct SpacerBootcamp: View {
    var body: some View {
        VStack {
            HStack(spacing: 0){
                //            Spacer(minLength: 0)
                //                .frame(height: 10)
                //                .background(Color.orange)
                //            Rectangle()
                //                .frame(width: 50, height: 50)
                //
                //            //            Spacer()
                //            //                .frame(height: 10)
                //            //                .background(Color.orange)
                //
                //            Spacer()
                //                .frame(height: 10)
                //                .background(Color.orange)
                //
                //            Rectangle()
                //                .fill(Color.red)
                //                .frame(width: 50, height: 50)
                //
                //            Spacer()
                //                .frame(height: 10)
                //                .background(Color.orange)
                //
                //            Rectangle()
                //                .fill(Color.green)
                //                .frame(width: 50, height: 50)
                //            Spacer(minLength: 0)
                //                .frame(height: 10)
                //                .background(Color.orange)
                
                //Before ending this chapter:
                Image(systemName: "xmark")
                //                .margin(top: 0)
                Spacer()
                //                    .frame( height: 10)
                //                    .background(Color.orange)
                Image(systemName: "gear")
                
            }
            .font(.title)
            //            .background(Color.yellow)
            .padding(.horizontal)
            Spacer()
            //                .frame( width: 10)
            //                .background(Color.orange)
            
            Rectangle()
                .frame( height: 55)
            
        }
        //        .background(Color.yellow)
    }
}

struct SpacerBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        SpacerBootcamp()
    }
}
