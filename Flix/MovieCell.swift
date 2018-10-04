//
//  MovieCell.swift
//  Flix
//
//  Created by Peterson Edouard on 10/4/18.
//  Copyright © 2018 Peterson Edouard. All rights reserved.
//

import UIKit

class MovieCell: UITableViewCell {

    @IBOutlet weak var titlelable: UILabel!
    @IBOutlet weak var overviewlabel: UILabel!
    
    @IBOutlet weak var posterImageView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
