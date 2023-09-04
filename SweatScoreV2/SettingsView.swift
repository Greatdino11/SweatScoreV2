//
//  SettingsView.swift
//  SweatScoreV2
//
//  Created by Anmol Deepak on 8/27/23.
//

import SwiftUI

struct SettingsView: View {
    
    @EnvironmentObject var viewModel: AppViewModel
    
    var body: some View {
        
        ZStack{
            
            Rectangle()
                .fill(Color("Secondary"))
                .ignoresSafeArea()
            
            Button(action: {
                
                viewModel.signOut()
                
            }, label: {
                
                Text("Sign Out")
                    .foregroundColor(.white)
                    .font(.custom("AvenirNextLTPro-Regular", size: 20))
                    .frame(width: 250, height: 44, alignment: .center)
                
            })
            .background(Color("Primary"))
            .cornerRadius(15)

        }
        
    }
    
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
