//
//  HeaderCollectionReusableView.swift
//  GetStartedSwift
//
//  Created by kannan on 5/30/19.
//  Copyright © 2019 MyScript. All rights reserved.
//

import UIKit

class HeaderCollectionReusableView: UICollectionReusableView {
    @IBOutlet weak var title_Lbl: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        print(title_Lbl)
        // Initialization code
    }
    
}
