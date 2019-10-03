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
                WPImage(imageUrl: "https://firebasestorage.googleapis.com/v0/b/lvlopers.appspot.com/o/images_user%2F3CactcFni5QxYpQXM5TOCEBK6Y43.jpg?alt=media&token=b2966056-c850-4b73-a07e-f7a4c5aac15c")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
