//
//  ContentView.swift
//  19_img
//
//  Created by Gonçalo Feliciano on 13/01/2025.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image("img1")
                .resizable()
                .scaledToFill()
                .frame(width: 200, height: 200)
                .padding()
            
          /*  AsyncImage(url: URL(string: "https://i.kinja-img.com/image/upload/c_fill,h_675,pg_1,q_80,w_1200/cee10372f4c9fde8937464cc739d762d.jpg")!)
            */
            
            AsyncImage(url: URL(string: "https://i.kinja-img.com/image/upload/c_fill,h_675,pg_1,q_80,w_1200/cee10372f4c9fde8937464cc739d762d.jpg")!) { img in
                
                img
                    .resizable()
                .scaledToFill()
                .frame(width: 200, height: 200)
                
                
            } placeholder: {
                ProgressView()
            }
            .padding()
            
            Image(systemName: "figure.walk")
                .resizable()
                .frame(width: 100, height: 100)
                .foregroundStyle(.green)
            
                
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
