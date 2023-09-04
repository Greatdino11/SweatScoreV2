//
//  SweatView.swift
//  SweatScoreV2
//
//  Created by Anmol Deepak on 8/27/23.
//

import SwiftUI

struct SweatView: View {
    
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
                        
            }
        
        }
        
    }
    
}

struct SweatView_Previews: PreviewProvider {
    static var previews: some View {
        SweatView()
    }
}
