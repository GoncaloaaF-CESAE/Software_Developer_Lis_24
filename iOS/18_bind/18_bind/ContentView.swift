//
//  ContentView.swift
//  18_bind
//
//  Created by Gonçalo Feliciano on 13/01/2025.
//

import SwiftUI

struct ContentView: View {
    @State var msg_v1 = "Ola Mundo"
    
    var body: some View {
    
        NavigationStack {
            VStack {
                Image(systemName: "globe")
                    .imageScale(.large)
                    .foregroundStyle(.tint)
                Text(msg_v1)
            }
            .padding()
            
            NavigationLink {
                newView(msg: $msg_v1)
            } label: {
                Text("Go to View 2")
            }
            .navigationTitle("View 1")

        }
       
      
    }
}

#Preview {
    ContentView()
}
