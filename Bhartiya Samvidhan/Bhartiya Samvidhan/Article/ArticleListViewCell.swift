//
//  ArticleListViewCell.swift
//  Bhartiya Samvidhan
//
//  Created by RAMDHAN CHOUDHARY on 24/08/19.
//  Copyright © 2019 RDC Innovations Pvt Ltd. All rights reserved.
//

import UIKit

class ArticleListViewCell: UITableViewCell {
    @IBOutlet weak var articleIndexLabel: UILabel!
    
    @IBOutlet weak var articleNameLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
