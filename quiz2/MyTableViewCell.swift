//
//  MyTableViewCell.swift
//  quiz2
//
//  Created by Admin on 31.01.2021.
//
//


import UIKit

class MyTableViewCell: UITableViewCell {

    @IBOutlet weak var myLbl: UILabel!
    @IBOutlet weak var myCell: UIView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    

}
