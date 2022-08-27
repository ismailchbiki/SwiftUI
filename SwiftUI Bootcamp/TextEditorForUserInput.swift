//
//  TextEditorForUserInput.swift
//  SwiftUI Bootcamp
//
//  Created by Ismail on 27/08/2022.
//

import SwiftUI

struct TextEditorForUserInput: View {
    
    @State var userInput: String = "Type something here..."
    @State var inputData: [String] = []
    
    var body: some View {
        NavigationView {
            VStack {
                TextEditor(text: $userInput)
                    .frame(height: 250)
                    .foregroundColor(Color.blue)
                Button {
                    saveUserInput()
                } label: {
                    Text("Save".uppercased())
                        .font(.headline)
                        .foregroundColor(Color.white)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.blue)
                        .cornerRadius(10)
                        .padding(.vertical)
                }
                
                Text("User Input")
                //\.self will provides an id for every item in the array
                ForEach(inputData, id: \.self) { input in
                    Text(input.capitalized)
                        .font(.headline)
                        .padding(.vertical, 3)
                }
                Spacer()
            }
            .padding()
            .background(Color.yellow)
            .navigationTitle("Text Editor")
        }
    }
    
    func saveUserInput(){
        inputData.append(userInput)
    }
}

struct TextEditorForUserInput_Previews: PreviewProvider {
    static var previews: some View {
        TextEditorForUserInput()
    }
}
