//
//  FeedDetailViewController.swift
//  MyFirstProject
//
//  Created by std102 on 5/30/17.
//  Copyright © 2017 aumrroi. All rights reserved.
//

import UIKit

class FeedDetailViewController: UIViewController {
    @IBOutlet weak var detailTextView: UITextView!
    @IBOutlet weak var accessoryLabel: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var headerImgView: UIImageView!
    
    var news:News?
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        self.news = News(title: "IOS", description: "Error lets stop doing this", iconImage: #imageLiteral(resourceName: "cheese_flat"), author: "คฑาวุธ", view: 2, createDate: "30/05/2560", myTypeNews: "แผนกขาย")
        
        self.setupUI()
        
        
    }
    
    


    
    @IBAction func onClickSaveButton(_ sender: Any) {
        print("Click")
    }
    
    
    func setupUI(){
        if let news = self.news{
            self.headerImgView.image = news.iconImage
            self.detailTextView.text = news.description
            self.accessoryLabel.text = "\(news.author) ● \(news.view) ● \(news.createDate))"
            self.titleLabel.text = news.myTypeNews
        
        
        
            
        }
    }

    
}
