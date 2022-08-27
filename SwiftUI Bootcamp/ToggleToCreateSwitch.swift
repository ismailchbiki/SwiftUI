//
//  ToggleToCreateSwitch.swift
//  SwiftUI Bootcamp
//
//  Created by Ismail on 27/08/2022.
//

import SwiftUI

struct ToggleToCreateSwitch: View {
    
    @State var toggleIsOn: Bool = false
    
    var body: some View {
        VStack {
            
            HStack{
                Text("Status:")
                Text(toggleIsOn ? "Online" : "Offline")
            }
            .font(.title)
            
            Toggle(isOn: $toggleIsOn) {
                Text("Change Status")
            }
            //to style the toggle button
            .toggleStyle(SwitchToggleStyle(tint: Color.green))
            
//            Button {
//                toggleIsOn.toggle()
//            } label: {
//                Text("Toggle me")
//            }
            
            Spacer()
        }
        .padding()
    }
}

struct ToggleToCreateSwitch_Previews: PreviewProvider {
    static var previews: some View {
        ToggleToCreateSwitch()
    }
}
