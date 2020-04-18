//
//  ViewController.swift
//  DogListings
//
//  Created by Jogendra on 18/04/20.
//  Copyright © 2020 Jogendra. All rights reserved.
//

import UIKit

class DogListViewController: UITableViewController {
    
    let dogList = AppConstants.Dogs.dogsData
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureNavigationHeader()
        registerCells()
    }
    
    private func configureNavigationHeader() {
        self.navigationItem.title = "Dog Listing"
    }
    
    private func registerCells() {
        self.tableView.register(DogTableViewCell.self, forCellReuseIdentifier: DogTableViewCell.description())
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dogList.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: DogTableViewCell.description()) as? DogTableViewCell {
            cell.setData(dogList[indexPath.row])
            return cell
        }
        return UITableViewCell()
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 140
    }
    
    
}

