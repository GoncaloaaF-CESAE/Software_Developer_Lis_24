//
//  newIView.swift
//  18_bind
//
//  Created by Gonçalo Feliciano on 13/01/2025.
//

import SwiftUI

struct newView: View {
    
    @State var msg:String
    
    var body: some View {
        VStack{
            Text(msg)
            TextField("msg", text: $msg)
                .frame(width: 250)
                .textFieldStyle(.roundedBorder)
        }
        .navigationTitle("View 2")
    }
}

#Preview {
    newView(msg: "Bla")
}
