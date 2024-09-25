//
//  LoginView .swift
//  SampleLogin
//
//  Created by epismac on 25/09/24.
//

import SwiftUI

struct LoginView: View {
    @Binding var isLoggedin: Bool
    @State private var username = ""
    @State private var password = ""

    var body: some View {
        NavigationView {
            VStack {
                Image("login")
                    .resizable()
                    .frame(maxWidth: 100, maxHeight: 100)
                    .scaledToFit()
                
                TextField("Username", text: $username)
                    .textFieldStyle(.roundedBorder)
                
                TextField("Password", text: $password)
                    .textFieldStyle(.roundedBorder)
                    .textContentType(.password) // Optional: to use the password field style
                
                Button("Login", action: btnLogin)
                
                NavigationLink(destination: CreateAccountView()) {
                    Text("Create my account")
                }
            }
            .navigationTitle("Login")
            .navigationBarTitleDisplayMode(.inline)
            .navigationBarHidden(true)
        }
    }

    func btnLogin() {
        isLoggedin = true
    }
}
