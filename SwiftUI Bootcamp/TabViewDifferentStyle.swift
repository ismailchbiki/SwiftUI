//
//  TabViewDifferentStyle.swift
//  SwiftUI Bootcamp
//
//  Created by Ismail on 28/08/2022.
//

import SwiftUI

//an example of scrolling instagram posts (left & right)
//if selection is added, the tags should also be added to the TabItems
struct TabViewDifferentStyle: View {
    
    let icons: [String] = [
        "heart.fill", "globe", "house.fill", "person.fill"
    ]
    var body: some View {
        TabView{
            //RoundedRectangle as an example to get the idea
            //RoundedRectangle(cornerRadius: 25.0)
            //.foregroundColor(.red)
            //RoundedRectangle(cornerRadius: 25.0)
            //RoundedRectangle(cornerRadius: 25.0)
            //.foregroundColor(.green)
            
            ForEach(icons, id: \.self){
                icon in Image(systemName: icon)
                    .resizable()
                    .scaledToFit()
                    .padding(30)
            }
        }
        .background(Color.red)
        .frame(height: 300)
        .tabViewStyle(PageTabViewStyle())
        .cornerRadius(8)
    }
}

struct TabViewDifferentStyle_Previews: PreviewProvider {
    static var previews: some View {
        TabViewDifferentStyle()
    }
}

