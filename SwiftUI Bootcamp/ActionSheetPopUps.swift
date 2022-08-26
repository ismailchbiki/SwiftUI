//
//  ActionSheetPopUps.swift
//  SwiftUI Bootcamp
//
//  Created by Ismail on 26/08/2022.
//

import SwiftUI

//Instagram post template
struct ActionSheetPopUps: View {
    
    @State var showActionSheet: Bool = false
    @State var actionSheetOption: ActionSheetOptions = .isOtherPost
    
    enum ActionSheetOptions{
        case isMyPost
        case isOtherPost
    }
    
    var body: some View {
        VStack {
            HStack{
                //left side
                Circle()
                    .frame(width: 30, height: 30)
                Text("@username")
                Spacer()
                
                //right side
                Button {
                    actionSheetOption = .isOtherPost
                    showActionSheet.toggle()
                } label: {
                    Image(systemName: "ellipsis") //three dots
                }
                .accentColor(.primary)
            }
            .padding(.horizontal)
            
            Rectangle()
                .aspectRatio(1.0, contentMode: .fit)
                .padding(.vertical)
        }
        
        //less options
        //        .actionSheet(isPresented: $showActionSheet) {
        //            ActionSheet(title: Text("Action sheet Title"), message: Text("This is the action sheet Body"))
        //        }
        
        //same as above code but with extracted functions
        .actionSheet(isPresented: $showActionSheet) {
            getActionSheet()
        }
    }
    
    //Custom function
    func getActionSheet() -> ActionSheet  {
        //less options
        //return ActionSheet(title: Text("Action sheet Title"), message: Text("This is the action sheet Body"))
        
        
        //buttons in the Action sheet with more options
        //        let button1: ActionSheet.Button = .default(Text("DEFAULT"))
        //        let button2: ActionSheet.Button = .destructive(Text("DESTRACTIVE"))
        //        let button3: ActionSheet.Button = .cancel()
        //
        //        //more options in ActionSheet
        //        return ActionSheet(
        //            title: Text("Title Here"),
        //            message: Text("Description Here"),
        //            buttons: [button1, button1, button1, button1, button2, button3])
        
        
        //Instagram template action sheet
        let shareButton: ActionSheet.Button = .default(Text("Share")) {
            //add code to share post
        }
        let reportButton: ActionSheet.Button = .destructive(Text("Report")) {
            //code to report this post
        }
        let deleteButton: ActionSheet.Button = .destructive(Text("Delete")) {
            //code to delete post
        }
        let cancelButton: ActionSheet.Button = .cancel()
        
        //let title: String = "What would like you to do ?"
        let title = Text("What would like you to do ?") //written differently
        
        switch actionSheetOption {
        case .isMyPost:
            return ActionSheet(
                //title: Text(title),
                title: title, //written differently
                message: nil,
                buttons: [shareButton, reportButton, deleteButton, cancelButton]
            )
        case .isOtherPost:
            return ActionSheet(
                //title: Text(title),
                title: title, //written differently
                message: nil,
                buttons: [shareButton, reportButton, cancelButton]
            )
        }
    }
}

struct ActionSheetPopUps_Previews: PreviewProvider {
    static var previews: some View {
        ActionSheetPopUps()
    }
}
