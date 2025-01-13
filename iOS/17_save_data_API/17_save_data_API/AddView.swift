//
//  AddView.swift
//  17_save_data_API
//
//  Created by Gonçalo Feliciano on 13/01/2025.
//

import SwiftUI

struct AddView: View {
    
    @StateObject var vm = AddViewModel()
    
    var body: some View {
        VStack{
            
            TextField("id", text: $vm.tf_id)
                .frame(width: 250)
                .textFieldStyle(.roundedBorder)
                .keyboardType(.numberPad)
            
            TextField("User Id", text: $vm.tf_userId)
                .frame(width: 250)
                .textFieldStyle(.roundedBorder)
                .keyboardType(.numberPad)
            
            TextField("Task", text: $vm.tf_msg)
                .frame(width: 250)
                .textFieldStyle(.roundedBorder)
                .keyboardType(.numberPad)
            
            Toggle(isOn: $vm.tg_comp) {
                Text("Done")
            }
            .frame(width: 250)
            
            
            Button {
                vm.saveData()
            } label: {
                Text("save data")
            }
            Spacer()

            
        }
    }
}

#Preview {
    AddView()
}
