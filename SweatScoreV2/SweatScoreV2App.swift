//
//  SweatScoreV2App.swift
//  SweatScoreV2
//
//  Created by Anmol Deepak on 8/14/23.
//

import SwiftUI
import Firebase

@main
struct SweatScoreV2App: App {
    
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
    
    var body: some Scene {
        WindowGroup {
            let viewModel = AppViewModel()
            LoadingView()
                .environmentObject(viewModel)
        }
    }
}

class AppDelegate: NSObject, UIApplicationDelegate {
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
       
        FirebaseApp.configure()
        
        return true
        
    }
    
}
