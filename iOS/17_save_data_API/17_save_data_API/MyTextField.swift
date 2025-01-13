//
//  myTFView.swift
//  17_save_data_API
//
//  Created by Gonçalo Feliciano on 13/01/2025.
//

import SwiftUI

struct MyTextField: View {
    var placeHolder: String
    @Binding var text:String
    
    var body: some View {
        TextField(placeHolder, text: $text)
            .frame(width: 290)
            .textFieldStyle(.roundedBorder)
            .keyboardType(.numberPad)
    }
}

#Preview {
    MyTextField(placeHolder: "Foo", text: .constant("msg"))
}
