//
//  ListView.swift
//  SweatScoreV2
//
//  Created by Anmol Deepak on 8/20/23.
//

import SwiftUI

struct ListView: View {
    var body: some View {
        
        VStack {
            
            ListItem(topic: "Mathematics", grade: 100)
            
            ListItem(topic: "English", grade: 95)
            
            ListItem(topic: "Science", grade: 97)
            
            ListItem(topic: "History", grade: 100)
            
            ListItem(topic: "Engineering", grade: 99)
            
            ListItem(topic: "Robotics", grade: 98)

        }
        .padding(.bottom, 150)

    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView()
    }
}
