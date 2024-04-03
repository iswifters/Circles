//
//  CreateUsernameView.swift
//  Circles
//
//  Created by MAC on 02/04/2024.
//

import SwiftUI

struct CreateUsernameView: View {
    @State private var username = ""
    @Environment(\.dismiss) var dismiss

    var body: some View {
        VStack(spacing:12){
            //title
            Text("create username")
                .font(.title2)
                .fontWeight(.bold)
                .padding(.top)
            
            Text("Pick a username for your new account. You can change it later")
                .font(.footnote)
                .foregroundColor(.gray)
                .multilineTextAlignment(.center)
                .padding(.horizontal, 24)
            
            //username field
            TextField("Username", text: $username)
                .autocapitalization(.none)
                .modifier(TextFieldModifier())
                .padding(.top)
            
            //Next navigation button
            NavigationLink{
                CreatePasswordView().navigationBarBackButtonHidden(true)
            }label: {
            Text("Next")
                .font(.subheadline)
                .fontWeight(.semibold)
                .foregroundColor(.white)
                .frame(width: 360, height: 44)
                .background(Color(.systemBlue))
                .cornerRadius(8)
        }.padding(.vertical)
            
            Spacer()
        }.toolbar {
            ToolbarItem(placement: .navigationBarLeading){
                Image(systemName: "chevron.left").imageScale(.large).onTapGesture {
                    dismiss()
                }
            }
            
        }
    }
}

struct CreateUsernameView_Previews: PreviewProvider {
    static var previews: some View {
        CreateUsernameView()
    }
}
