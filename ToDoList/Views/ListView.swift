//
//  ListView.swift
//  ToDoList
//
//  Created by Ricardo de Agostini Neto on 04/12/23.
//

import SwiftUI

struct ListView: View {
    
    @State var items: [ItemModel] = [ItemModel(title: "this is the first title", isCompleted: true), ItemModel(title: "this is the second", isCompleted: false)]
    
    var body: some View {
        List{
            //ListRowView(title: "this is the first title")
            
            ForEach(items) { item in
                
                ListRowView(item: item)
                 
                
            }
        }
        .navigationTitle("Todo List📝")
        .navigationBarItems(leading: EditButton(), trailing: NavigationLink("Add", destination: AddView())
            )
    }
}

#Preview {
    ListView()
}


