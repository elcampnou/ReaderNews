//
//  ArticleHeaderTableViewCell.swift
//  NextFlym
//
//  Created by Elfassi Mounir on 1/3/16.
//  Copyright © 2016 Elfassi Mounir. All rights reserved.
//

import UIKit

class ArticleHeaderTableViewCell: UITableViewCell {
    
    //@IBOutlet weak var articleImageView: UIImageView!
    //@IBOutlet weak var articleTitleLabel: UILabel!
    
    @IBOutlet weak var articleImageView: UIImageView!
    
    @IBOutlet weak var articleTitleLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
}

