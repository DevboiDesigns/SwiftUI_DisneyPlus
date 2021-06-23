//
//  HomeView.swift
//  DisneyPlus
//
//  Created by Christopher Hicks on 6/23/21.
//

import SwiftUI

struct HomeView: View {
    @EnvironmentObject var homeVM: HomeViewModel
    
    var body: some View {
        NavigationView {
            ZStack {
                Rectangle()
                    .fill(LinearGradient(gradient: Gradient(colors: [Color.black, Color.darkGray.opacity(0.9)]), startPoint: .topLeading, endPoint: .bottomTrailing))
                    .edgesIgnoringSafeArea(.all)
                
                ScrollView(showsIndicators: false) {
                    VStack(alignment: .center, spacing: 10, content: {
                        Image("logo")
                            .resizable()
                            .frame(height: 40)
                            .aspectRatio(1.7 ,contentMode: .fit)
                        
                        MovieCarouselView(pageViews: homeVM.pageViews)
                        
                        ButtonGroupView()
                        
                        Spacer()
                    })
                }
            }
            .navigationBarHidden(true) // will push logo all the way to top
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            HomeView()
                .environment(\.colorScheme, .dark)
                .environmentObject(HomeViewModel())
            
            HomeView()
                .environment(\.colorScheme, .light)
                .environmentObject(HomeViewModel())
        }
    }
}
