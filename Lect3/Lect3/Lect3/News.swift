//
//  News.swift
//  Lect3
//
//  Created by user on 09.02.2024.
//  Copyright © 2024 user. All rights reserved.
//

struct NewsResults: Decodable {
    let results: [News]
}

struct News: Decodable {
    
    let publicationDate: Int
    let title: String
    let bodyText: String
    
    enum CodingKeys: String, CodingKey {
        case publicationDate = "publication_date"
        case title
        case bodyText = "body_text"
    }
    
    
}
