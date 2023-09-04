//
//  TabNavigator.swift
//  SweatScoreV2
//
//  Created by Anmol Deepak on 8/27/23.
//

import SwiftUI

struct TabNavigator: View {
    var body: some View {
        TabView {
            
            Group{
                SweatView()
                    .tabItem {
                        Label("Score", systemImage: "graduationcap")
                        Text("Score")
                    }
                
                DetailsView()
                    .tabItem {
                        Label("Details", systemImage: "note.text")
                        Text("Details")
                    }
                
                SettingsView()
                    .tabItem {
                        Label("Settings", systemImage: "gearshape.fill")
                        Text("Settings")
                    }
                    
            }
            .toolbarBackground(Color("Secondary"), for: .tabBar)
            .toolbarBackground(.visible, for: .tabBar)

        }
        
    }
}

struct TabNavigator_Previews: PreviewProvider {
    static var previews: some View {
        TabNavigator()
    }
}
