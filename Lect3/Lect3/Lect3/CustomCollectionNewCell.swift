//
//  CustomCollectionNewCell.swift
//  Lect3
//
//  Created by user on 09.02.2024.
//  Copyright © 2024 user. All rights reserved.
//

import UIKit

final class CustomCollectionNewCell: UICollectionViewCell {
    private var cellImage = UIImageView (image: UIImage(systemName: "person"))
    
    var tap: ((UIImage) -> Void)?
    
    override init(frame: CGRect) {
        super.init(frame: <#T##CGRect#>)
        
        setupUI()
        addConstraints()
        
        let recognizer = UITapGestureRecognizer(target: self, action: #selector(click))
        addGestureRecognizer(recognizer)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupUI() {
        contentView.addSubview(cellImage)
        cellImage.getDogImage()
    }
    
    private func addConstraints() {
        cellImage.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            cellImage.topAnchor.constraint(equalTo: contentView.topAnchor),
            cellImage.leftAnchor.constraint(equalTo: contentView.leftAnchor),
            cellImage.rightAnchor.constraint(equalTo: contentView.rightAnchor),
            cellImage.bottomAnchor.constraint(equalTo: contentView.bottomAnchor)
            
            ])
    }
    
    @objc func click() {
        tap?(cellImage.image ?? UIImage())
    }
}
