//
//  SignInView.swift
//  SweatScoreV2
//
//  Created by Anmol Deepak on 8/19/23.
//

import SwiftUI

struct SignInView: View {
    
    @State private var email: String = ""
    @State private var password: String = ""
    
    @EnvironmentObject var viewModel: AppViewModel
    
    var body: some View {
        
        NavigationView {
            
            ZStack{
                
                Rectangle()
                    .fill(Color("Secondary"))
                    .ignoresSafeArea()
                
                VStack{
                    
                    Text("Login")
                        .font(.custom("AvenirNextLTPro-Bold", size: 46))
                        .foregroundColor(.primary)
                        .padding(.top, 20)
                        .offset(x: -95)
                    
                    Text("Please sign in to continue.")
                        .font(.custom("AvenirNextLTPro-Regular", size: 20))
                        .foregroundColor(.primary)
                        .padding(1)
                        .padding(.bottom, 50)
                        .offset(x: -35)
                    
                    VStack{
                        
                        Text("Email")
                            .font(.custom("AvenirNextLTPro-Regular", size: 20))
                            .foregroundColor(.primary)
                            .frame(height: 15, alignment: .trailing)
                            .padding(15)
                            .offset(x: -130)
                        
                        TextField("", text: $email)
                            .autocorrectionDisabled(true)
                            .textInputAutocapitalization(.none)
                            .foregroundColor(.primary)
                            .frame(width: 300, height: 44)
                            .padding(.horizontal, 12)
                            .background(Color.white)
                            .cornerRadius(10.0)
                        
                        
                    }
                    
                    VStack{
                        
                        Text("Password")
                            .font(.custom("AvenirNextLTPro-Regular", size: 20))
                            .foregroundColor(.primary)
                            .frame(height: 15, alignment: .trailing)
                            .padding(15)
                            .offset(x: -115)
                        
                        SecureField("", text: $password)
                            .autocorrectionDisabled(true)
                            .textInputAutocapitalization(.none)
                            .foregroundColor(.primary)
                            .frame(width: 300, height: 44)
                            .padding(.horizontal, 12)
                            .background(Color.white)
                            .cornerRadius(10.0)
                        
                        
                    }
                    .padding(.top, 20)
                    
                    Button {
                        guard !email.isEmpty, !password.isEmpty else {
                            return
                        }
                        
                        viewModel.signIn(email: email, password: password)
                    } label: {
                        Text("Login")
                            .foregroundColor(.white)
                            .font(.custom("AvenirNextLTPro-Regular", size: 20))
                            .frame(width: 250, height: 44, alignment: .center)
                    }
                    .background(Color("Primary"))
                    .cornerRadius(15)
                    .padding(.top, 100)
                    
                    Spacer()
                    
                    HStack{
                        
                        Text("Don't have an account?")
                        
                        Button{
                            
                            debugPrint("Sign Up Button Tapped!")
                            
                        } label: {
                            
                            NavigationLink("Sign Up", destination: SignUpView())
                                .foregroundColor(Color("Primary"))
                            
                        }
                        
                    }
                    
                    Spacer()
                    
                }
                
            }
            
        }
        .navigationTitle("Sign In")
        .toolbar(.hidden)
        
    }
    
}

struct SignInView_Previews: PreviewProvider {
    static var previews: some View {
        SignInView()
    }
}
