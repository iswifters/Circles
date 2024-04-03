//
//  AddEmailView.swift
//  Circles
//
//  Created by MAC on 02/04/2024.
//

import SwiftUI

struct AddEmailView: View {
    @State private var email = ""
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        VStack(spacing:12){
            //title
            Text("Add your email")
                .font(.title2)
                .fontWeight(.bold)
                .padding(.top)
            
            Text("You'll use this email to sign in to your account")
                .font(.footnote)
                .foregroundColor(.gray)
                .multilineTextAlignment(.center)
                .padding(.horizontal, 24)
            
            //email field
            TextField("Enter your email", text: $email)
                .autocapitalization(.none)
                .modifier(TextFieldModifier())
                .padding(.top)
            
            //Next navigation button
            NavigationLink{
                CreateUsernameView().navigationBarBackButtonHidden(true)
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

struct AddEmailView_Previews: PreviewProvider {
    static var previews: some View {
        AddEmailView()
    }
}
