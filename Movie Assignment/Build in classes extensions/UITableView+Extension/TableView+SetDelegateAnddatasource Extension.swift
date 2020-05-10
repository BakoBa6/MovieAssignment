//
//  TableView+SetDelegateAnddatasource Extension.swift
//  Movie Assignment
//
//  Created by bako abdullah on 5/10/20.
//  Copyright © 2020 bako abdullah. All rights reserved.
//

import UIKit
extension UITableView{
    func setDelegateAndDatasource<T:AnyObject>(toObject object:T){
        self.delegate = object.self as? UITableViewDelegate
        self.dataSource = object.self as? UITableViewDataSource
      }
}
