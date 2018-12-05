//
//  ViewController.swift
//  TablePractice
//
//  Created by 林雅明 on 12/4/18.
//  Copyright © 2018 Yaming. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var intArr = [Int]()
    var timer = Timer()
  
    @IBOutlet weak var tableView: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        
        tableView.rowHeight = UITableView.automaticDimension
        
        tableView.separatorStyle = .none
        
        for i in 0...5 {
            intArr.append(i)
        }
        
        timer = Timer.scheduledTimer(timeInterval: 0.5, target: self, selector: #selector(appendArr), userInfo: nil, repeats: true)
    }
    
    @objc func appendArr() {
        intArr.append(intArr.count * 2)
        
        tableView.reloadData()
        tableView.scrollToRow(at: IndexPath(row: intArr.count-1, section: 0), at: UITableView.ScrollPosition.bottom, animated: false)
    
        if intArr.count > 20 {
            timer.invalidate()
        }
        print(tableView.numberOfRows(inSection: 0))
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return intArr.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = UITableViewCell()
        
        cell.textLabel?.text = "\(intArr[indexPath.row]) \nmiaomiaomiao"
        
        if indexPath.row == 10 {
            cell.textLabel?.text = "ahfjakeyqgh2gjkdsi3 r4tkhwesdjfhy4t i4hkhwhkj2 jhei34uriehfkwfy4t"
            
        }
        
        if cell.textLabel?.text == "3 \nmiaomiaomiao" {
            cell.textLabel?.textAlignment = .right
        }
        
        
        cell.textLabel?.numberOfLines = 0
        
        return cell
    }
}

