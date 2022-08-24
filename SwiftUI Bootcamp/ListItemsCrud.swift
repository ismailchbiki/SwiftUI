//
//  ListItemsCrud.swift
//  SwiftUI Bootcamp
//
//  Created by Ismail on 22/08/2022.
//

import SwiftUI

struct ListItemsCrud: View {
    
    @State var fruits: [String] = [
        "apple", "orange", "banana", "peach"
    ]
    
    @State var veggies: [String] = [
        "tomato", "potato", "carrot"
    ]
    
    var body: some View {
        NavigationView {
            List{
                Section {
                    //\.self will provides an id for every item in the array
                    ForEach(fruits, id: \.self) { fruit in
                        Text(fruit.capitalized)
                            .font(.caption)
                            .foregroundColor(.white)
                        
                        //this will not cover the whole row background color (right way to do that is outside of the foreach loop - listRowBackground())
                        //                            .frame(maxWidth: .infinity, maxHeight: .infinity)
                        //                            .background(Color.pink)
                    }
                    
                    //code to delete items or components of the list (using index of the item)
                    .onDelete { item in
                        delete(item: item)//code here is extracted into a func
                    }
                    //to move items in the list
                    .onMove(perform: {Indices, newOffset in
                        //to save the new list order after moving an item in the list
                        move(indices: Indices, newOffset: newOffset) //code here is extracted into a func
                    })
                    .listRowBackground(Color.blue)
                } header: {
                    HStack {
                        Text("fruits".capitalized)
                        Image(systemName: "flame.fill")
                        //                            .font(.body)
                    }
                    .font(.headline)
                    //foregroundColor: is the color of the actual item/text
                    .foregroundColor(.orange)
                }
                
                
                Section(header: Text("veggies".capitalized)) {
                    //\.self will provides an id for every item in the array
                    ForEach(veggies, id: \.self) { veggies in
                        Text(veggies.capitalized)
                            .font(.caption)
                    }
                }
                //other way to define the header
                //                } header: {
                //                    Text("veggies".capitalized)
                //                }
                
            }
            .accentColor(.purple)
            //formatting the list style (these adaptive styles are made by apple to adapt to different screens - might have different looks regarding to each screen)
            .listStyle(SidebarListStyle())
            .navigationTitle("Grocery List")
            //.navigationBarItems(leading: Image(systemName: "gear"))
            .navigationBarItems(
                //to edit the list items
                leading: EditButton(),
                //to add to the list items
                trailing: addButton
            )
            
        }
        .accentColor(.red)
    }
    
    //Extracted Button
    var addButton: some View{
        Button("Add", action: {
            Add()
        })
    }
    
    //custom extracted functions
    func Add(){
        fruits.append("Grapes")
    }
    
    func move(indices: IndexSet, newOffset: Int){
        fruits.move(fromOffsets: indices, toOffset: newOffset)
    }
    
    func delete(item: IndexSet){
        fruits.remove(atOffsets: item)
    }
}

struct ListItemsCrud_Previews: PreviewProvider {
    static var previews: some View {
        ListItemsCrud()
    }
}
