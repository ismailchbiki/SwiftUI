//
//  NavigationView&Link.swift
//  SwiftUI Bootcamp
//
//  Created by Ismail on 21/08/2022.
//

import SwiftUI

struct NavigationView_Link: View {
    var body: some View {
        
        //Naviagtion to navigate through screens
        //NEVER ADD A NAVIGATIONVIEW INSIDE ANOTHER
        NavigationView{
            ScrollView{
                
                HStack{
                    
                    Spacer()
                    
                    NavigationLink(
                        "Messages",
                        destination: SecondScreenView()
                    )
                    
                    Spacer()
                    
                    NavigationLink(
                        "Chat",
                        destination: SecondScreenView()
                    )
                    
                    Spacer()
                    
                    NavigationLink(
                        "Phone",
                        destination: SecondScreenView()
                    )
                    
                    Spacer()
                    
                    NavigationLink(
                        "Play",
                        destination: SecondScreenView()
                    )
                    
                    Spacer()
                }
            }
            
            .navigationTitle("All Inboxes")
            //.automatic: title will go the center when scrolling up
            //.navigationBarTitleDisplayMode(.automatic)
            //.navigationBarHidden(true) //this is to hide the title
            
            .navigationBarItems(
                leading: HStack{
                    Image(systemName: "person.fill")
                    NavigationLink(
                        destination: SecondScreenView(),
                        label: {
                            Image(systemName: "flame.fill")
                        }).accentColor(.green)
                },
                
                trailing: NavigationLink(
                    destination: SecondScreenView(),
                    label: {Image(systemName: "gear")
                    })
                .accentColor(.red) //to change the default blue color
            )
        }
    }
}

//second screen
struct SecondScreenView: View {
    
    //presentationMode to go directly back to the home page from any screen
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View{
        ZStack{
            
            Color.green.edgesIgnoringSafeArea(.all)
                .navigationTitle("Green Screen")
            //                .navigationBarHidden(true)
            
            //thrid screen.. and so on
            //there can be added as many screens as possible and adding nav links to them
            VStack{
                Button("GO BACK") {
                    presentationMode.wrappedValue.dismiss()
                }
                NavigationLink(
                    "Click here",
                    destination: Text("3rd Screen")
                )
            }
        }
    }
}

struct NavigationView_Link_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView_Link()
    }
}
