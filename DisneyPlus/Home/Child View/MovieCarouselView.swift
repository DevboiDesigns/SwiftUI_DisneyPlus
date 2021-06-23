//
//  MovieCarouselView.swift
//  DisneyPlus
//
//  Created by Christopher Hicks on 6/23/21.
//

import SwiftUI

struct MovieCarouselView: View {
    
    @State private var _currentIndex = 0
    var pageViews = [Image]()
    
    
    var body: some View {
        VStack(spacing: 10) {
            TabView(selection: $_currentIndex.animation()) {
                ForEach(0..<pageViews.count, id: \.self) { index in
                    pageViews[index]
                        .resizable()
                        .aspectRatio(1.7, contentMode: .fill) // 1.7 = the default width of og image
                    
                }
            }
            .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
            .frame(height: 225)
            
            HStack {
                ForEach(0..<pageViews.count, id: \.self) { index in
                    Circle()
                        .fill(index == _currentIndex ? Color.red : Color.red.opacity(0.3))
                        .frame(width: 5, height: 5)
                        .scaleEffect(index == _currentIndex ? 1.5 : 1)
                }
            }
        }
    }
}

struct MovieCarouselView_Previews: PreviewProvider {
    static var previews: some View {
        MovieCarouselView(pageViews: [Image("pg-mandalorian"), Image("pg-mulan")])
    }
}
