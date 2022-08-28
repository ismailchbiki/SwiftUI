//
//  TabViewBoot.swift
//  SwiftUI Bootcamp
//
//  Created by Ismail on 28/08/2022.
//

import SwiftUI

//Changing variables state from different views work more or less same as React functional components

struct TabViewBoot: View {
    
    @State var selectedTab: Int = 0
    
    var body: some View {
        //Initializing a TabView without any parameters
//        TabView {
//            //code for the Home Tab (it's extracted to a SubView)
//            HomeView()
//            //tab item on bottom of the screen (for the extracted View)
//            .tabItem {
//                //Label("Title", image: "heart.fill")
//                //cleaner way to write a label (typing manually)
//                Image(systemName: "house.fill")
//                Text("Home")
//            }
//
//            //code for the Browse Tab
//            Text("BROWSE TAB")
//
//            //tab item on bottom of the screen
//                .tabItem {
//                    Image(systemName: "globe")
//                    Text("Browse")
//                }
//            Text("PROFILE TAB")
//                .tabItem {
//                    Image(systemName: "person")
//                    Text("Profile")
//                }
//        }
//        .accentColor(.red)
        
        
        //Initializing a TabView with parameters
        TabView(selection: $selectedTab) {
            //code for the Home Tab (it's extracted to a SubView)
            HomeView(selectedTab: $selectedTab)
            //tab item on bottom of the screen (for the extracted View)
            .tabItem {
                //Label("Title", image: "heart.fill")
                //cleaner way to write a label (typing manually)
                Image(systemName: "house.fill")
                Text("Home")
            }
            .tag(0)
            
            //code for the Browse TabView
            Text("BROWSE TAB")
            
            //tab item on bottom of the screen
                .tabItem {
                    Image(systemName: "globe")
                    Text("Browse")
                }
                .tag(1)
            
            //code for the Browse TabView
            Text("PROFILE TAB")
            
            //tab item on bottom of the screen
                .tabItem {
                    Image(systemName: "person")
                    Text("Profile")
                }
                .tag(2)
        }
        .accentColor(.red)
    }
}

struct TabViewBoot_Previews: PreviewProvider {
    static var previews: some View {
        TabViewBoot()
    }
}

//ExtractedView
struct HomeView: View {
    
    //@Binding to control any variable in the targeted view
    @Binding var selectedTab: Int
    
    var body: some View {
        ZStack {
            Color.red.edgesIgnoringSafeArea(.top)
            VStack {
                Text("Home Tab")
                    .foregroundColor(.white)
                .font(.title)
                Button {
                    //code to execute here
                    goToProfile()
                } label: {
                    Text("Profile")
                        .foregroundColor(.primary)
                        .font(.headline)
                        .padding()
                        .background(Color.yellow)
                        .cornerRadius(8)
                }
            }
        }
    }
    
    func goToProfile(){
        selectedTab = 2
    }
}
