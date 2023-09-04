//
//  ListItem.swift
//  SweatScoreV2
//
//  Created by Anmol Deepak on 8/20/23.
//

import SwiftUI



struct ListItem: View {
    
    @State var topic:String = ""
    @State var grade:Int = 0
    
    var body: some View {
        HStack {
            
            Text(self.topic)
            
            Spacer()
            
            Text(String(self.grade))
            
        }
        .font(.custom("AvenirNextLTPro-Regular", size: 25))
        .foregroundColor(.primary)
        .padding(.top, 10)
        .padding(40)
    }
}

struct ListItem_Previews: PreviewProvider {
    static var previews: some View {
        ListItem()
    }
}
