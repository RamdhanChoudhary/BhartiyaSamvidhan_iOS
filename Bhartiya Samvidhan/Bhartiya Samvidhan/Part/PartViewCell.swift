//
//  PartViewCell.swift
//  Bhartiya Samvidhan
//
//  Created by RAMDHAN CHOUDHARY on 24/08/19.
//  Copyright © 2019 RDC Innovations Pvt Ltd. All rights reserved.
//

import UIKit

class PartViewCell: UITableViewCell {
    
    @IBOutlet weak var partIndexLabel: UILabel!
    @IBOutlet weak var partNameLabel: UILabel!
    
    @IBOutlet weak var partNameTextView: UITextView!
    
    @IBOutlet weak var partArticleLabel: UILabel!
    


    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
