//
//  Films.swift
//  Lect3
//
//  Created by user on 09.02.2024.
//  Copyright © 2024 user. All rights reserved.
//

struct FilmsResults: Decodable {
    let results: [Films]
}

struct Films: Decodable {
    let siteUrl: String
    let title: String
    let bodyText: String
    let country: String
    let year: Int
    let imdbRating: Double
    
    enum CodingKeys: String, CodingKey {
        case siteUrl = "site_url"
        case title
        case bodyText = "body_text"
        case country
        case year
        case IMDBRating = "imdb_rating"
    }
}

