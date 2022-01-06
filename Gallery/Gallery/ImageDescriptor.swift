//
//  ImageDescriptor.swift
//  Gallery
//
//  Created by Konstantin Zaimov on 11/25/21.
//

import Foundation


struct ImageDescriptor{
    var image = ""
    var name = ""
    var description = ""
    
}

extension ImageDescriptor : Decodable{
    static func parseFromJSON() -> [ImageDescriptor] {
        let JSON = """
        [
          {
            "image": "benjamin-davies-Zm2n2O7Fph4-unsplash.jpg",
            "name": "",
            "description": ""
          },
          {
            "image": "datingscout-riQ2qZihCBg-unsplash.jpg",
            "name": "",
            "description": ""
          },
          {
            "image": "ethan-dow-1NNRPXWp-_M-unsplash.jpg",
            "name": "",
            "description": ""
          },
          {
            "image": "ethan-dow-2JLN11-aHmM-unsplash.jpg",
            "name": "",
            "description": ""
          },
          {
            "image": "ethan-dow-TziAdl8DLJE-unsplash.jpg",
            "name": "",
            "description": ""
          },
          {
            "image": "ethan-dow-ZeDw8ck4XEM-unsplash.jpg",
            "name": "",
            "description": ""
          },
          {
            "image": "evgeni-evgeniev-ggVH1hoQAac-unsplash.jpg",
            "name": "",
            "description": ""
          },
          {
            "image": "gerson-repreza-hniuowbXbBY-unsplash.jpg",
            "name": "",
            "description": ""
          },
          {
            "image": "harley-davidson-bs1eqd6zSiU-unsplash.jpg",
            "name": "",
            "description": ""
          },
          {
            "image": "jakob-owens-1_0KyvVdtP4-unsplash.jpg",
            "name": "",
            "description": ""
          },
          {
            "image": "jenelle-_6YXOv-l7AI-unsplash.jpg",
            "name": "",
            "description": ""
          },
          {
            "image": "jesse-gardner-tpnsrFbpU3o-unsplash.jpg",
            "name": "",
            "description": ""
          },
          {
            "image": "kaue-fonseca-EaWsEKHzQDY-unsplash.jpg",
            "name": "",
            "description": ""
          },
          {
            "image": "luke-southern-4kCGEB7Kt4k-unsplash.jpg",
            "name": "",
            "description": ""
          },
          {
            "image": "marcio-marim-fJLeFZJAokM-unsplash.jpg",
            "name": "",
            "description": ""
          },
          {
            "image": "marek-piwnicki-4kHVKkdcTDU-unsplash.jpg",
            "name": "",
            "description": ""
          },
          {
            "image": "markus-spiske-8OyKWQgBsKQ-unsplash.jpg",
            "name": "",
            "description": ""
          },
          {
            "image": "matteo-paganelli-rRJ0aA6AIpQ-unsplash.jpg",
            "name": "",
            "description": ""
          }
        ]
        """//тук пействате всичко от JSON-а
        let jsonData = JSON.data(using: .utf8)!
        let images: [ImageDescriptor] = try! JSONDecoder().decode([ImageDescriptor].self, from: jsonData)
        print(images.count)
        return images
    }
}
