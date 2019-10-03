//
//  ContentView.swift
//  WPImage
//
//  Created by Vinicius Mangueira on 02/10/19.
//  Copyright © 2019 Vinicius Mangueira. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
                WPImage(imageUrl: "https://rickandmortyapi.com/api/character/avatar/1.jpeg")
             
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
