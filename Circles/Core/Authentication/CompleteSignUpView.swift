//
//  CompleteSignUpView.swift
//  Circles
//
//  Created by MAC on 02/04/2024.
//

import SwiftUI

struct CompleteSignUpView: View {
    
    @State private var username = ""
        @Environment(\.dismiss) var dismiss

        var body: some View {
            VStack(spacing:12){
                Spacer()
                //title
                Text("Welcome to Circle, Stephen_fx")
                    .font(.title2)
                    .fontWeight(.bold)
                    .padding(.top)
                    .multilineTextAlignment(.center)
                
                Text("Click below to complete your registration and start using Circle")
                    .font(.footnote)
                    
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 24)
                
                
                //complete button
                Button{
                 print("Sign up complete")
                }label: {
                Text("Complete Sign Up")
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

struct CompleteSignUpView_Previews: PreviewProvider {
    static var previews: some View {
        CompleteSignUpView()
    }
}
