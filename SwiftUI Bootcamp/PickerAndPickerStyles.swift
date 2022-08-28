//
//  PickerAndPickerStyles.swift
//  SwiftUI Bootcamp
//
//  Created by Ismail on 27/08/2022.
//

import SwiftUI

struct PickerAndPickerStyles: View {
    
    @State var selection: String = "Most Recent"
    let filterOptions: [String] = ["Most Recent", "Most Popular", "Most Liked"]
    
    //Overriding SegmentedPickerStyle() which is imported from UIKit
    //init functions run when the view is created
    init(){
        //more customizable options
        //(when this one is called, it will update all the SegmtededControls in the app)
        UISegmentedControl.appearance().selectedSegmentTintColor = UIColor.red
        
        //variable to hold the attributes
        let attributes: [NSAttributedString.Key:Any] = [
            //options to custom the text
            //(UIColor because it's imported from UIKit - Color.white would crush)
            .foregroundColor : UIColor.white
        ]
        //.selected to tell when the color should apply to a screen item
        UISegmentedControl.appearance().setTitleTextAttributes(attributes, for: .selected)
    }
    
    var body: some View {
        
        //Example Picker 3 (good to be used when they are only 2 or 3 options to select from)
        Picker(
            selection: $selection,
            label: Text("Picker"),
            content: {
                //ForEach(filterOptions, id: \.self) { option in
                //Text(option)
                //}
                
                //relying on the array indexes instead
                ForEach(filterOptions.indices) { index in
                    Text(filterOptions[index]).tag(filterOptions[index])
                }
            })
        
        //horizantal layout
        .pickerStyle(SegmentedPickerStyle())
//        .background(Color.red)
        .cornerRadius(8)
        .padding()
        
        //Example Picker 2
        
        //        Picker(
        //            selection: $selection,
        //            label:
        //                HStack {
        //                    Text("Filter")
        //                    Text(selection)
        //                }
        //                .font(.headline)
        //                .foregroundColor(.white)
        //                .background(Color.blue)
        //                .padding()
        //                .padding(.horizontal)
        //                .cornerRadius(10)
        //                .shadow(
        //                    color: Color.blue.opacity(0.3),
        //                    radius: 10,
        //                    x: 0,
        //                    y: 10)
        //            ,
        //            content:{
        //                //Text("1").tag(1)
        //                //id: gives and id to each item
        //                ForEach(filterOptions, id: \.self) { option in
        //                    HStack {
        //                        Text(option.capitalized)
        //                        Image(systemName: "heart.fill")
        //                            .font(.headline)
        //                            .padding(.vertical, 3)
        //                        //the tag is necessary to update the selection
        //                    }
        //                    .tag(option)
        //                }
        //            })
        
        //Example Picker 1
        
        //            Picker(
        //                selection: $selection){
        //                    //Content
        //                    //                    Text("1").tag("1")
        //                    //                    Text("2").tag("2")
        //                    //                    Text("3").tag("3")
        //                    //                    Text("4").tag("4")
        //                    //                    Text("5").tag("5")
        //                    //                    ...
        //
        //                    //foreach loop with a range
        //                    ForEach(18..<100) { number in
        //                        Text("\(number)")
        //                            .font(.headline)
        //                            .foregroundColor(.black)
        //                            .tag("\(number)")
        //                    }
        //                }
        //        label: {
        //            HStack {
        //                Text("Picker")
        //                Text(selection)}}
        
        //        .pickerStyle(WheelPickerStyle())
        //        .pickerStyle(MenuPickerStyle())
    }
}

struct PickerAndPickerStyles_Previews: PreviewProvider {
    static var previews: some View {
        PickerAndPickerStyles()
    }
}

