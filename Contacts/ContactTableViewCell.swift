//
//  ContactTableViewCell.swift
//  Contacts
//
//  Created by Alina Bikkinina on 02.07.2021.
//

import UIKit

class ContactTableViewCell: UITableViewCell {
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var numberLabel: UILabel! 

    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    func setData(contact: ContactCellData) {
        self.nameLabel.text = contact.contactName
        self.numberLabel.text = contact.phoneNumber
    }

}
 
