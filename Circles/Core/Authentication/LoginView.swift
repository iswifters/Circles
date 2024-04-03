//
//  LoginView.swift
//  Circles
//
//  Created by MAC on 02/04/2024.
//

import SwiftUI

struct LoginView: View {
    @State private var email = ""
    @State private var password = ""
    
    
    var body: some View {
        NavigationStack{
            VStack{
                Spacer()
                
                //logo image
                Image("c2")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 220, height: 100)
                
                
                // textfields
                VStack{
                    TextField("Enter your email", text: $email)
                        .autocapitalization(.none)
                        .modifier(TextFieldModifier())
                    SecureField("password", text: $password)
                        .modifier(TextFieldModifier())
                }
                
                
                //forgot password button
                Button {
                    print("show forgot password")
                }label: {
                    Text("forgot password?")
                        .font(.footnote)
                        .fontWeight(.semibold)
                        .padding(.top)
                        .padding(.trailing, 28)
                }.frame(maxWidth: .infinity, alignment: .trailing)
                
                
                //login button
                Button {
                    print("Login")
                }label: {
                    Text("Login")
                        .font(.subheadline)
                        .fontWeight(.semibold)
                        .foregroundColor(.white)
                        .frame(width: 360, height: 44)
                        .background(Color(.systemBlue))
                        .cornerRadius(8)
                }.padding(.vertical)
                
                
                //divider
                HStack{
                    Rectangle()
                        .frame(width: (UIScreen.main.bounds.width/2) - 40, height: 0.5)
                    Text("OR").font(.footnote).fontWeight(.semibold)
                    Rectangle()
                        .frame(width: (UIScreen.main.bounds.width/2) - 40, height: 0.5)
                }.foregroundColor(.gray)
                
                
                //facebook connect
                HStack{
                    Image("fb")
                        .resizable()
                        .frame(width:20, height:20)
                    
                    Text("Continue with facebook")
                        .font(.footnote)
                        .fontWeight(.semibold)
                        .foregroundColor(Color(.systemBlue))
                }.padding(.top, 8)
                
                Spacer()
                
                Divider()
                
                //create an account
                NavigationLink{
                    AddEmailView().navigationBarBackButtonHidden(true)
                } label:{
                    HStack(spacing: 3){
                        Text("Don't have an account?")
                        Text("Sign Up").fontWeight(.semibold)
                    }.font(.footnote)
                }.padding(.vertical, 16)
            }
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
