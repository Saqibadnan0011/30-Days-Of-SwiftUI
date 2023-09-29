//
//  ContentView.swift
//  Light and Dark Mode Tester
//
//  Created by apple on 09/08/2023.
//

import SwiftUI

extension UIViewController {
    var isDarkModeEnabled: Bool {
        return traitCollection.userInterfaceStyle == .dark
    }
}

struct ContentView: View {
    @Environment (\.colorScheme) var colorScheme
    var body: some View {
        ZStack {
            Color(UIColor(named: "AccentColor")!)
                .edgesIgnoringSafeArea(.all)
            VStack {
                HStack {
                    VStack(alignment: .leading) {
                        Text("Now")
                            .font(.system(size: 40, weight: .black))
                            .foregroundColor(colorScheme == .light ? .accentColor : .black)
                            .multilineTextAlignment(.leading)
                            .frame(width: 300, height: 300)
                            .background(colorScheme == .light ? .black : .accentColor)
                            .cornerRadius(150)
                            .offset(x: -100, y: -100)
                        Spacer()
                        Text(colorScheme == .light ? " Light Mode" : " Dark Mode")
                            .font(colorScheme == .light ? Font.custom("Condiment-Regular", size: 70) :
                                Font.custom("Condiment-Regular", size: 70))
                            .foregroundColor(colorScheme == .light ? .black : .accentColor)
                            .multilineTextAlignment(.leading)
                            .padding(.bottom, 50)
                    }
                }
            }
        }//zstack end
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
                .environment(\.colorScheme, .light)
            ContentView()
                .environment(\.colorScheme, .dark)
        }
    }
}
