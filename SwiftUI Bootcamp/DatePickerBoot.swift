//
//  DatePickerBoot.swift
//  SwiftUI Bootcamp
//
//  Created by Ismail on 28/08/2022.
//

import SwiftUI

//date picker can also be used for time
struct DatePickerBoot: View {
    
    @State var selectedDate: Date = Date()
    
    //in case the provided date is not available (use !) so that the app doesn't crush
    //let startingDate: Date = Calendar.current.date(from: DateComponents(year: 2021))!
    
    //use (??) to provide another date
    let startingDate: Date = Calendar.current.date(from: DateComponents(year: 2021)) ?? Date()
    let endingDate: Date = Date()
    
    //to format chosen date before printing it to the screen
    var dateFormatter: DateFormatter{
        //initializing a new date formatter
        let formatter = DateFormatter()
        formatter.dateStyle = .medium
        formatter.timeStyle = .short
        return formatter
    }
    
    var body: some View {
        //example 1
        //DatePicker("Select a Date", selection: $selectedDate)
        
        //example 2
        //        DatePicker(
        //            "Select a Date",
        //            selection: $selectedDate,
        //            //this is the default display
        //            //displayedComponents: [.date, .hourAndMinute]
        //            //custom display
        //            displayedComponents: [.hourAndMinute]
        //        )
        
        //example 3
        //to only choose from certain dates
        VStack {
            Text("Selected date is: ")
                .padding(8)
            //reformatting the date
            Text(dateFormatter.string(from: selectedDate))
                .font(.title)
            DatePicker(
                "Select a Date",
                selection: $selectedDate,
                in: startingDate...endingDate,
                //part of the date to display
                displayedComponents: [.date]
            )
            //everytime the foreground color is blue, it can be changed using the .accentColor()
            .accentColor(Color.red)
            //.datePickerStyle(
            ////different date styles
            ////CompactDatePickerStyle()
            ////GraphicalDatePickerStyle()
            //WheelDatePickerStyle()
            //)
        .padding(.horizontal)
            Spacer()
        }
        .padding(.top, 20)
    }
}

struct DatePickerBoot_Previews: PreviewProvider {
    static var previews: some View {
        DatePickerBoot()
    }
}

