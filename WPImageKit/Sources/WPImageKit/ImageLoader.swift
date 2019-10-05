//
//  ImageLoader.swift
//  WPImage
//
//  Created by Vinicius Mangueira on 02/10/19.
//  Copyright © 2019 Vinicius Mangueira. All rights reserved.
//

import SwiftUI
import Combine

@available(iOS 13.0, *)
public class ImageLoader: ObservableObject {

    var didChange = PassthroughSubject<Data, Never>()

    @Published var data = Data() {
        didSet {
            didChange.send(data)
        }
    }

    init(imageUrl: String) {
        guard let url = URL(string: imageUrl) else { return }
        URLSession.shared.dataTask(with: url) { (data, _, _) in
            guard let data = data else { return }
            DispatchQueue.main.async {
                self.data = data
            }
        }.resume()
    }

    init(imageUrl: String, placeholder: String) {
        guard let url = URL(string: imageUrl) else {
            self.usePlaceholderImage(placeholder: placeholder)
            return
        }
        URLSession.shared.dataTask(with: url) { (data, _, _) in
            guard let data = data else {
                self.usePlaceholderImage(placeholder: placeholder)
                return
            }
            DispatchQueue.main.async {
                self.data = data
            }
        }.resume()
    }

    private func usePlaceholderImage(placeholder: String) {
        DispatchQueue.main.async {
            if let placeholderImageData = UIImage(named: placeholder)?.pngData() {
                self.data = placeholderImageData
            }
        }
    }
}
