//
//  ArticleListViewController.swift
//  Bhartiya Samvidhan
//
//  Created by RAMDHAN CHOUDHARY on 24/08/19.
//  Copyright © 2019 RDC Innovations Pvt Ltd. All rights reserved.
//

import UIKit

class ArticleListViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
        
        //var articleListArry = [String]()
        var articleListArry = [[String: String]]()
        
        
        override func viewDidLoad() {
            super.viewDidLoad()
            self.title = "ARTICLES"
            navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: .plain, target: nil, action: nil)

            
            tableView.register(UINib(nibName: "ArticleListViewCell", bundle: nil), forCellReuseIdentifier: "ArticleListViewCell")

            articleListArry.append(["index": "1.", "name": "Name and territory of the union"])
            articleListArry.append(["index": "2.", "name": "Admission or establishment of new States."])
            articleListArry.append(["index": "2A.", "name": "[Repealed.]"])
            articleListArry.append(["index": "3.", "name": "Formation of new States and alteration of areas, boundaries or names of existing States."])
            articleListArry.append(["index": "4.", "name": "Laws made under article 2 and 3 to provide for the amendment of the First and the Fourth Schedules and supplemental incidental and consequential matters."])

            
            
            
        }
        
        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return articleListArry.count
        }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
        
        
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            
            let cell = tableView.dequeueReusableCell(withIdentifier: "ArticleListViewCell") as! ArticleListViewCell
            cell.selectionStyle = .none
            
            let articleDict = articleListArry[indexPath.row]
            cell.articleIndexLabel.text = articleDict["index"]
            cell.articleNameLabel.text = articleDict["name"]
                        
            return cell
        }
        
        func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
            performSegue(withIdentifier: "showArticleDetailsViewController", sender: self)
        }
        
        
}
