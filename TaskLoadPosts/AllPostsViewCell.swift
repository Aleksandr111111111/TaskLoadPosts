//
//  AllPostsViewCell.swift
//  TaskLoadPosts
//
//  Created by Aleksander Kulikov on 31.01.2022.
//

import UIKit

class AllPostsViewCell: UITableViewCell {
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var secondariLabel: UILabel!
    @IBOutlet weak var buttonLikes: UIButton!
    @IBOutlet weak var timePost: UIButton!
    
   
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    @IBAction func readMareAction(_ sender: Any) {
        
    }
    
    @IBAction func likasAction(_ sender: Any) {
    }
    
    @IBAction func timeAction(_ sender: Any) {
    }
    
}
