//
//  Town.swift
//  Lect3
//
//  Created by user on 09.02.2024.
//  Copyright © 2024 user. All rights reserved.
//
//{"name":"Екатеринбург","timezone":"Asia/Yekaterinburg","coords":{"lat":56.838606999999996,"lon":60.60551400000001},"currency":"RUB"}

struct Town: Decodable {
    let name: String
    //let nameee: String?
    let timezone: String
    let coords: Coordinate
    let currency: String
}

struct Coordinate: Decodable {
    let lan: Double
    let lon: Double
}
