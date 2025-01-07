//
//  ContentView.swift
//  10_aula_GtN_MVVM
//
//  Created by Gonçalo Feliciano on 07/01/2025.
//

import SwiftUI

struct ContentView: View {
    @StateObject var vm = ContentViewModel()
    
    var body: some View {
        VStack {
           
            Text("Guess the Number")
                .font(.title)
                .bold()
            
            Text("o num esta entre 0 e 1000")
                .padding(.bottom, 20)
            
            Text(vm.msg!.rawValue)
                .padding(.bottom, 15)
            
            TextField("Palpite ", text: $vm.guessTF)
                .frame(width: 250)
                .textFieldStyle(.roundedBorder)
            
            Button {
                vm.guess()
            } label: {
                Text("Tentativa")
            }

        }
        .padding()
    }

}

#Preview {
    ContentView()
}
