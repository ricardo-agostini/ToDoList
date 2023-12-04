//
//  ItemModel.swift
//  ToDoList
//
//  Created by Ricardo de Agostini Neto on 04/12/23.
//

import Foundation

struct ItemModel: Identifiable {
    let id: String = UUID().uuidString
    let title: String
    let isCompleted: Bool
    var title2: String = "hello"
}
