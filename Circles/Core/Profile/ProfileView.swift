//
//  ProfileView.swift
//  Circles
//
//  Created by MAC on 01/04/2024.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        VStack{
            //header
            VStack{
                //pic and stats/
                HStack{
                    
                }
                
                //name and bio
                VStack(alignment: .leading, spacing:4){
                    Text("Nicki Minajed")
                        .font(.footnote)
                        .fontWeight(.semibold)
                    Text("Gag slay on Pinky Friday").font(.footnote)
                }.frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.horizontal)
                
                //action button
                Button {
                    
                }label:{
                    Text("Edit Profile").font(.subheadline)
                        .fontWeight(.semibold)
                        .frame(width: 360, height: 32)
                        .foregroundColor(.black)
                        .overlay(RoundedRectangle(cornerRadius: 6).stroke(Color.gray, lineWidth:1) )
                }
            }
            //post grid view
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
