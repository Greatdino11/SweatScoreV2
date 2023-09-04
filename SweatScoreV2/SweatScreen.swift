//
//  SweatScreen.swift
//  SweatScore
//
//  Created by Anmol Deepak on 8/14/23.
//

import SwiftUI

struct SweatScreen: View {
    
    @EnvironmentObject var viewModel: AppViewModel
    
    var body: some View {
        
        ZStack{
            
            Rectangle()
                .fill(Color("Secondary"))
                .ignoresSafeArea()
            
            VStack {
                
                Text("SweatScore")
                    .font(.custom("AvenirNextLTPro-Bold", size: 46))
                    .foregroundColor(.primary)
                    .padding(15)
                
                
                
                TopicList()
                
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
            
            TabNavigator()
        
        }
        
    }
    
}

struct SweatScreen_Previews: PreviewProvider {
    static var previews: some View {
        SweatScreen()
    }
}
