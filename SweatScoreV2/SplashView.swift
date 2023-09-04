//
//  SplashView.swift
//  SweatScoreV2
//
//  Created by Anmol Deepak on 8/26/23.
//

import SwiftUI

struct SplashView: View {
    var body: some View {
        
        ZStack{
            
            Rectangle()
                .fill(Color("Secondary"))
                .ignoresSafeArea()
            
            VStack{
                LoadingView()
                
                Text("Loading")
                    .font(.custom("AvenirNextLTPro-Regular", size: 20))
                    .foregroundColor(Color("Primary"))
                    .padding(25)
            }
        }
        
        
    }
}

struct SplashView_Previews: PreviewProvider {
    static var previews: some View {
        SplashView()
    }
}
