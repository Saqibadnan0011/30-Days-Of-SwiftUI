//
//  CustomSecureField.swift
//  GlassMorphismLogin
//
//  Created by apple on 30/10/2023.
//

import SwiftUI

struct CustomSecureField: View {
    let placeholder: String
    @Binding var text: String
    
    @State private var isSecureTextEntry = true
    @State private var width = CGFloat.zero
    @State private var labelWidth = CGFloat.zero
    
    var body: some View {
        HStack {
            if isSecureTextEntry {
                SecureField(placeholder, text: $text)
                    .foregroundColor(.white)
                    .font(.system(size: 15))
            } else {
                TextField(placeholder, text: $text)
                    .foregroundColor(.white)
                    .font(.system(size: 15))
            }
            Button(action: {
                isSecureTextEntry.toggle()
            }) {
                Image(systemName: isSecureTextEntry ? "eye.slash.fill" : "eye.fill")
                    .foregroundColor(.white.opacity(0.6))
                    .frame(width: 20, height: 20)
            }
        }
        .padding(EdgeInsets(top: 15, leading: 10, bottom: 15, trailing: 10))
    }
}

struct CustomSecureField_Previews: PreviewProvider {
    static var previews: some View {
        CustomSecureField(placeholder: "placeholder", text: .constant("text"))
    }
}
