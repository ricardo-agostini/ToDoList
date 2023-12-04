//
//  AddView.swift
//  ToDoList
//
//  Created by Ricardo de Agostini Neto on 04/12/23.
//

import SwiftUI

struct AddView: View {
    @State var textFieldText: String = ""
    
    var body: some View {
        ScrollView {
            VStack {
                TextField("Type something here...", text: $textFieldText)
                    .padding(.horizontal)
                    .frame(height: 55)
                    .background(.white)
                    .cornerRadius(10)
                
                
                Button(action : {
                    
                }, label: {
                    Text("Save".uppercased())
                        .foregroundColor(.white)
                        .font(.headline)
                        .frame(height: 55)
                        .frame(maxWidth: .infinity)
                        .background(.blue)
                        .cornerRadius(10)
                    
                    
                    
                })
                
            }.padding(14)
        }.navigationTitle("Add an Item 🖊️")
    }
}

#Preview {
    AddView()
}
