//
//  ExtractSubViews.swift
//  SwiftUI Bootcamp
//
//  Created by Ismail on 18/08/2022.
//

import SwiftUI

struct ExtractSubViews: View {
    var body: some View {
        ZStack{
            Color.blue.edgesIgnoringSafeArea(.all)
            
            //Content area (extracted to reusable)
            VStack{
                myContent
                myContent
                myContent
            }
        }
    }
    
    var myContent: some View{
        //subView (MyItem) with dynamic data
        HStack{
            //reusable subViews
            MyItem(title: "Apples", count: 2, color: .red)
            MyItem(title: "Oranges", count: 3, color: .orange)
            MyItem(title: "Bananas", count: 5, color: .yellow)
        }
    }
}

struct ExtractSubViews_Previews: PreviewProvider {
    static var previews: some View {
        ExtractSubViews()
    }
}


//custom subView:
//like extracting function and reusable components, extracting whole view into a subView
struct MyItem: View {
    
    let title: String
    let count: Int
    let color: Color
    
    var body: some View {
        VStack{
            //for integers inside Strings
            Text("\(count)")
            Text(title)
        }
        .padding()
        .background(color)
        .cornerRadius(10)
    }
}
