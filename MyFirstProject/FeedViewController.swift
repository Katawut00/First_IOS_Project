//
//  FeedViewController.swift
//  MyFirstProject
//
//  Created by std102 on 5/29/17.
//  Copyright © 2017 aumrroi. All rights reserved.
//

import UIKit

class FeedViewController: UIViewController {
    @IBOutlet weak var tableView: UITableView!
        var newsArray:[News] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        setupTableview()
        setupTableViewDummyData()
    }
    func setupTableview(){
         self.tableView.register(UINib(nibName: "FeedTableViewCell", bundle: nil), forCellReuseIdentifier: "FeedTableViewCell")
    }
    func setupTableViewDummyData(){
        var news:News = News(title: "IOS", description: "Error lets stop doing this", iconImage: #imageLiteral(resourceName: "cheese_flat"), author: "คฑาวุธ", view: 2, createDate: "30/05/2560", myTypeNews: "แผนกขาย")
        var news2:News = News(title: "Android", description: "5555+", iconImage: #imageLiteral(resourceName: "cat"), author: "แจ๊ค", view: 5, createDate: "30/05/2560", myTypeNews: "แผนกขนส่ง")
        newsArray.append(news)                                                                                                     
        newsArray.append(news2)
        newsArray.append(news2)
        newsArray.append(news2)
    }
}
extension FeedViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return newsArray.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let rowNo = indexPath.row
        let cell = tableView.dequeueReusableCell(withIdentifier: "FeedTableViewCell", for: indexPath) as! FeedTableViewCell
        
        var news = newsArray[rowNo]
        cell.setupUI(news:news)
              return cell
    }
    
    
}
