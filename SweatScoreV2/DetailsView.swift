//
//  DetailsView.swift
//  SweatScoreV2
//
//  Created by Anmol Deepak on 8/27/23.
//

import SwiftUI

struct DetailsView: View {
    var body: some View {
        
        ZStack{
            
            Rectangle()
                .fill(Color("Secondary"))
                .ignoresSafeArea()
            
            Text("Details")
            
        }
        
    }
}

struct DetailsView_Previews: PreviewProvider {
    static var previews: some View {
        DetailsView()
    }
}
