//
//  GalleryView.swift
//  8-swift-restaurant (iOS)
//
//  Created by Liu Ziyi on 1/6/23.
//

import SwiftUI

struct GalleryView: View {
    
    @State var photoData = [String]()
    var dataService = DataService()
    
    var body: some View {
        
        VStack(alignment:.leading) {
            Text("Gallery")
                .font(.largeTitle)
                .bold()
            
            GeometryReader { proxy in
                ScrollView(showsIndicators: false) {
                    LazyVGrid(columns:[GridItem(spacing: 10),
                                       GridItem(spacing: 10),
                                       GridItem(spacing: 10)],
                              spacing:10){
                        ForEach(photoData, id: \.self){ p in
                            Image(p)
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(maxWidth:(proxy.size.width-20)/3)
                                .clipped()
                        }
                    }
                }
            }
            
        }
        .onAppear{
            photoData = dataService.getPhotos()
        }
        
    }
}

struct GalleryView_Previews: PreviewProvider {
    static var previews: some View {
        GalleryView()
    }
}
