//
//  SearchView.swift
//  Circles
//
//  Created by MAC on 02/04/2024.
//

import SwiftUI

struct SearchView: View {
    @State private var searchText = ""
    
    var body: some View {
        NavigationStack{
            ScrollView{
                LazyVStack(spacing: 12){
                    ForEach(User.MOCK_USERS) { user in
                        NavigationLink(destination:  ProfileView(user: user)) {
                            HStack{
                                //image
                                Image(user.profileImageUrl ?? "")
                                    .resizable()
                                    .scaledToFill()
                                    .frame(width: 40, height:40)
                                    .clipShape(Circle())
                                
                                //username + fullname
                                VStack(alignment: .leading) {
                                    Text(user.username)
                                        .fontWeight(.semibold)
                                    
                                    if let fullname = user.fullname {
                                        Text(fullname)
                                    }
                                }.font(.footnote)
                                Spacer()
                            }.padding(.horizontal).foregroundColor(.black)
                        }
                    }
                }.padding(.top, 8).searchable(text: $searchText, prompt: "search...")
            }
            .navigationTitle("Explore")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
