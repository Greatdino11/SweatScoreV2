//
//  SignUpView.swift
//  SweatScoreV2
//
//  Created by Anmol Deepak on 8/19/23.
//

import SwiftUI

struct SignUpView: View {
    
    @State private var email: String = ""
    @State private var password: String = ""
    
    @EnvironmentObject var viewModel: AppViewModel
    
    var body: some View {
        
        NavigationView {
            
            ZStack{
                
                Rectangle()
                    .fill(Color(red: 0.9019607843137255, green: 0.9215686274509803, blue: 0.8784313725490196))
                    .ignoresSafeArea()
                
                VStack{
                    
                    Spacer()
                    
                    Text("Create Account")
                        .font(.custom("AvenirNextLTPro-Bold", size: 40))
                        .foregroundColor(Color(red: 0.21176470588235294, green: 0.20784313725490197, blue: 0.21568627450980393))
                        .padding(.top, 50)
                        .offset(x: -20)
                    
                    Text("Please enter account details.")
                        .font(.custom("AvenirNextLTPro-Regular", size: 20))
                        .foregroundColor(Color(red: 0.21176470588235294, green: 0.20784313725490197, blue: 0.21568627450980393))
                        .padding(1)
                        .padding(.bottom, 50)
                        .offset(x: -35)
                    
                    VStack{
                        
                        Text("Email")
                            .font(.custom("AvenirNextLTPro-Regular", size: 20))
                            .foregroundColor(Color(red: 0.21176470588235294, green: 0.20784313725490197, blue: 0.21568627450980393))
                            .frame(height: 15, alignment: .trailing)
                            .padding(15)
                            .offset(x: -130)
                        
                        TextField("", text: $email)
                            .autocorrectionDisabled(true)
                            .textInputAutocapitalization(.none)
                            .foregroundColor(Color(red: 0.21176470588235294, green: 0.20784313725490197, blue: 0.21568627450980393))
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
                        
                        viewModel.signUp(email: email, password: password)
                    } label: {
                        Text("Create an Account")
                            .foregroundColor(.white)
                            .font(.custom("AvenirNextLTPro-Regular", size: 20))
                            .frame(width: 250, height: 44, alignment: .center)
                    }
                    .background(Color("Primary"))
                    .cornerRadius(15)
                    .padding(.top, 100)
                    
                    Spacer()
                    
                }
                
            }
            
        }
        .navigationTitle("Sign Up")
        
    }
    
}

struct SignUpView_Previews: PreviewProvider {
    static var previews: some View {
        SignUpView()
    }
}
