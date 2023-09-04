//
//  TopicList.swift
//  SweatScoreV2
//
//  Created by Anmol Deepak on 8/20/23.
//

import SwiftUI

struct TopicList: View {
    var body: some View {
        
        VStack {
            
            ScrollView {
                
                Score()
                
                ListView()
            }
            .mask(
                LinearGradient(gradient: Gradient(colors: [Color.black, Color.black, Color.black, Color.black.opacity(0)]), startPoint: .top, endPoint: .bottom)
            )

        }
        
    }
    
}

struct TopicList_Previews: PreviewProvider {
    static var previews: some View {
        TopicList()
    }
}
