//
//  TableView + RealodInMainThread Extension.swift
//  Movie Assignment
//
//  Created by bako abdullah on 5/10/20.
//  Copyright © 2020 bako abdullah. All rights reserved.
//

import UIKit
extension UITableView{
    func reloadInMainThread(){
        DispatchQueue.main.async {
            self.reloadData()
        }
    }
}
