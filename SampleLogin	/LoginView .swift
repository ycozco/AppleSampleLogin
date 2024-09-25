//
//  LoginView .swift
//  SampleLogin
//
//  Created by epismac on 25/09/24.
//

import SwiftUI

struct LoginView: View {
    @State private var username=""
    @State private var password=""
    
    var body: some View {
        Image(.login)
        TextField("Username", text: $username).textFieldStyle(.roundedBorder)
        TextField("Password", text: $password).textFieldStyle(.roundedBorder)
        Button("Login", action: {})
    }
}

	
