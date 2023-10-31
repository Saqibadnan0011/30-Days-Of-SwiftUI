//
//  ContentView.swift
//  GlassMorphismLogin
//
//  Created by apple on 30/10/2023.
//

import SwiftUI

struct ContentView: View {
    
    @State private var email: String = ""
    @State private var password: String = ""
    @State private var isNewUser: Bool = false
    
    var body: some View {
        VStack {
            VStack {
                Text("Welcome to")
                    .font(.title2).bold()
                    .foregroundColor(.white.opacity(0.8))
                    .padding(.bottom, -15)
                
                Text("LoginPage")
                    .font(.title.width(.expanded)).bold()
                    .padding(.bottom, 20)
                
                VStack (alignment: .leading, spacing: 8) {
                    CustomTextField (placeholder: "Email", text: $email)
                        .padding(.bottom, 20)
                    CustomSecureField (placeholder: "Password", text: $password)
                    
                    Button {
                        //
                    } label: {
                        Text(isNewUser ? "Signup" : "Login")
                            .font(.title3.weight(.semibold))
                            .foregroundColor(.orange)
                            .padding(.vertical, 12)
                            .frame(maxWidth: .infinity)
                            .background(.white.gradient)
                            .cornerRadius(8)
                    }
                    .padding(.top)
                }
                HStack(spacing: 15) {
                    Button {
                        //
                    } label: {
                        Label("Gmail", systemImage: "envelope.fill")
                            .fontWeight(.semibold)
                            .frame(maxWidth: .infinity)
                            .padding(.vertical, 10)
                            .background {
                                GlassBlurView(removeAllFilters: false)
                                    .background(.white.opacity(0.2))
                            }
                            .cornerRadius(8)
                    }
                    Button {
                        //
                    } label: {
                        Label("Apple", systemImage: "applelogo")
                            .fontWeight(.semibold)
                            .frame(maxWidth: .infinity)
                            .padding(.vertical, 10)
                            .background {
                                GlassBlurView(removeAllFilters: false)
                                    .background(.white.opacity(0.2))
                            }
                            .cornerRadius(8)
                    }
                }
                .foregroundColor(.white)
                
                Rectangle()
                    .frame(height: 1.5)
                    .foregroundColor(.white.opacity(0.4))
                    .padding(.top, 15)
                
                HStack(spacing: 15) {
                    Text(isNewUser ? "Already have an account!" : "Don't have an account?")
                        .font(.subheadline)
                        .foregroundColor(.white)
                    
                    Button {
                        isNewUser.toggle()
                    } label: {
                        Text(isNewUser ? "Log In" : "Sign Up")
                            .font(.subheadline).bold()
                            .foregroundColor(.orange)
                    }
                }//hstack
            }
            .animation(.easeInOut, value: isNewUser)
            .foregroundStyle(.white)
            .padding(.horizontal, 30)
            .padding(.top, 35)
            .padding(.bottom, 25)
            .background {
                GlassBlurView(removeAllFilters: true)
                    .blur(radius: 6, opaque: true)
            }
            //.clipShape(.rect(cornerRadius: 10, style: .continuous))
            .background {
                RoundedRectangle(cornerRadius: 10, style: .continuous)
                    .stroke(.white.opacity(0.3), lineWidth: 1.5)
            }
            .shadow(color: .black.opacity(0.2),radius: 10)
            .padding(.horizontal, 40)
            .background {
                shapes
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .preferredColorScheme(.dark)
        .background {
            Rectangle()
                .fill(.black.gradient)
                .ignoresSafeArea()
        }
    }
    var shapes: some View {
        ZStack {
            Image("Spline")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .offset(x: 170, y: 110)
            Circle()
                .fill(
                    .linearGradient(colors: [.orange, .pink], startPoint: .top, endPoint: .bottom)
                )
                .frame(width: 150, height: 150)
                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
                .offset(x: 55, y: -55)
            
            if isNewUser {
                Text(isNewUser ? "Log In" : "Sign Up")
                Circle()
                    .fill(
                        .linearGradient(colors: [.blue, .pink], startPoint: .top, endPoint: .bottom)
                    )
                    .frame(width: 150, height: 150)
                    .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
                    .offset(x: 55, y: -55)
                Circle()
                    .fill(
                        .linearGradient(colors: [.indigo, .purple], startPoint: .top, endPoint: .bottom)
                    )
                    .frame(width: 80, height: 80)
                    .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
                    .offset(x: 375, y: -45)
            }
        }
    }//shapes
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
