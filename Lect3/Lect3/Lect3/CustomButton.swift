//
//  CustomButton.swift
//  Lect3
//
//  Created by user on 09.02.2024.
//  Copyright © 2024 user. All rights reserved.
//

import UIKit

final class CustomButton: UIButton {
    init(text: String) {
        super.init(frame: .zero)
        setTitle("Изменить цвет экрана", for: .normal)
        setTitleColor(.white, for: .normal)
        backgroundColor = .blue
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
