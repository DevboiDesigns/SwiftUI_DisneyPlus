//
//  ButtonGroupView.swift
//  DisneyPlus
//
//  Created by Christopher Hicks on 6/23/21.
//

import SwiftUI

struct ButtonGroupView: View {
    @State private var _groupname: String? = nil
    
    var body: some View {
        
        NavigationLink(
            destination: Text("Destination"),
            tag: _groupname ?? MovieGroup.disney.rawValue,
            selection: $_groupname) {
            EmptyView()
        }
        
        HStack {
            Button(action: {
                _groupname = MovieGroup.disney.rawValue
            }, label: {
                image(name: "logo-disney")
            })
            
            Button(action: {
                _groupname = MovieGroup.disney.rawValue
            }, label: {
                image(name: "logo-marvel")
            })
            
            Button(action: {
                _groupname = MovieGroup.disney.rawValue
            }, label: {
                image(name: "logo-pixar")
            })
            
            Button(action: {
                _groupname = MovieGroup.disney.rawValue
            }, label: {
                image(name: "logo-starWars")
            })
            
            Button(action: {
                _groupname = MovieGroup.disney.rawValue
            }, label: {
                image(name: "logo-natgeo")
            })
            
            
        }
        .buttonStyle(SquareButtonStyle(size: UIScreen.main.bounds.width/6))
    }
    
    private func image(name: String) -> some View {
        return Image(name)
            .resizable()
            .aspectRatio(2.8, contentMode: .fit)
            .frame(height: 20)
    }
}

struct ButtonGroupView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonGroupView()
    }
}
