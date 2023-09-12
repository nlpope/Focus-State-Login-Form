//
//  LoginForm.swift
//  Focus State Login Form
//
//  Created by Noah Pope on 9/5/23.
//

import SwiftUI

struct LoginForm: View {
    enum Field: Hashable {
        case username, password
    }
    
    @State private var username = ""
    @State private var password = ""
    @FocusState private var focusedField: Field?
    
    var body: some View {
        Form {
            TextField("Username", text: $username)
                .focused($focusedField, equals: .username)
            SecureField("Password", text: $password)
                .focused($focusedField, equals: .password)
            Button("Sign In") {
                if username.isEmpty {focusedField = .username}
                else if password.isEmpty {focusedField = .password}
                else {print("yeah it works boss")}
            }
        }
    }
}

struct LoginForm_Previews: PreviewProvider {
    static var previews: some View {
        LoginForm()
    }
}
