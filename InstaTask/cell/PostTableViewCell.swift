//
//  PostTableViewCell.swift
//  InstaTask
//
//  Created by macbro on 21/04/22.
//

import UIKit

class PostTableViewCell: UITableViewCell {
    @IBOutlet weak var imageProfil: UIImageView!
    @IBOutlet weak var nameProfil: UILabel!
    
    @IBOutlet weak var postFirstImage: UIImageView!
    
    @IBOutlet weak var postSecondImage: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
