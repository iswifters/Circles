//
//  CurrentUserProfileView.swift
//  Circles
//
//  Created by MAC on 02/04/2024.
//

import SwiftUI

struct CurrentUserProfileView: View {
    let user : User
    var posts : [Post] {
        return Post.MOCK_POSTS.filter({$0.user?.username == user.username})
    }
        
        var body: some View {
            NavigationStack{
                ScrollView{
                    //header
                    ProfileHeaderView(user: user)
                    
                    //post grid view
                    PostGridView(posts: posts)
                }.navigationTitle("profile").navigationBarTitleDisplayMode(.inline)
                    .toolbar{
                        ToolbarItem(placement:.navigationBarTrailing){
                            Button{
                            }label:{
                                Image(systemName: "line.3.horizontal").foregroundColor(.black)
                            }
                        }
                    }
                
            }
        
    }
}

struct CurrentUserProfileView_Previews: PreviewProvider {
    static var previews: some View {
        CurrentUserProfileView(user:User.MOCK_USERS[2])
    }
}
