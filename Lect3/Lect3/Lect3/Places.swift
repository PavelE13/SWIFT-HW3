//
//  Places.swift
//  Lect3
//
//  Created by user on 09.02.2024.
//  Copyright © 2024 user. All rights reserved.
//

struct PlacesResults: Decodable {
    let results: Place
}

struct Place: Decodable {
    let title: String
    let address: String
    let phone: String
}
