//
//  ImageLoader.swift
//  WPImage
//
//  Created by Vinicius Mangueira on 02/10/19.
//  Copyright © 2019 Vinicius Mangueira. All rights reserved.
//

import SwiftUI
import Combine

class ImageLoader: ObservableObject {
    
    var didChange = PassthroughSubject<ImageLoader, Never>()
    
    var data: Data = Data() {
        didSet {
            didChange.send(self)
        }
    }
    
    init(imageUrl: String) {
        guard let url = URL(string: imageUrl) else {return}
        URLSession.shared.dataTask(with: url) { (data, _, _) in
            guard let data = data else {return}
            
            DispatchQueue.main.async {
                self.data = data
            }
        }.resume()
    }
}
