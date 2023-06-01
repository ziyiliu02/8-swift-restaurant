//
//  ContentView.swift
//  Shared
//
//  Created by Liu Ziyi on 1/6/23.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        
        TabView {
            
            MenuView()
                .tabItem {
                    VStack {
                        Image(systemName: "menucard")
                        Text("Menu")
                    }
                }
            
            AboutView()
                .tabItem {
                    Image(systemName: "info.circle")
                    Text("About")
                }
            
            GalleryView()
                .tabItem {
                    Image(systemName: "photo")
                    Text("Gallery")
                }
            
        }
        
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
