//
//  UserStatView.swift
//  Circles
//
//  Created by MAC on 01/04/2024.
//

import SwiftUI

struct UserStatView: View {
    let value: Int
    let title: String
    
    var body: some View {
        VStack{
            Text("\(value)").font(.subheadline).fontWeight(.semibold)
            Text(title).font(.footnote)
        }.frame(width:76)
    }
}

struct UserStatView_Previews: PreviewProvider {
    static var previews: some View {
        UserStatView(value: 9, title: "title")
    }
}
