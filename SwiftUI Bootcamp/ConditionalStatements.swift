//
//  ConditionalStatements.swift
//  SwiftUI Bootcamp
//
//  Created by Ismail on 19/08/2022.
//

import SwiftUI

struct ConditionalStatements: View {
    
    @State var showCircle: Bool = false
    @State var isLoading: Bool = false
    
    var body: some View {
        
        VStack(spacing: 20){
            
            Button("IS LOADING: \(isLoading.description)"){
                isLoading.toggle()
            }
            
            //loading animation
            if isLoading {
                ProgressView()
            }else{
                //app content
            }
            
            //            Button("Circle Button: \(showCircle.description)"){
            //                showCircle.toggle()
            //            }
            //
            //            if showCircle {
            //                Circle()
            //                    .frame(width: 100, height: 100)
            //            }
            //            else{
            //                Rectangle()
            //                    .frame(width: 100, height: 100)
            //            }
            //
            //            Spacer()
        }
    }
}

struct ConditionalStatements_Previews: PreviewProvider {
    static var previews: some View {
        ConditionalStatements()
    }
}
