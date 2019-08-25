//
//  PartListViewController.swift
//  Bhartiya Samvidhan
//
//  Created by RAMDHAN CHOUDHARY on 23/08/19.
//  Copyright © 2019 RDC Innovations Pvt Ltd. All rights reserved.
//

import UIKit

class PartListViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    @IBOutlet weak var tableView: UITableView!
    
    //var partListArry = [String]()
    var partListArry = [[String: String]]()
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "PARTS"
        navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: .plain, target: nil, action: nil)


        //tableView.register(UITableViewCell.self, forCellReuseIdentifier: "PartViewCell")
        tableView.register(UINib(nibName: "PartViewCell", bundle: nil), forCellReuseIdentifier: "PartViewCell")


        partListArry.append(["index": "PART I", "name": "THE UNION AND ITS TERRITORY", "article":"Art.(1-4)"])
        partListArry.append(["index": "PART II", "name": "CITIZENSHIP", "article":"Art.(5-11)"])
        partListArry.append(["index": "PART III", "name": "FUNDAMENTAL RIGHTS", "article":"Art.(12-35)"])
        partListArry.append(["index": "PART IV", "name": "DIRECTIVE PRINCIPLES OF STATE POLICY", "article":"Art.(36-51)"])
        partListArry.append(["index": "PART IVA", "name": "FUNDAMENTAL DUTIES", "article":"Art.(51A)"])
        partListArry.append(["index": "PART V", "name": "THE UNION", "article":"Art.(52-151)"])
        partListArry.append(["index": "PART VI", "name": "THE STATES", "article":"Art.(152-237)"])
        partListArry.append(["index": "PART VII", "name": "THE STATES IN PART B OF THE FIRST SCHEDULE", "article":"Art.(238)"])
        partListArry.append(["index": "PART VIII", "name": "THE UNION TERRITORIES", "article":"Art.(239-243)"])
        partListArry.append(["index": "PART IX", "name": "PANCHAYATS", "article":"Art.(243-243zg)"])
        partListArry.append(["index": "PART IXA", "name": "MUNICIPALITIES", "article":"Art.(243-243zg)"])
        partListArry.append(["index": "PART X", "name": "THE SCHEDULED AND TRIBAL AREAS", "article":"Art.(244-244A)"])
        partListArry.append(["index": "PART XI", "name": "RELATIONS BETWEEN THE UNION AND THE STATES", "article":"Art.(245-263)"])
        partListArry.append(["index": "PART XII", "name": "FINANCE, PROPERTY, CONTRACTS AND SUITS", "article":"Art.(264-300A)"])
        partListArry.append(["index": "PART XIII", "name": "TRADE, COMMERCE AND INTERCOURSE WITHIN THE TERRITORY OF INDIA", "article":"Art.(301-307)"])
        partListArry.append(["index": "PART XIV", "name": "SERVICES UNDER THE UNION AND THE STATES", "article":"Art.(308-323)"])
        partListArry.append(["index": "PART XIVA", "name": "TRIBUNALS", "article":"Art.(323A-323B)"])
        partListArry.append(["index": "PART XV", "name": "ELECTIONS", "article":"Art.(324-329A)"])
        partListArry.append(["index": "PART XVI", "name": "SPECIAL PROVISIONS RELATING TO CERTAIN CLASSES", "article":"Art.(330-342)"])
        partListArry.append(["index": "PART XVII", "name": "OFFICIAL LANGUAGE", "article":"Art.(343-351)"])
        partListArry.append(["index": "PART XVIII", "name": "EMERGENCY PROVISIONS", "article":"Art.(352-360)"])
        partListArry.append(["index": "PART XIX", "name": "MISCELLANEOUS", "article":"Art.(361-367)"])
        partListArry.append(["index": "PART XX", "name": "AMENDMENT OF THE CONSTITUTION", "article":"Art.(368)"])
        partListArry.append(["index": "PART XXI", "name": "TEMPORARY, TRANSITIONAL AND SPECIAL PROVISIONS", "article":"Art.(369-392)"])
        partListArry.append(["index": "PART XXII", "name": "SHORT TITLE, COMMENCEMENT, AUTHORITATIVE TEXT IN HINDI AND REPEALS", "article":"Art.(393-395)"])

    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return partListArry.count
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        if indexPath.row == partListArry.count - 1
        {
            return 100
        }
        else
        {
            return 70
        }
        
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "PartViewCell") as! PartViewCell
        cell.selectionStyle = .none
        
        let partDict = partListArry[indexPath.row]
        cell.partIndexLabel.text = partDict["index"]
        cell.partNameLabel.text = partDict["name"]
        cell.partArticleLabel.text = partDict["article"]

        return cell
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "showArticleListViewController", sender: self)
    }
    

}
