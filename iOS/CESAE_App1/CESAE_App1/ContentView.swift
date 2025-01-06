//
//  ContentView.swift
//  CESAE_App1
//
//  Created by Gonçalo Feliciano on 06/01/2025.
//

import SwiftUI

struct ContentView: View {
    @State var nome = "Goncalo"
    
    var body: some View {
    
        VStack{
         
            Text(self.nome)
                .font(.title)
            Button {
                self.nome = "Novo Nome"
            } label: {
                Text("Btn 1")
                    .frame(width: 200, height: 60)
                    .bold()
                    .font(Font.title)
                    .background(.green)
                    .foregroundStyle(.white)
                    .clipShape(Capsule())
                    .padding(20)
                    .background(.blue)
                    .clipShape(Capsule())
                    
            }
            
            
            Text("Btn 2")
                .frame(width: 200, height: 60)
                .bold()
                .font(Font.title)
                .background(.green)
                .foregroundStyle(.white)
                .border(.black, width: 10)
                .clipShape(Capsule())
            
            
          
        }
        
   
    }
}




#Preview {
    ContentView()
}
