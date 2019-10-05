# WPImage 🗾
<p align="center">
    <img width="417" alt="Screen Shot 2019-08-28 at 22 25 25" src="https://user-images.githubusercontent.com/32227073/66255734-99cf8680-e75d-11e9-9e13-6fc6905f8ec9.png">
</p>

![Swift](https://img.shields.io/badge/Swift-5.0-orange.svg)
[![Build Status](https://travis-ci.org/ViniciusDeep/CBuilder.svg?branch=master)](https://travis-ci.org/ViniciusDeep/CBuilder)

✨Reactive image downloader with cache support as a Image using Combine

## At a Glance

```swift
import WPImageKit

struct ContentView: View {
    var body: some View {
        VStack {
            WPImage(imageUrl: "https://rickandmortyapi.com/api/character/avatar/1.jpeg", placeholder: "placeholder")
        }
    }
}
```

## Small Advantages

* You can abstract the all task to download image to put in your View.

* Automatic Cache, don't worry in make a cache.

* Sugar syntatic, just pass to init of WPImage, and customize your Image


## Installation
1. This library is avaiable in Swift Package Manager, so just install...
 

## License

**WPImage** is under MIT license. See the [LICENSE](LICENSE) file for more info.
