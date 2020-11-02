//
//  ContentView.swift
//  AppWithCoreData
//
//  Created by ALEXANDR DRAGUNOV on 11/2/20.
//

import SwiftUI

struct ContentView: View {
    @Environment(\.managedObjectContext) var manageObjectContext
    @FetchRequest(fetchRequest: ToDoItem.getAllToDoItems()) var toDoItems: FetchedResults<ToDoItem>
    
    @State private var newToDoItem = ""
    
    var body: some View {
        NavigationView {
            List {
                Section(header: Text("What's next?")) {
                    HStack {
                        TextField("New item", text: self.$newToDoItem)
                        
                        Button(action: {
                            
                        }) {
                            Image(systemName: "plus.circle.fill")
                                .foregroundColor(.green)
                                .imageScale(.large)
                        }
                    }
                }
                    .font(.headline)
            }
        }
            .navigationBarTitle(Text("My list"))
            .navigationBarItems(leading: EditButton())
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
