//
//  ContactViewController.swift
//  Contacts
//
//  Created by Alina Bikkinina on 02.07.2021.
//

import UIKit

class ContactViewController: UIViewController {
    @IBOutlet weak var contactImageView: UIImageView!
    @IBOutlet weak var numberUILabel: UILabel!
    @IBOutlet weak var nameUILabel: UILabel!
    @IBOutlet weak var jobUILabel: UILabel!
    @IBOutlet weak var commentUITextView: UITextView!
    
    var person: ContactCellData?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        numberUILabel.text = person?.phoneNumber
        nameUILabel.text = person?.contactName
        jobUILabel.text = person?.job
        commentUITextView.text = person?.comment
    }
}
