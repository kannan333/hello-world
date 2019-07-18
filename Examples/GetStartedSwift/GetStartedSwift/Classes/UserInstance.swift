//
//  UserInstance.swift
//  MediTimePatient
//
//  Created by BLT0010-MACMINI on 02/12/16.
//  Copyright © 2016 BlisslogixTechnologySolutions. All rights reserved.
//

import Foundation

var pdfHeader_Height:CGFloat = 0
var pdfFooter_Height:CGFloat = 0
var pdfWidth_Height:CGFloat = 0
var pdfWidth1_Height:CGFloat = 0

class UserInstance
{
    static let userInstace = UserInstance()
    
    var doctorId:Int! = 0
    var selfDoctorId:String! = ""
    var roleid:Int! = 1
    var authKey:String! = ""
    var arrIntroImages:[AnyObject] = []
    var loginDtl:[String:AnyObject] = [:]
    var arrQuestionData:[AnyObject] = []
    var arrDiseaseData:[AnyObject] = []
    var getClinicID_Arr:[AnyObject] = []
    var getPermissions_Arr = NSMutableArray()
    var getSubPermissions_Arr = NSMutableArray()
    var assistantName:String! = ""
    var isAssistant:String! = ""
    var assistantData:[AnyObject] = []
    var mode:String! = ""
    var planid:String! = ""
    var subscriptionStatus:String! = ""
    var validity:String! = ""
    var accessToken:String! = ""
    var refreshToken:String! = ""
    var currentTimeStamp:String! = String(Int(NSDate().timeIntervalSince1970))
    var platform = "mobile"
    var docID : String!
    var userID : String!
    var isPopUp : String!
    var isEditPer:Int! = 0
    var isEditProf:Int! = 0
    var recentSlctClinic_ID = String()
    var recentSlctWalking_Date = String()
    var isLoggedIn:Bool = false
    
    var spe_id:String! = ""
    var spe_string:String! = ""
    
    //delete this
    var pwd:String! = ""
    
    var isFromBack:Bool = false
    
    var isEducationComplete:Bool = false
    var isMciComplete:Bool = false
    var isSpecilityComplete:Bool = false
    
    var doctorProfileImgPath:String! = ""
    
    var isShowAlert:Bool! = false
    
    var fcmToken:String! = ""
    var noNetworkConnectionMesg:String! = "No network connection.Please try again"
    
    static func showNetworkAlert() -> UIAlertController{
        let alertController = UIAlertController(title:"Alert", message:"No network connection.Please try again", preferredStyle: .alert)
        let yesAction = UIAlertAction(title: "Ok", style: .default) { (action) -> Void in
        }
        alertController.addAction(yesAction)
        return alertController
    }
}

