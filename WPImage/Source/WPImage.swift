//
//  WPImage.swift
//  WPImage
//
//  Created by Vinicius Mangueira on 02/10/19.
//  Copyright © 2019 Vinicius Mangueira. All rights reserved.
//

import SwiftUI

struct WPImage: View {

    @ObservedObject fileprivate var imageLoader: ImageLoader

    fileprivate let image = UIImage()

    init(imageUrl: String) {
        self.imageLoader = ImageLoader(imageUrl: imageUrl)
    }

    init(imageUrl: String, placeholder: String) {
        imageLoader = ImageLoader(imageUrl: imageUrl, placeholder: placeholder)
    }

    var body: some View {
        Image(uiImage: (imageLoader.data.count == 0) ? image : UIImage(data: imageLoader.data)!)
    }
    
}
