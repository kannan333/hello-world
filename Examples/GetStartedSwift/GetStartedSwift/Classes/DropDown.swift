//
//  dropdown.swift
//  Dropdownview
//
//  Created by BLT0004-IMAC on 29/12/16.
//  Copyright © 2016 venkatesh. All rights reserved.
//

import UIKit
enum directionDropView:String {
    case UP = "UP"
    case Down = "Down"
}
protocol DropViewDelegate {
    func selectedValueFromTableIndex(dropDown:dropdown ,value : AnyObject , indexpath index: NSIndexPath)
    
}

class dropdown: UIView,UITableViewDelegate,UITableViewDataSource {
    
    
    
    let imgView = UIImageView()
    var delegate : DropViewDelegate!
    var array : [AnyObject] = []
    var viewTable : UITableView!
    var height : CGFloat!
    var directionNew : directionDropView!
    var objectFrame : CGRect!
    
    init(view : AnyObject, items : [AnyObject] ,target : AnyObject!,heightOfDropView: CGFloat,directionNew : directionDropView){
        if let object = view as? UITextField{
            super.init(frame: object.frame)
            // self.backgroundColor = UIColor.redColor()
            self.directionNew = directionNew
            height = heightOfDropView
            objectFrame = object.frame
            if directionNew.rawValue == "DOWN"{
                imgView.image = UIImage(named: "arrowDown.png")
                self.viewTable = UITableView(frame: CGRect(x:0,y:-20, width:objectFrame.width,height:0))
                self.frame = CGRect(x:objectFrame.origin.x, y:objectFrame.origin.y, width:objectFrame.width, height:0)
                self.imgView.frame = CGRect(x:objectFrame.width / 2 - 10,y:-10,width:20,height:20)
                // self.viewTable.frame.origin.y = self.imgView.frame.origin.y
            }else if directionNew.rawValue == "UP"{
                imgView.image = UIImage(named: "arrow.png")
                self.frame = CGRect(x:objectFrame.origin.x,y: objectFrame.origin.y + objectFrame.height, width:objectFrame.width, height:0)
                self.viewTable = UITableView(frame: CGRect(x:0,y:0, width:objectFrame.width,height:0))
                self.imgView.frame = CGRect(x:objectFrame.width / 2 - 10,y:0,width:20,height:20)
                // self.viewTable.frame.origin.y = self.imgView.frame.origin.y
            }
            viewTable.layer.cornerRadius = 9;
            viewTable.delegate = self
            viewTable.dataSource = self
            viewTable.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
            viewTable!.tableFooterView = UIView(frame: CGRect.zero)
            viewTable.layer.borderWidth = 0.5
            viewTable.layer.borderColor = UIColor.lightGray.cgColor
            viewTable.separatorColor = UIColor.clear
            
            //viewTable.backgroundColor = UIColor.white
            
            self.expandView(view: view)
            // self.addSubview(imgView)
            self.addSubview(viewTable)
            
            viewTable.layer.shadowColor = UIColor.black.cgColor
            viewTable.layer.shadowOffset = CGSize(width:0, height:1)
            viewTable.layer.shadowOpacity = 0.5
            viewTable.layer.shadowRadius = 2.0
            //viewTable.clipsToBounds = false
            //viewTable.layer.masksToBounds = false
            
            self.delegate = target as! DropViewDelegate
            array = items
        }
        else{
            let object = view as! UIButton
            super.init(frame: object.frame)
            // self.backgroundColor = UIColor.redColor()
            self.directionNew = directionNew
            height = heightOfDropView
            objectFrame = object.frame
            if directionNew.rawValue == "DOWN"{
                imgView.image = UIImage(named: "arrowDown.png")
                self.viewTable = UITableView(frame: CGRect(x:0,y:-20, width:objectFrame.width,height:0))
                self.frame = CGRect(x:objectFrame.origin.x, y:objectFrame.origin.y, width:objectFrame.width, height:0)
                self.imgView.frame = CGRect(x:objectFrame.width / 2 - 10,y:-10,width:20,height:20)
                // self.viewTable.frame.origin.y = self.imgView.frame.origin.y
            }else if directionNew.rawValue == "UP"{
                imgView.image = UIImage(named: "arrow.png")
                self.frame = CGRect(x:objectFrame.origin.x,y: objectFrame.origin.y + objectFrame.height, width:objectFrame.width, height:0)
                self.viewTable = UITableView(frame: CGRect(x:0,y:0, width:objectFrame.width,height:0))
                self.imgView.frame = CGRect(x:objectFrame.width / 2 - 10,y:0,width:20,height:20)
                // self.viewTable.frame.origin.y = self.imgView.frame.origin.y
            }
            viewTable.layer.cornerRadius = 9;
            viewTable.delegate = self
            viewTable.dataSource = self
            viewTable.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
            viewTable!.tableFooterView = UIView(frame: CGRect.zero)
            viewTable.layer.borderWidth = 0.5
            viewTable.layer.borderColor = UIColor.lightGray.cgColor
            viewTable.separatorColor = UIColor.clear
            
            //viewTable.backgroundColor = UIColor.white
            
            self.expandView(view: view)
            // self.addSubview(imgView)
            self.addSubview(viewTable)
            
            viewTable.layer.shadowColor = UIColor.black.cgColor
            viewTable.layer.shadowOffset = CGSize(width:0, height:1)
            viewTable.layer.shadowOpacity = 0.5
            viewTable.layer.shadowRadius = 2.0
            //viewTable.clipsToBounds = false
            //viewTable.layer.masksToBounds = false
            
            self.delegate = target as! DropViewDelegate
            array = items
        }
        
        
    }
    
    func hideView(){
        UIView.beginAnimations(nil, context:nil)
        UIView.setAnimationDuration(0.3)
        if directionNew.rawValue == "UP"
        {
            self.frame = CGRect(x:objectFrame.origin.x,y: objectFrame.origin.y + 40  ,width: objectFrame.width, height:0)
            self.viewTable.frame = CGRect(x:0, y:0, width:objectFrame.width, height:0)
        }else if directionNew.rawValue == "DOWN"
        {
            self.frame = CGRect(x:objectFrame.origin.x, y:objectFrame.origin.y + objectFrame.height, width:objectFrame.width,height: 0)
            self.viewTable.frame = CGRect(x:0, y:20, width:objectFrame.width, height:0)
        }
        UIView.commitAnimations()
        if directionNew.rawValue == "UP"{
            self.imgView.frame = CGRect(x:objectFrame.width / 2 - 10,y:5,width:20,height:0)
        }else if directionNew.rawValue == "DOWN"
        {
            self.imgView.frame = CGRect(x:objectFrame.width / 2 - 10,y:0,width:20,height:0)
        }
    }
    
    
    func expandView(view : AnyObject){
        if  let getObj = view as? UITextField{
            let objectFrame = getObj
            UIView.beginAnimations(nil, context:nil)
            
            UIView.setAnimationDuration(0.5)
            if directionNew.rawValue == "DOWN"
            {
                self.frame = CGRect(x:(objectFrame.frame.origin.x),y: ((objectFrame.frame.origin.y) - height) , width:(objectFrame.frame.width), height:height)
                self.viewTable.frame = CGRect(x:0,y:0,width: (objectFrame.frame.width),height: (height - 20))
                self.imgView.frame = CGRect(x:(objectFrame.frame.width / 2 - 10),y:(height - 20),width:20,height:20)
            }
            else if directionNew.rawValue == "UP"
            {
                self.frame = CGRect(x:(objectFrame.frame.origin.x),y: (objectFrame.frame.origin.y + objectFrame.frame.height), width:(objectFrame.frame.width),height: height)
                self.viewTable.frame = CGRect(x:0, y:0, width:objectFrame.frame.width, height:height)
                self.imgView.frame = CGRect(x:objectFrame.frame.width / 2 - 10,y:0,width:20,height:20)
            }
            UIView.commitAnimations()
        }
        else{
            let objectFrame =  view as! UIButton
            UIView.beginAnimations(nil, context:nil)
            UIView.setAnimationDuration(0.5)
            if directionNew.rawValue == "DOWN"
            {
                self.frame = CGRect(x:(objectFrame.frame.origin.x),y: ((objectFrame.frame.origin.y) - height) , width:(objectFrame.frame.width), height:height)
                self.viewTable.frame = CGRect(x:0,y:0,width: (objectFrame.frame.width),height: (height - 20))
                self.imgView.frame = CGRect(x:(objectFrame.frame.width / 2 - 10),y:(height - 20),width:20,height:20)
            }
            else if directionNew.rawValue == "UP"
            {
                self.frame = CGRect(x:(objectFrame.frame.origin.x),y: (objectFrame.frame.origin.y + objectFrame.frame.height), width:(objectFrame.frame.width),height: height)
                self.viewTable.frame = CGRect(x:0, y:0, width:objectFrame.frame.width, height:height)
                self.imgView.frame = CGRect(x:objectFrame.frame.width / 2 - 10,y:0,width:20,height:20)
            }
            UIView.commitAnimations()
        }
    }
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    func tableView(_ _tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return array.count
    }
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell : UITableViewCell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath as IndexPath)
        //tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath as IndexPath)
        cell.textLabel?.font = UIFont(name: "Roboto-Regular", size: 14.0)
        cell.textLabel?.textColor = UIColor.black
        cell.textLabel?.text = array[indexPath.row] as? String
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if (self.delegate != nil){
            self.delegate?.selectedValueFromTableIndex(dropDown: self, value: array[indexPath.row],indexpath: indexPath as NSIndexPath)
        }
    }
    
    /*
     // Only override draw() if you perform custom drawing.
     // An empty implementation adversely affects performance during animation.
     override func draw(_ rect: CGRect) {
     // Drawing code
     }
     */
    
}
