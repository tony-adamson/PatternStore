//
//  LoginView.swift
//  PatternStore
//
//  Created by Антон Адамсон on 01.10.2023.
//

import SwiftUI

struct LoginView: View {
    @State private var email = ""
    @State private var password = ""
    
    var body: some View {
        
        NavigationStack {
            ZStack(alignment: .bottom) {
                Triangle()
                    .fill(LinearGradient(gradient: Gradient(colors: [.init(red: 0.8, green: 0.6, blue: 0.4), .init(red: 0.4, green: 0.2, blue: 0.1)]), startPoint: .bottomLeading, endPoint: .topTrailing))
                    .frame(height: 280)
            
                VStack {
                    Image("logo2")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 100, height: 100)
                        .padding(.vertical, 80)
                    
                    VStack {
                        InputView(text: $email,
                                  title: "Email adress",
                                  placeholder: "name@example.com")
                            .textInputAutocapitalization(.none)
                        
                        InputView(text: $password,
                                  title: "Password",
                                  placeholder: "Enter your password",
                                  isSecureField: true)
                    }
                    .padding(.horizontal)
                    .padding(.top, 12)
                    
                    Button {
                        print("Log user in...")
                    } label: {
                        HStack {
                            Text("SIGN IN")
                                .fontWeight(.semibold)
                            Image(systemName: "arrow.right")
                        }
                        .foregroundColor(.white)
                        .frame(width: UIScreen.main.bounds.width - 128, height: 48)
                    }
                    .background(Color(.systemBrown))
                    .cornerRadius(24)
                    .padding(.top, 24)
                    
                    Spacer()
                    
                    NavigationLink {
                        RegistrationView()
                            .navigationBarBackButtonHidden()
                    } label: {
                        HStack(spacing: 2) {
                            Text("Don't have an account?")
                            Text("Sign UP")
                                .fontWeight(.bold)
                        }
                        .font(.system(size: 14))
                        .padding(.bottom, 32)
                        .foregroundColor(.black)
                    }

                }
            }
            .edgesIgnoringSafeArea(.all)
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
