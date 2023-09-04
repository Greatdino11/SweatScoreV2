//
//  ContentView.swift
//  SweatScoreV2
//
//  Created by Anmol Deepak on 8/14/23.
//

import SwiftUI
import FirebaseAuth

class AppViewModel: ObservableObject {
    
    let auth = Auth.auth()
    
    @Published var signedIn = false
    
    var isSignedIn: Bool {
        return auth.currentUser != nil
    }
    
    func signIn(email: String, password: String){
        auth.signIn(withEmail: email, password: password) { [weak self] result, error in
            guard result != nil, error == nil else {
                return
            }
            
            DispatchQueue.main.async {
                
                //Success
                self?.signedIn = true
                
            }
            
        }
        
    }
    
    func signUp(email: String, password: String){
        auth.createUser(withEmail: email, password: password) { [weak self] result, error in
            guard result != nil, error == nil else {
                return
            }
            
            DispatchQueue.main.async {
                
                //Success
                self?.signedIn = true
                
            }
            
        }
        
    }
    
    func signOut() {
        
        try? auth.signOut()
        
        self.signedIn = false
        
    }
    
}

struct ContentView: View {
    
    @EnvironmentObject var viewModel: AppViewModel
    
    var body: some View {
        
        NavigationView {
            
            if viewModel.signedIn {
                
                VStack {
                    
                    SweatScreen()
                    
                }
                
            }
            else {
                SignInView()
            }
            
        }
        .onAppear {
            viewModel.signedIn = viewModel.isSignedIn
        }
        
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
