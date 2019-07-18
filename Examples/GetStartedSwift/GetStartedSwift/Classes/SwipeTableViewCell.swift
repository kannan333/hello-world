//
//  SwipeTableViewCell.swift
//  MediTimeDoctor
//
//  Created by BLT0006-MACMI on 3/27/17.
//  Copyright © 2017 BlisslogixTechnologySolutions. All rights reserved.
//

import UIKit
//import SWTableViewCell

class SwipeTableViewCell: UITableViewCell {
    
    //Index 0
    @IBOutlet var select_Btn: UIButton!
    @IBOutlet weak var strengthAndGeneric_Btn: UIButton!
    
    @IBOutlet var companyName_Txt: UILabel!
    @IBOutlet weak var strength_Txt: MKTextField!
    @IBOutlet weak var lblSTRView5: UILabel!
    @IBOutlet weak var txtSTRView5: MKTextField!
    @IBOutlet weak var lblSTRsubView5: UILabel!
    @IBOutlet weak var viewLongPress: UIButton!
    
    @IBOutlet weak var txtRTView5: MKTextField!
    @IBOutlet weak var txtFRQView5: MKTextField!
    @IBOutlet weak var btnSesView5: UIButton!
    @IBOutlet weak var txtDaysView5: MKTextField!
    @IBOutlet weak var btnDeleteView5: UIButton!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
