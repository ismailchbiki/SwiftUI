//
//  Init&EnumsBootcamp.swift
//  SwiftUI Bootcamp
//
//  Created by Ismail on 30/07/2022.
//

import SwiftUI

struct Init_EnumsBootcamp: View {
    
    let backgroundColor: Color
    let count: Int
    let title: String
    
    enum Fruit{
        case apple
        case orange
        case bananas
    }
    
    //Custom init: initializer
    init(count: Int, fruit: Fruit ){
        self.count = count
        //        self.title = title
        //
        //        if title == "Apples"{
        //            self.backgroundColor = .red
        //        } else {
        //            self.backgroundColor = .orange
        //        }
        
        if fruit == .apple{
            self.title = "Apples"
            self.backgroundColor = .red
        } else if fruit == .orange {
            self.title = "Oranges"
            self.backgroundColor = .orange
        } else{
            self.title = "Bananas"
            self.backgroundColor = .yellow
        }
    }
    
    //this view is reusable
    var body: some View {
        VStack(spacing: 12){ //spacing between items
            Text("\(count)")
                .font(.largeTitle)
                .foregroundColor(.white)
                .underline()
            Text(title)
                .font(.headline)
                .foregroundColor(.white)
        }
        .frame(width: 100, height: 100)
        .background(backgroundColor)
        .cornerRadius(10)
    }
}

struct Init_EnumsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        
        //testing with an enum
        //        Init_EnumsBootcamp(count: 100, fruit: .apple)
        
        //testing with a custom initializer
        //        Init_EnumsBootcamp(count: 7, title: "Apples")
        
        //testing with the default initializer (demonstrated below )
        //        Init_EnumsBootcamp(backgroundColor: .red, count: 55, title: "Apples")
        
        //what is happening behind scenes: initializer (when previous line is executed)
        //        init(backgroundColor: Color, count: Int, title: String ){
        //            self.backgroundColor = backgroundColor
        //            self.count = count
        //            self.title = title
        //        }
        
        
        /* reusing views (like react components) */
        HStack{
            Init_EnumsBootcamp(count: 100, fruit: .apple)
            Init_EnumsBootcamp(count: 70, fruit: .orange)
            Init_EnumsBootcamp(count: 80, fruit: .bananas)
        }
    }
}
