//
//  Home.swift
//  Carousell
//
//  Created by Ruangguru on 06/04/22.
//

import SwiftUI

struct Home: View {
    
    @State var currentTab = "p1"
    
    var body: some View {
        ZStack {
            GeometryReader { proxy in
                let size = proxy.size
                Image(currentTab)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: size.width, height: size.height)
                    .cornerRadius(1)
            }
            .ignoresSafeArea()
            .overlay(.ultraThinMaterial)
            .colorScheme(.dark)
            
            // Carousel List
            
            TabView(selection: $currentTab) {
                ForEach(1...7, id: \.self) { index in
                    // Body View
                    CarouselBodyView(index: index)
                    
                }
            }
            .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
        }
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
