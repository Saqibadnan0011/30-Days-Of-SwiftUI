//
//  LoginView.swift
//  Authentication
//
//  Created by apple on 10/09/2023.
//

import SwiftUI

struct LoginView: View {
    @State private var email = ""
    @State private var password = ""
    var body: some View {
        NavigationStack {
            ZStack(alignment: .topLeading) {
                VStack {
                    VStack(spacing: 40) {
                        ZStack {
                            Ellipse()
                                .frame(width: 510, height: 478)
                                .padding(.leading, -200)
                                .foregroundColor(Color("Circle1"))
                                .padding(.top, -200)
                            Ellipse()
                                .frame(width: 458, height: 420)
                                .padding(.trailing, -500)
                                .foregroundColor(Color("Circle2"))
                                .padding(.top, -200)
                            Text("Welcome \nBack!")
                                .foregroundColor(.white)
                                .font(.system(size: 30))
                                .fontWeight(.bold)
                                .multilineTextAlignment(.leading)
                                .frame(maxWidth: .infinity, alignment: .leading)
                                .padding(.leading, 20)
                                
                        }
                        VStack {
                            VStack {
                                TextField("Email", text: $email)
                                    .padding(.leading, 20)
                                    .frame(width: 320, height: 70)
                                    .background(Color("Circle2"))
                                    .cornerRadius(10)
                                SecureField("password", text: $email)
                                    .padding(.leading, 20)
                                    .frame(width: 320, height: 70)
                                    .background(Color("Circle2"))
                                    .cornerRadius(10)
                                    .padding()
                            }
                            VStack {
                                Button {
                                    //
                                } label: {
                                    Text("Sign In")
                                        .fontWeight(.semibold)
                                        .foregroundColor(.white)
                                        .frame(width: 320, height: 70)
                                        .background(Color("Circle2"))
                                        .cornerRadius(10)
                                        .padding()
                                }

                            }
                            VStack {
                                VStack {
                                    Text("Don't have an account?")
                                }
                                Button {
                                    //SignupView()
                                } label: {
                                    Text("Sign up")
                                        .fontWeight(.bold)
                                        .foregroundColor(Color("Circle2"))
                                }

                            }
                        }
                    }
                }
            }
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
