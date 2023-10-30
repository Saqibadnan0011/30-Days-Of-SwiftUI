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
                    //CustomSecureField (placeholder: "Password", text: $password)
                    
                    Button {
                        //
                    } label: {
                        Text(isNewUser ? "Signup" : "Login")
                    }

                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
