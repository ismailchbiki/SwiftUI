//
//  StacksBootcamp.swift
//  SwiftUI Bootcamp
//
//  Created by Ismail on 27/07/2022.
//

import SwiftUI

struct StacksBootcamp: View {
    // Vstacks -> Vertical
    // Hstacks => Horizontal
    // Zstacks => zIndex (back to front)
    var body: some View {
        
        //Real world example using stacks
        ZStack {
            VStack(alignment: .center, spacing: 10){
                Text("5")
                    .font(.largeTitle)
                    .underline()
                Text("Items in your cart")
                    .font(.title)
                    .foregroundColor(Color.green)
                
            }
            .padding(30)
        }
        .background(Color.pink)
        .cornerRadius(15)
        
        //3rd PRACTICE (stacks inside other stacks)
        //        ZStack(alignment: .trailing){  //zstack is in the background
        //            Rectangle()
        //                .fill(Color.yellow)
        //                .frame(width: 350, height: 500, alignment: .center)
        //            VStack {
        //                Rectangle()
        //                    .fill(Color.red)
        //                    .frame(width: 100, height: 100)
        //
        //                HStack {
        //                    Rectangle()
        //                        .fill(Color.orange)
        //                        .frame(width: 100, height: 100)
        //                    Rectangle()
        //                        .fill(Color.orange)
        //                        .frame(width: 100, height: 100)
        //                    Rectangle()
        //                        .fill(Color.orange)
        //                        .frame(width: 100, height: 100)
        //                }
        //                .background(Color.pink)
        ////                .frame(width: 300, height: 300)
        //
        //                Rectangle()
        //                    .fill(Color.green)
        //                    .frame(width: 100, height: 100)
        //
        //
        //            }
        //            .background(Color.black)
        //        }
        
        //2nd PRACTICE with alignment
        //        ZStack(alignment: .bottom, content: {
        //            Rectangle()
        //                .fill(Color.red)
        //                .frame(width: 200, height: 200)
        //
        //            Rectangle()
        //                .fill(Color.green)
        //                .frame(width: 150, height: 150)
        //
        //            Rectangle()
        //                .fill(Color.orange)
        //                .frame(width: 100, height: 100)
        //        })
        
        
        //1st PRACTICE
        //        VStack {
        //            Rectangle()
        //                .fill(Color.red)
        //                .frame(width: 100, height: 100)
        //
        //            Rectangle()
        //                .fill(Color.green)
        //                .frame(width: 100, height: 100)
        //
        //            Rectangle()
        //                .fill(Color.orange)
        //                .frame(width: 100, height: 100)
        //        }
    }
}

struct StacksBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        StacksBootcamp()
    }
}
