//
//  ListView.swift
//  ToDoList
//
//  Created by Ricardo de Agostini Neto on 04/12/23.
//

import SwiftUI

struct ListView: View {
    
    @EnvironmentObject var listViewModel: ListViewModel
    

    
    var body: some View {
        List{
            //ListRowView(title: "this is the first title")
            
            ForEach(listViewModel.items) { item in
                
                ListRowView(item: item)
                    .onTapGesture {
                        withAnimation(.linear) {
                            listViewModel.updateItem(item: item)
                        }
                    }
                 
                
            }
            .onDelete(perform: listViewModel.deleteItem)
            .onMove(perform: listViewModel.moveItem)
        }
        .navigationTitle("Todo List📝")
        .navigationBarItems(leading: EditButton(), trailing: NavigationLink("Add", destination: AddView())
            )
    }
    

    
}

#Preview {
    ListView()
}


