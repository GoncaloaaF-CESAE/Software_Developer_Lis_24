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
            
            
            MyTextField(placeHolder: "id", text: $vm.tf_id)
           
            MyTextField(placeHolder:"User Id", text: $vm.tf_userId)
            
            MyTextField(placeHolder: "Task", text: $vm.tf_msg)

            
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
