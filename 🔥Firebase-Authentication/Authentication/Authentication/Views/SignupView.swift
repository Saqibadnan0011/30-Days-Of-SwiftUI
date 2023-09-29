//
//  SignupView.swift
//  Authentication
//
//  Created by apple on 10/09/2023.
//

import SwiftUI

struct SignupView: View {
    var body: some View {
        VStack {
            Button {
                LoginView()
            } label: {
                Text("Sign in")
                
            }

        }
    }
}

struct SignupView_Previews: PreviewProvider {
    static var previews: some View {
        SignupView()
    }
}
