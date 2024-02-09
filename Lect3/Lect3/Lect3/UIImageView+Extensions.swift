//
//  UIImageView+Extensions.swift
//  Lect3
//
//  Created by user on 09.02.2024.
//  Copyright © 2024 user. All rights reserved.
//

import Foundation
import UIKit

extension UIImageView {
    
    func getDogImage() {
        
        let session = URLSession.shared
        guard let url = URL(string: "https://random.dog/woof.json") else {
            return
        }
        session.dataTask(with: url) { (data, _, networkError) in
            guard let data = data else {
                return
            }
            do {
                let images = try JSONDecoder().decode(Images.self , from: data)
                print(images.url)
            } catch {
                print (error)
            }
            }.resume()
        
    }
}
