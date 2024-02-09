//
//  TabViewController.swift
//  Lect3
//
//  Created by user on 09.02.2024.
//  Copyright © 2024 user. All rights reserved.
//

import UIKit

final class TableViewController: UITableViewController {
    private let networkService =  NetworkService()
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .purple
        
        networkService.task()
        //networkService.processError(errorCode: 404)
        //networkService.getNews()
        //networkService.getPlaces()
        //networkService.getFilms()
    }
    override func numberOfSections(in tableView: UITableView) -> Int {
        3
    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        5
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        CustomTableVC()
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section:Int) -> String? {
        if section == 0 {
            return "Section1"
        } else if section == 1 {
            return "Section2"
        } else {
            return "Section3"
        }
    }
}
