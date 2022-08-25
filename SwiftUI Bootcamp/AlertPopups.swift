//
//  AlertPopups.swift
//  SwiftUI Bootcamp
//
//  Created by Ismail on 24/08/2022.
//

import SwiftUI

@available(iOS 15.0, *)
struct AlertPopups: View {
    
    @State var showAlert: Bool = false
    
    //different alerts based on the clicked button
    //    @State var alertTitle: String = ""
    //    @State var alertMessage: String = ""
    
    //of type enum (question ? mark to make this var optional)
    @State var alertType: MyAlerts? = nil
    
    @State var myCustomColor: Color = Color.yellow
    
    enum MyAlerts {
        case success
        case error
    }
    
    var body: some View {
        ZStack {
            
            myCustomColor.edgesIgnoringSafeArea(.all)
            VStack {
                //multiple buttons to show different alerts based on the clicked button
                //                Button("Click Here") {
                //                    alertTitle = "Hi"
                //                    alertMessage = "How are ya 🤪 ?" //ctrl + cmd + spacebar -> emojis
                //                    showAlert.toggle()
                //                }
                //                .padding()
                
                //                Button("Click Here Again") {
                //                    alertTitle = "Hi again"
                //                    alertMessage = "How are you doing again 😁 ?"
                //                    showAlert.toggle()
                //                }
                
                //buttons with enum
                Button("Click Here") {
                    alertType = .success
                    showAlert.toggle()
                }
                .padding()
                
                Button("Click Here") {
                    alertType = .error
                    showAlert.toggle()
                }
                
                
                //        .alert("Title Here", isPresented: $showAlert) {
                //
                //        } message: {
                //            Text("Write your message here")
                //        }
            }
            //alert with different content
            //        .alert(isPresented: $showAlert, content: {
            //            Alert(title: Text("This is the title"), message: Text("Here is the error description"), primaryButton: .destructive(Text("DELETE")), secondaryButton: .cancel())
            //        })
            
            //alert with different content and custom action button
            .alert(isPresented: $showAlert, content: {
                //a custom return type alert function
                getAlert()
            })
        }
    }
    
    //function of a return type (returns Alert)
    func getAlert() -> Alert {
        //        return Alert(title: Text("This is the title"), message: Text("Here is the error description"), primaryButton: .destructive(Text("DELETE"), action: {
        //            changeColor()
        //        }), secondaryButton: .cancel())
        
        //another example (multiple buttons)
        //        return Alert(title: Text(alertTitle), message: Text(alertMessage), dismissButton: .default(Text("OK")))
        
        //another example (multiple buttons with enums)
        switch alertType{
        case .error:
            return Alert(title: Text("Error case"))
        case .success:
            return Alert(title: Text("Success Case"), message: nil, dismissButton: .destructive(Text("OK"), action: {
                myCustomColor = Color.red
            }))
        default:
            return Alert(title: Text("ERROR"))
        }
        
    }
    
    func changeColor(){
        myCustomColor = Color.red
    }
}

@available(iOS 15.0, *)
struct AlertPopups_Previews: PreviewProvider {
    static var previews: some View {
        AlertPopups()
    }
}
