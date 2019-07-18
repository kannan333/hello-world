//
//  CustomBtnLbl.swift
//  MediTimeDoctor
//
//  Created by kannan on 5/2/18.
//  Copyright © 2018 BlisslogixTechnologySolutions. All rights reserved.
//

import Foundation
//Mark:- UILABEL
class CustomLblFont:UILabel{
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)!
        if(self.tag == 1){
            self.font=UIFont(name: "HelveticaNeue-Medium", size: self.font.pointSize)
        }
        else if(self.tag == 0)
        {
            self.font=UIFont(name: "HelveticaNeue", size: self.font.pointSize)
            
        }
        else if(self.tag == 2){
            self.font=UIFont(name: "HelveticaNeue-Bold", size: self.font.pointSize)
            
        }
        else if(self.tag == 3)
        {
            self.font=UIFont(name: "HelveticaNeue-Heavy", size: self.font.pointSize)
            
        }
    }
}
class CustomLblWithFontColor:UILabel{
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)!
        if(self.tag == 1){
            self.font=UIFont(name: "HelveticaNeue-Medium", size: self.font.pointSize)
        }
        else if(self.tag == 0)
        {
            self.font=UIFont(name: "HelveticaNeue", size: self.font.pointSize)
            
        }
        else if(self.tag == 2){
            self.font=UIFont(name: "HelveticaNeue-Bold", size: self.font.pointSize)
            
        }
        else if(self.tag == 3)
        {
            self.font=UIFont(name: "HelveticaNeue-Heavy", size: self.font.pointSize)
            
        }
        if UserInstance.userInstace.roleid! == 3{
            self.textColor =  UIColor(displayP3Red: 173/255, green: 20/255, blue: 87/255, alpha: 1)
        }
        else if UserInstance.userInstace.roleid! == 4{
            self.textColor =  UIColor(displayP3Red: 239/255, green: 108/255, blue: 0/255, alpha: 1)
        }
        else{
            self.textColor =  UIColor(displayP3Red: 215/255, green: 50/255, blue: 45/255, alpha: 1)
        }
    }
}
class CustomLblWithBG:UILabel{
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)!
        if(self.tag == 1){
            self.font=UIFont(name: "HelveticaNeue-Medium", size: self.font.pointSize)
        }
        else if(self.tag == 0)
        {
            self.font=UIFont(name: "HelveticaNeue", size: self.font.pointSize)
            
        }
        else if(self.tag == 2){
            self.font=UIFont(name: "HelveticaNeue-Bold", size: self.font.pointSize)
            
        }
        else if(self.tag == 3)
        {
            self.font=UIFont(name: "HelveticaNeue-Heavy", size: self.font.pointSize)
            
        }
        if UserInstance.userInstace.roleid! == 3{
              self.backgroundColor =  UIColor(displayP3Red: 173/255, green: 20/255, blue: 87/255, alpha: 1)
        }
        else if UserInstance.userInstace.roleid! == 4{
            self.backgroundColor =  UIColor(displayP3Red: 239/255, green: 108/255, blue: 0/255, alpha: 1)
        }
        else{
            self.backgroundColor =  UIColor(displayP3Red: 215/255, green: 50/255, blue: 45/255, alpha: 1)
        }
      
    }
}

//Mark:- UIBUTTON

class CustomBtnFont: UIButton{
    required init(coder aDecoder:NSCoder){
        super.init(coder: aDecoder)!
        if(self.tag == 1)
        {
            self.titleLabel?.font=UIFont(name: "HelveticaNeue-Medium", size:(self.titleLabel?.font.pointSize)!)!
        }
        else if(self.tag == 0)
        {
            self.titleLabel?.font=UIFont(name: "HelveticaNeue", size:   (self.titleLabel?.font.pointSize)!)!
            
            
        }
        else if(self.tag == 2)
        {
            self.titleLabel?.font=UIFont(name: "HelveticaNeue-Bold", size:(self.titleLabel?.font.pointSize)!)!
            
        }
        else if(self.tag == 3)
        {
            self.titleLabel?.font=UIFont(name: "HelveticaNeue-Heavy", size:(self.titleLabel?.font.pointSize)!)!
            
        }
       
    }
    
}
class CustomBtnWithBG: UIButton{
    required init(coder aDecoder:NSCoder){
        super.init(coder: aDecoder)!
        if(self.tag == 1)
        {
            self.titleLabel?.font=UIFont(name: "HelveticaNeue-Medium", size:(self.titleLabel?.font.pointSize)!)!
        }
        else if(self.tag == 0)
        {
            self.titleLabel?.font=UIFont(name: "HelveticaNeue", size:   (self.titleLabel?.font.pointSize)!)!
            
            
        }
        else if(self.tag == 2)
        {
            self.titleLabel?.font=UIFont(name: "HelveticaNeue-Bold", size:(self.titleLabel?.font.pointSize)!)!
            
        }
        else if(self.tag == 3)
        {
            self.titleLabel?.font=UIFont(name: "HelveticaNeue-Bold", size:(self.titleLabel?.font.pointSize)!)!
            
        }
        if UserInstance.userInstace.roleid! == 3{
                self.backgroundColor =  UIColor(displayP3Red: 173/255, green: 20/255, blue: 87/255, alpha: 1)
        }
       else if UserInstance.userInstace.roleid! == 4{
                self.backgroundColor =  UIColor(displayP3Red: 239/255, green: 108/255, blue: 0/255, alpha: 1)
        }
        else{
             self.backgroundColor =  UIColor(displayP3Red: 215/255, green: 50/255, blue: 45/255, alpha: 1)
        }
       
        
    }
}
    class CustomBtnWithFontColor: UIButton{
        required init(coder aDecoder:NSCoder){
            super.init(coder: aDecoder)!
            if(self.tag == 1)
            {
                self.titleLabel?.font=UIFont(name: "HelveticaNeue-Medium", size:(self.titleLabel?.font.pointSize)!)!
            }
            else if(self.tag == 0)
            {
                self.titleLabel?.font=UIFont(name: "HelveticaNeue", size:   (self.titleLabel?.font.pointSize)!)!
                
                
            }
            else if(self.tag == 2)
            {
                self.titleLabel?.font=UIFont(name: "HelveticaNeue-Bold", size:(self.titleLabel?.font.pointSize)!)!
                
            }
            else if(self.tag == 3)
            {
                self.titleLabel?.font=UIFont(name: "HelveticaNeue-Bold", size:(self.titleLabel?.font.pointSize)!)!
                
            }
            if UserInstance.userInstace.roleid! == 3{
                self.titleLabel?.textColor =  UIColor(displayP3Red: 173/255, green: 20/255, blue: 87/255, alpha: 1)
            }
            else if UserInstance.userInstace.roleid! == 4{
                self.titleLabel?.textColor  =  UIColor(displayP3Red: 239/255, green: 108/255, blue: 0/255, alpha: 1)
            }
            else{
                self.titleLabel?.textColor  =  UIColor(displayP3Red: 215/255, green: 50/255, blue: 45/255, alpha: 1)
            }
            
            
        }
    }
        
//Mark:- UIVIEW

class CustomViewWithBG: UIView{
    required init(coder aDecoder:NSCoder){
        super.init(coder: aDecoder)!
        if UserInstance.userInstace.roleid! == 3{
             self.backgroundColor =  UIColor(displayP3Red: 173/255, green: 20/255, blue: 87/255, alpha: 1)
        }
        else if UserInstance.userInstace.roleid! == 4{
              self.backgroundColor =  UIColor(displayP3Red: 239/255, green: 108/255, blue: 0/255, alpha: 1)
        }
        else{
             self.backgroundColor =  UIColor(displayP3Red: 215/255, green: 50/255, blue: 45/255, alpha: 1)
        }
       
        
    }
    
}



