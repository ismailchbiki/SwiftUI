//
//  TextFieldUsage.swift
//  SwiftUI Bootcamp
//
//  Created by Ismail on 27/08/2022.
//

import SwiftUI

struct TextFieldUsage: View {
    
    @State var username: String = ""
    @State var dataArray: [String] = []
    
    var body: some View {
        ZStack {
            Color.gray.edgesIgnoringSafeArea(.all)
            NavigationView {
                VStack {
                    //username is bound to the text field input
                    TextField("Type something here...", text: $username)
                        .padding(.all, 10)
                    //.textFieldStyle(RoundedBorderTextFieldStyle())
                        .background(Color.white.opacity(0.9))
                        .foregroundColor(Color.primary)
                        .font(.headline)
                        .cornerRadius(3)
                        .padding(.horizontal, 10)
                        .frame(width: 370)
                    
                    //margins of the text field
                    Spacer().frame(height: 20)
                    
                    Button {
                        //don't add to the array if:
                        //no input is provided OR input is invalid
                        if username.isEmpty || !valideInput() {
                            return
                        }
                        
                        saveText(name: username)
                        username = ""
                    } label: {
                        Text("Save")
                    }
                    .foregroundColor(Color.primary)
                    .padding(.all, 10)
                    //.frame(maxWidth: .infinity)
                    .padding(.horizontal, 140)
                    .background( valideInput() ? Color.yellow : Color.gray)
                    .cornerRadius(8)
                    //disable button when the input is not valid
                    .disabled(!valideInput())
                    
                    //margins of the Button
                    Spacer().frame(height: 20)
                    
                    //Output:
                    VStack {
                        Text("Your name is:")
                            .padding()
                        //\.self will provides an id for every item in the array
                        ForEach(dataArray, id: \.self) { name in
                            Text(name.capitalized)
                                .font(.headline)
                                .padding(.vertical, 3)
                        }
                    }
                    Spacer()
                }
                .padding()
                .navigationTitle(Text("Title Here"))
            }
        }
    }
    
    //\.self will provides an id for every item in the array
    //    ForEach(fruits, id: \.self) { fruit in
    //        Text(fruit.capitalized)
    //            .font(.caption)
    //            .foregroundColor(.white)
    //
    //        //this will not cover the whole row background color (right way to do that is outside of the foreach loop - listRowBackground())
    //        //                            .frame(maxWidth: .infinity, maxHeight: .infinity)
    //        //                            .background(Color.pink)
    //    }
    
    //save input to an array
    func saveText(name: String){
        dataArray.append("\(name)")
    }
    
    //validate input text
    func valideInput() -> Bool {
        //check text
        if username.count >= 3 {
            return true
        }
        return false
    }
}

struct TextFieldUsage_Previews: PreviewProvider {
    static var previews: some View {
        TextFieldUsage()
    }
}
