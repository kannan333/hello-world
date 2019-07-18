//
//  WritingSummaryNewTableViewCell.swift
//  GetStartedSwift
//
//  Created by kannan on 7/5/19.
//  Copyright © 2019 MyScript. All rights reserved.
//

import UIKit

protocol BibleReadingSliderProtocol  {
    func addThisViewControllerAsChild(audioViewController :EditorViewController)
}


class WritingSummaryNewTableViewCell: UITableViewCell {
    @IBOutlet weak var confirm_Btn: UIButton!
    @IBOutlet weak var delete_Btn: UIButton!
    @IBOutlet weak var writingHgt_Constrnt: NSLayoutConstraint!
    @IBOutlet weak var voice_Btn: UIButton!
    @IBOutlet weak var writing_View: UIView!
    @IBOutlet weak var writingBase_View: UIView!
    var editorVC = EditorViewController()
    override func awakeFromNib(){
        super.awakeFromNib()
       
            print("Awake call from cell")
            // Initialization code
            
        
        
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
