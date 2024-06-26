//
//  UploadPostView.swift
//  Circles
//
//  Created by MAC on 02/04/2024.
//

import SwiftUI
import PhotosUI

struct UploadPostView: View {
    @State private var caption = ""
    @State private var imagePickerPresented = false
    @StateObject var  viewModel = UploadPostViewModel()
    @Binding var tabIndex: Int
    
    
    var body: some View {
        VStack{
            //action tool bar
            HStack{
                Button{
                    caption = ""
                    viewModel.selectedImage = nil
                    viewModel.postImage = nil
                    tabIndex = 0
                }label:{
                    Text("cancel")
                }
                
                Spacer()
                
                Text("New Post").fontWeight(.semibold)
                
                Spacer()
                
                Button{
                    print("upload")
                }label:{
                    Text("upload").fontWeight(.semibold)
                }
            }.padding(.horizontal)
            
            //post image and caption
            HStack(spacing:8){
                if let image = viewModel.postImage{
                    image.resizable().scaledToFill() .frame(width: 100, height: 100).clipped()
                }
                TextField("Enter your caption...", text: $caption, axis: .vertical)
                    .autocapitalization(.none)
                    .modifier(TextFieldModifier())
            }.padding()
            
            Spacer()
        }
        .onAppear() {
            imagePickerPresented.toggle()
        }
        .photosPicker(isPresented: $imagePickerPresented, selection: $viewModel.selectedImage)
    }
}

struct UploadPostView_Previews: PreviewProvider {
    static var previews: some View {
        UploadPostView(tabIndex: .constant(0))
    }
}
