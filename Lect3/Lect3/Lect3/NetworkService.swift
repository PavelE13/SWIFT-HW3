//
//  NetworkService.swift
//  Lect3
//
//  Created by user on 09.02.2024.
//  Copyright © 2024 user. All rights reserved.
//

import UIKit
import Foundation

private let session = URLSession.shared

final class NetworkService {
    func task() {
        guard let url = URL(string: "https://kudago.com/public-api/v1.2/locations/?lang=ru&fields=timezone,name,currency,coords") else {
            return
        }
            session.dataTask(with: url) { (data, _, networkError) in
                guard let data = data else {
                    return
                }
                do {
                    let towns = try JSONDecoder().decode([Town].self , from: data)
                    print(towns)
                } catch {
                    print (error)
                }
        }.resume()
        
    }

    func processError (errorCode: Int) {
        guard let url = URL(string: "https://http.cat/"+String(errorCode)) else {
            return
        }
        session.dataTask(with: url) {(data, _, _) in
            print(data)
        }.resume()
    }
    
    func getNews() {
        guard let url = URL(string: "https://kudago.com/public-api/v1.4/news/?fields=publication_date,title,body_text&text_format=text&actual_only=true") else {
            return
        }
        session.dataTask(with: url) { (data, _, networkError) in
            guard let data = data else {
                return
            }
            do {
                let news = try JSONDecoder().decode(NewsResults.self , from: data)
                print(news)
            } catch {
                print (error)
            }
            }.resume()
    }
    
        func getPlaces() {
            guard let url = URL(string: "https://kudago.com/public-api/v1.2/places/") else {
                return
            }
            session.dataTask(with: url) { (data, _, networkError) in
                guard let data = data else {
                    return
                }
                do {
                    let places = try JSONDecoder().decode([PlacesResults].self , from: data)
                    print(places)
                } catch {
                    print (error)
                }
                }.resume()
            
    }
    
    func getFilms() {
        guard let url = URL(string: "https://kudago.com/public-api/v1.2/movies/?fields=site_url,title,body_text,country,year,imdb_rating") else {
            return
        }
        session.dataTask(with: url) { (data, _, networkError) in
            guard let data = data else {
                return
            }
            do {
                let films = try JSONDecoder().decode([FilmsResults].self , from: data)
                print(films)
            } catch {
                print (error)
            }
            }.resume()
        
    }
}
