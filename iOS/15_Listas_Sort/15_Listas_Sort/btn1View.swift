//
//  btn1View.swift
//  15_Listas_Sort
//
//  Created by Gonçalo Feliciano on 09/01/2025.
//

import SwiftUI

struct btn1View: View {
    var btnText: String
    var body: some View {
        Text(btnText)
            .frame(width: 100, height: 50)
            .background(.blue)
            .foregroundStyle(.white)
            .clipShape(Capsule())
    }
}

#Preview {
    btn1View(btnText: "Ok")
}
