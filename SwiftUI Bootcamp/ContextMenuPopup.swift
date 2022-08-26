//
//  ContextMenuPopup.swift
//  SwiftUI Bootcamp
//
//  Created by Ismail on 26/08/2022.
//

import SwiftUI

struct ContextMenuPopup: View {
    
    @State var backgroundColor: Color = Color.green
    
    var body: some View {
        //alignment can also be added using: Show SwiftUI Inspector
        ZStack {
            Color.purple.edgesIgnoringSafeArea(.all)
            VStack(alignment: .leading, spacing: 10.0){
                Image(systemName: "house.fill")
                    .font(.title)
                Text("ismailchbiki.com")
                    .font(.headline)
                Text("User Guide")
                    .font(.subheadline)
            }
            .foregroundColor(Color.white)
            .padding()
            .background(backgroundColor)
            .cornerRadius(10)
            //click and hold the item on the screen to show the menu
            .contextMenu {
                Button {
                    //code for onClick event here
                    backgroundColor = Color.blue
                } label: {
                    Label("Share Post", systemImage: "flame.fill")
                }
                
                Button {
                    //code here
                    backgroundColor = Color.red
                } label: {
                    Text("Report Post")
                }
                
                Button {
                    //code here
                    backgroundColor = Color.yellow
                } label: {
                    HStack {
                        Text("Like Post")
                        Image(systemName: "heart.fill")
                    }
                }
        }
        }
    }
}

struct ContextMenuPopup_Previews: PreviewProvider {
    static var previews: some View {
        ContextMenuPopup()
    }
}
