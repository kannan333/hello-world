//
//  DoctorRegistrationLayer.swift
//  MediTimePatient
//
//  Created by BLT0010-MACMINI on 13/12/16.
//  Copyright © 2016 BlisslogixTechnologySolutions. All rights reserved.
//

import UIKit
import Alamofire

class DoctorRegistrationLayer: NSObject {
    
    class func registerDoctor(parameters:NSDictionary, headerParameters:NSDictionary, completionHandler: @escaping (_ response:AnyObject, _ error:String) -> Void)
    {
        
        Alamofire.request("\(ConfigDoctor.BASE_URL)"+"\(ConfigDoctor.DOCTOR_REGISTER_API)", method: .post, parameters: parameters as? Parameters, encoding:URLEncoding.default , headers: headerParameters as? HTTPHeaders).responseJSON { (response:DataResponse<Any>) in
            
           
            print("\(ConfigDoctor.BASE_URL)"+"\(ConfigDoctor.DOCTOR_REGISTER_API)")
             print(parameters)
            print(response)
            switch(response.result) {
            case .success(_):
                if response.result.value != nil{
                    completionHandler(response.result.value as AnyObject, "")
                    //print(response.result.value)
                }
                break
                
            case .failure(let error):
                
                let temp:[AnyObject] = []
                if let err = error as? URLError, err.code  == URLError.Code.notConnectedToInternet
                {
                    completionHandler( temp as AnyObject, UserInstance.userInstace.noNetworkConnectionMesg)
                    break
                }
                else
                {
                    completionHandler(temp as AnyObject, (response.result.error?.localizedDescription)!)
                    break
                }
                
            }
        }
    }
    
    class func loginDoctor(parameters:NSDictionary, headerParameters:NSDictionary, completionHandler: @escaping (_ response:AnyObject, _ error:String) -> Void)
    {
        Alamofire.request("\(ConfigDoctor.BASE_URL)"+"\(ConfigDoctor.DOCTOR_LOGIN)", method: .post, parameters: parameters as? Parameters, encoding:JSONEncoding.default , headers: headerParameters as? HTTPHeaders).responseJSON { (response:DataResponse<Any>) in
            
            print("\(ConfigDoctor.BASE_URL)"+"\(ConfigDoctor.DOCTOR_LOGIN)")
            print(parameters)
            print(headerParameters)
            switch(response.result) {
            case .success(_):
                if response.result.value != nil{
                    completionHandler(response.result.value as AnyObject, "")
                }
                break
                
            case .failure(let error):
                let temp:[AnyObject] = []
                if let err = error as? URLError, err.code  == URLError.Code.notConnectedToInternet
                {
                    completionHandler( temp as AnyObject, UserInstance.userInstace.noNetworkConnectionMesg)
                    break
                }
                else
                {
                    completionHandler(temp as AnyObject, (response.result.error?.localizedDescription)!)
                    break
                }
                
            }
        }
    }
    
    class func assistantDoctor(parameters:NSDictionary, headerParameters:NSDictionary, completionHandler: @escaping (_ response:AnyObject, _ error:String) -> Void)
    {
        Alamofire.request("\(ConfigDoctor.BASE_URL)"+"\(ConfigDoctor.DOCTOR_ASSISTANT)", method: .post, parameters: parameters as? Parameters, encoding:JSONEncoding.default , headers: headerParameters as? HTTPHeaders).responseJSON { (response:DataResponse<Any>) in
            
            print("\(ConfigDoctor.BASE_URL)"+"\(ConfigDoctor.DOCTOR_ASSISTANT)")
            print(parameters)
            print(headerParameters)
            switch(response.result) {
            case .success(_):
                if response.result.value != nil{
                    completionHandler(response.result.value as AnyObject, "")
                }
                break
                
            case .failure(let error):
                let temp:[AnyObject] = []
                if let err = error as? URLError, err.code  == URLError.Code.notConnectedToInternet
                {
                    completionHandler( temp as AnyObject, UserInstance.userInstace.noNetworkConnectionMesg)
                    break
                }
                else
                {
                    completionHandler(temp as AnyObject, (response.result.error?.localizedDescription)!)
                    break
                }
                
            }
        }
    }
    
    
//    class func deviceDetailsApi(parameters:NSDictionary, headerParameters:NSDictionary, completionHandler: @escaping (_ response:AnyObject, _ error:String) -> Void)
//    {
//        Alamofire.request("\(ConfigDoctor.BASE_URL)"+"\(ConfigDoctor.DEVICE_DETAILS_API)", method: .post, parameters: parameters as? Parameters, encoding:URLEncoding.default , headers: headerParameters as? HTTPHeaders).responseJSON { (response:DataResponse<Any>) in
//
//            print(parameters)
//            print(response)
//            switch(response.result) {
//            case .success(_):
//                if response.result.value != nil{
//                    completionHandler(response.result.value as AnyObject, "")
//                }
//                break
//
//            case .failure(let error):
//                let temp:[AnyObject] = []
//                if let err = error as? URLError, err.code  == URLError.Code.notConnectedToInternet
//                {
//                    completionHandler( temp as AnyObject, UserInstance.userInstace.noNetworkConnectionMesg)
//                    break
//                }
//                else
//                {
//                    completionHandler(temp as AnyObject, (response.result.error?.localizedDescription)!)
//                    break
//                }
//
//            }
//        }
//    }
//
    
//    class func verifyOTP(parameters:NSDictionary, headerParameters:NSDictionary, completionHandler: @escaping (_ response:AnyObject, _ error:String) -> Void)
//    {
//        Alamofire.request("\(ConfigDoctor.BASE_URL)"+"\(ConfigDoctor.DOCTOR_OTP_VERIFICATION)", method: .post, parameters: parameters as? Parameters, encoding:URLEncoding.default , headers: headerParameters as? HTTPHeaders).responseJSON { (response:DataResponse<Any>) in
//
//            print(parameters)
//            print(response)
//            switch(response.result) {
//            case .success(_):
//                if response.result.value != nil{
//                    completionHandler(response.result.value as AnyObject, "")
//                }
//                break
//
//            case .failure(let error):
//                let temp:[AnyObject] = []
//                if let err = error as? URLError, err.code  == URLError.Code.notConnectedToInternet
//                {
//                    completionHandler( temp as AnyObject, UserInstance.userInstace.noNetworkConnectionMesg)
//                    break
//                }
//                else
//                {
//                    completionHandler(temp as AnyObject, (response.result.error?.localizedDescription)!)
//                    break
//                }
//
//            }
//        }
//    }
    
//    class func verifyDoctor(parameters:NSDictionary, headerParameters:NSDictionary, completionHandler: @escaping (_ response:AnyObject, _ error:String) -> Void)
//    {
//        Alamofire.request("\(ConfigDoctor.BASE_URL)"+"\(ConfigDoctor.DOCTOR_VERIFY)", method: .post, parameters: parameters as? Parameters, encoding:URLEncoding.default , headers: headerParameters as? HTTPHeaders).responseJSON { (response:DataResponse<Any>) in
//
//            print(parameters)
//            print(response)
//            switch(response.result) {
//            case .success(_):
//                if response.result.value != nil{
//                    completionHandler(response.result.value as AnyObject, "")
//                }
//                break
//
//            case .failure(let error):
//                let temp:[AnyObject] = []
//                if let err = error as? URLError, err.code  == URLError.Code.notConnectedToInternet
//                {
//                    completionHandler( temp as AnyObject, UserInstance.userInstace.noNetworkConnectionMesg)
//                    break
//                }
//                else
//                {
//                    completionHandler(temp as AnyObject, (response.result.error?.localizedDescription)!)
//                    break
//                }
//
//            }
//        }
//    }
    
    
    class func resendOTP(parameters:NSDictionary, headerParameters:NSDictionary, completionHandler: @escaping (_ response:AnyObject, _ error:String) -> Void)
    {
        Alamofire.request("\(ConfigDoctor.BASE_URL)"+"\(ConfigDoctor.DOCTOR_RESEND_OTP)", method: .post, parameters: parameters as? Parameters, encoding:JSONEncoding.default , headers: headerParameters as? HTTPHeaders).responseJSON { (response:DataResponse<Any>) in
            switch(response.result) {
            case .success(_):
                if response.result.value != nil{
                    completionHandler(response.result.value as AnyObject, "")
                }
                break
                
            case .failure(let error):
                let temp:[AnyObject] = []
                if let err = error as? URLError, err.code  == URLError.Code.notConnectedToInternet
                {
                    completionHandler( temp as AnyObject, UserInstance.userInstace.noNetworkConnectionMesg)
                    break
                }
                else
                {
                    completionHandler(temp as AnyObject, (response.result.error?.localizedDescription)!)
                    break
                }
                
            }
        }
    }
    
    class func callBack(parameters:NSDictionary, headerParameters:NSDictionary, completionHandler: @escaping (_ response:AnyObject, _ error:String) -> Void)
    {
        Alamofire.request("\(ConfigDoctor.BASE_URL)"+"\(ConfigDoctor.DOCTOR_CALLBACK)", method: .post, parameters: parameters as? Parameters, encoding:JSONEncoding.default , headers: headerParameters as? HTTPHeaders).responseJSON { (response:DataResponse<Any>) in
            print(parameters)
            print(response)
            switch(response.result) {
            case .success(_):
                if response.result.value != nil{
                    completionHandler(response.result.value as AnyObject, "")
                }
                break
                
            case .failure(let error):
                let temp:[AnyObject] = []
                if let err = error as? URLError, err.code  == URLError.Code.notConnectedToInternet
                {
                    completionHandler( temp as AnyObject, UserInstance.userInstace.noNetworkConnectionMesg)
                    break
                }
                else
                {
                    completionHandler(temp as AnyObject, (response.result.error?.localizedDescription)!)
                    break
                }
                
            }
        }
    }
    
    class func selfRegister(parameters:NSDictionary, headerParameters:NSDictionary, completionHandler: @escaping (_ response:AnyObject, _ error:String) -> Void)
    {
        Alamofire.request("\(ConfigDoctor.BASE_URL)"+"\(ConfigDoctor.DOCTOR_SELFREG)", method: .post, parameters: parameters as? Parameters, encoding:JSONEncoding.default , headers: headerParameters as? HTTPHeaders).responseJSON { (response:DataResponse<Any>) in
            
            print(parameters)
            print(headerParameters)
            print("\(ConfigDoctor.BASE_URL)"+"\(ConfigDoctor.DOCTOR_SELFREG)")

            switch(response.result) {
            case .success(_):
                if response.result.value != nil{
                    completionHandler(response.result.value as AnyObject, "")
                }
                break
                
            case .failure(let error):
                let temp:[AnyObject] = []
                if let err = error as? URLError, err.code  == URLError.Code.notConnectedToInternet
                {
                    completionHandler( temp as AnyObject, UserInstance.userInstace.noNetworkConnectionMesg)
                    break
                }
                else
                {
                    completionHandler(temp as AnyObject, (response.result.error?.localizedDescription)!)
                    break
                }
                
            }
        }
    }
    


    
    class func getOtp(parameters:NSDictionary, headerParameters:NSDictionary, completionHandler: @escaping (_ response:AnyObject, _ error:String) -> Void)
    {
        Alamofire.request("\(ConfigDoctor.BASE_URL)"+"\(ConfigDoctor.DOCTOR_GET_OTP)", method: .get, parameters: parameters as? Parameters, encoding: URLEncoding.default, headers: headerParameters as? HTTPHeaders).responseJSON { (response:DataResponse<Any>) in
            print(parameters)
            print("\(ConfigDoctor.BASE_URL)"+"\(ConfigDoctor.DOCTOR_GET_OTP)")
            
            switch(response.result) {
            case .success(_):
                if response.result.value != nil{
                    completionHandler(response.result.value as AnyObject, "")
                }
                break
                
            case .failure(let error):
                
                let temp:[AnyObject] = []
                if let err = error as? URLError, err.code  == URLError.Code.notConnectedToInternet
                {
                    completionHandler( temp as AnyObject, UserInstance.userInstace.noNetworkConnectionMesg)
                    break
                }
                else
                {
                    completionHandler(temp as AnyObject, (response.result.error?.localizedDescription)!)
                    break
                }
            }
        }
    }
    
    class func commonOTP(parameters:NSDictionary, headerParameters:NSDictionary, completionHandler: @escaping (_ response:AnyObject, _ error:String) -> Void)
    {
        Alamofire.request("\(ConfigDoctor.BASE_URL)"+"\(ConfigDoctor.DOCTOR_COMMON_OTP)", method: .post, parameters: parameters as? Parameters, encoding:JSONEncoding.default , headers: headerParameters as? HTTPHeaders).responseJSON { (response:DataResponse<Any>) in
            
            print(parameters)
            print("\(ConfigDoctor.BASE_URL)"+"\(ConfigDoctor.DOCTOR_COMMON_OTP)")
            print(headerParameters)

            
            
            switch(response.result) {
            case .success(_):
                if response.result.value != nil{
                    completionHandler(response.result.value as AnyObject,"")
                }
                break
                
            case .failure(let error):
                let temp:[AnyObject] = []
                if let err = error as? URLError, err.code  == URLError.Code.notConnectedToInternet
                {
                    completionHandler( temp as AnyObject, UserInstance.userInstace.noNetworkConnectionMesg)
                    break
                }
                else
                {
                    completionHandler(temp as AnyObject, (response.result.error?.localizedDescription)!)
                    break
                }
                
            }
        }
    }
    
    class func forgotPassword(parameters:NSDictionary, headerParameters:NSDictionary, completionHandler: @escaping (_ response:AnyObject, _ error:String) -> Void)
    {
        Alamofire.request("\(ConfigDoctor.BASE_URL)"+"\(ConfigDoctor.DOCTOR_FORGOT_PASSWORD)", method: .post, parameters: parameters as? Parameters, encoding:JSONEncoding.default , headers: headerParameters as? HTTPHeaders).responseJSON { (response:DataResponse<Any>) in
            
            print("\(ConfigDoctor.BASE_URL)"+"\(ConfigDoctor.DOCTOR_FORGOT_PASSWORD)")
            print(parameters)
            print(headerParameters)
            switch(response.result) {
            case .success(_):
                if response.result.value != nil{
                    completionHandler(response.result.value as AnyObject, "")
                }
                break
                
            case .failure(let error):
                let temp:[AnyObject] = []
                if let err = error as? URLError, err.code  == URLError.Code.notConnectedToInternet
                {
                    completionHandler( temp as AnyObject, UserInstance.userInstace.noNetworkConnectionMesg)
                    break
                }
                else
                {
                    completionHandler(temp as AnyObject, (response.result.error?.localizedDescription)!)
                    break
                }
                
            }
        }
    }
    
//    class func changePassword(parameters:NSDictionary, headerParameters:NSDictionary, completionHandler: @escaping (_ response:AnyObject, _ error:String) -> Void)
//    {
//        Alamofire.request("\(ConfigDoctor.BASE_URL)"+"\(ConfigDoctor.DOCTOR_CHANGE_PASSWORD)", method: .post, parameters: parameters as? Parameters, encoding:URLEncoding.default , headers: headerParameters as? HTTPHeaders).responseJSON { (response:DataResponse<Any>) in
//            switch(response.result) {
//            case .success(_):
//                if response.result.value != nil{
//                    completionHandler(response.result.value as AnyObject,"")
//                }
//                break
//
//            case .failure(let error):
//                let temp:[AnyObject] = []
//                if let err = error as? URLError, err.code  == URLError.Code.notConnectedToInternet
//                {
//                    completionHandler( temp as AnyObject, UserInstance.userInstace.noNetworkConnectionMesg)
//                    break
//                }
//                else
//                {
//                    completionHandler(temp as AnyObject, (response.result.error?.localizedDescription)!)
//                    break
//                }
//
//            }
//        }
//    }
   
    class func getIntroImages(parameters:NSDictionary, headerParameters:NSDictionary, completionHandler: @escaping (_ response:AnyObject, _ error:String) -> Void)
    {
        Alamofire.request("\(ConfigDoctor.BASE_URL)"+"\(ConfigDoctor.GET_INTRO_IMAGES)", method: .get, parameters: parameters as? Parameters, encoding: URLEncoding.default, headers: headerParameters as? HTTPHeaders).responseJSON { (response:DataResponse<Any>) in
            
            //print(parameters)
            // print("\(Config.BASE_URL)"+"\(Config.GET_INTRO_IMAGES)")
            print(response)
            switch(response.result) {
            case .success(_):
                if response.result.value != nil{
                    completionHandler(response.result.value as AnyObject, "")
                    //print(response.result.value)
                }
                break
                
            case .failure(let error):
                
                let temp:[AnyObject] = []
                if let err = error as? URLError, err.code  == URLError.Code.notConnectedToInternet
                {
                    completionHandler( temp as AnyObject, UserInstance.userInstace.noNetworkConnectionMesg)
                    break
                }
                else
                {
                    completionHandler(temp as AnyObject, (response.result.error?.localizedDescription)!)
                    break
                }
                
            }
        }
        
    }
    
//    class func registerSpeciality(parameters:NSDictionary, headerParameters:NSDictionary, completionHandler: @escaping (_ response:AnyObject, _ error:String) -> Void)
//    {
//
//        Alamofire.request("\(ConfigDoctor.BASE_URL)"+"\(ConfigDoctor.DOCTOR_SPECIALITY)", method: .post, parameters: parameters as? Parameters, encoding: JSONEncoding.default, headers: headerParameters as? HTTPHeaders).responseJSON { (response:DataResponse<Any>) in
//
//            print(headerParameters)
//            print("\(ConfigDoctor.BASE_URL)"+"\(ConfigDoctor.DOCTOR_SPECIALITY)")
//
//            switch(response.result) {
//            case .success(_):
//
//                if response.result.value != nil{
//                    completionHandler(response.result.value as AnyObject, "")
//                    //print(response.result.value)
//                }
//                break
//
//            case .failure(let error):
//
//
//                let temp:[AnyObject] = []
//                if let err = error as? URLError, err.code  == URLError.Code.notConnectedToInternet
//                {
//                    completionHandler( temp as AnyObject, UserInstance.userInstace.noNetworkConnectionMesg)
//                    break
//                }
//                else
//                {
//                    completionHandler(temp as AnyObject, (response.result.error?.localizedDescription)!)
//                    break
//                }
//            }
//        }
//    }
    
    
    
    //Raaki
//    class func registerDoctorEducation(parameters:NSDictionary, headerParameters:NSDictionary, completionHandler: @escaping (_ response:AnyObject, _ error:String) -> Void)
//    {
//
//        Alamofire.request("\(ConfigDoctor.BASE_URL)"+"\(ConfigDoctor.DOCTOR_QUALIFICATION)", method: .post, parameters: parameters as? Parameters, encoding: JSONEncoding.default, headers: headerParameters as? HTTPHeaders).responseJSON { (response:DataResponse<Any>) in
//
//            print(parameters)
//
//            print("\(ConfigDoctor.BASE_URL)"+"\(ConfigDoctor.GET_INTRO_IMAGES)")
//
//            print(headerParameters)
//
//            print(response)
//
//            switch(response.result) {
//
//            case .success(_):
//
//                if response.result.value != nil{
//                    completionHandler(response.result.value as AnyObject, "")
//                }
//
//                break
//
//            case .failure(let error):
//
//                let temp:[AnyObject] = []
//                if let err = error as? URLError, err.code  == URLError.Code.notConnectedToInternet
//                {
//                    completionHandler( temp as AnyObject, UserInstance.userInstace.noNetworkConnectionMesg)
//                    break
//                }
//                else
//                {
//                    completionHandler(temp as AnyObject, (response.result.error?.localizedDescription)!)
//                    break
//                }
//            }
//
//        }
//
//    }
    
    class func getQualification(parameters:NSDictionary, headerParameters:NSDictionary, completionHandler: @escaping (_ response:AnyObject, _ error:String) -> Void)
    {
        Alamofire.request("\(ConfigDoctor.BASE_URL)"+"\(ConfigDoctor.GET_QUALIFICATION)", method: .post, parameters: parameters as? Parameters, encoding: JSONEncoding.default, headers: headerParameters as? HTTPHeaders).responseJSON { response in
            
            print(parameters)
            
            print("\(ConfigDoctor.BASE_URL)"+"\(ConfigDoctor.GET_QUALIFICATION)")
            
            print(headerParameters)
            
            print(response)
            
            switch(response.result) {
                
            case .success(_):
                
                if response.result.value != nil{
                    
                    completionHandler(response.result.value as AnyObject, "")
                }
                break
            case .failure(let error):
                let temp:[AnyObject] = []
                if let err = error as? URLError, err.code  == URLError.Code.notConnectedToInternet
                {
                    completionHandler( temp as AnyObject, UserInstance.userInstace.noNetworkConnectionMesg)
                    break
                }
                else
                {
                    completionHandler(temp as AnyObject, (response.result.error?.localizedDescription)!)
                    break
                }
            }
        }
    }
    
    class func getSpecialization(parameters:NSDictionary, headerParameters:NSDictionary, completionHandler: @escaping (_ response:AnyObject, _ error:String) -> Void)
        
    {
        
        Alamofire.request("\(ConfigDoctor.BASE_URL)"+"\(ConfigDoctor.GET_SPECIALIZATION)", method: .get, parameters: parameters as? Parameters, encoding: URLEncoding.default, headers: headerParameters as? HTTPHeaders).responseJSON { (response:DataResponse<Any>) in
            
            print(parameters)
            print("\(ConfigDoctor.BASE_URL)"+"\(ConfigDoctor.GET_INTRO_IMAGES)")
                        print(headerParameters)
            print(response)
            switch(response.result) {
            case .success(_):
                if response.result.value != nil{
                    
                    completionHandler(response.result.value as AnyObject, "")
                }
                
                break
                
            case .failure(let error):
                
                let temp:[AnyObject] = []
                if let err = error as? URLError, err.code  == URLError.Code.notConnectedToInternet
                {
                    completionHandler( temp as AnyObject, UserInstance.userInstace.noNetworkConnectionMesg)
                    break
                }
                else
                {
                    completionHandler(temp as AnyObject, (response.result.error?.localizedDescription)!)
                    break
                }
            }
            
        }
        
    }
    
//    class func registerExperience(parameters:NSDictionary, headerParameters:NSDictionary, completionHandler: @escaping (_ response:AnyObject, _ error:String) -> Void)
//
//    {
//
//        print("\(ConfigDoctor.BASE_URL)"+"\(ConfigDoctor.DOCTOR_EXPERIENCE)")
//        print(parameters)
//
//        Alamofire.request("\(ConfigDoctor.BASE_URL)"+"\(ConfigDoctor.DOCTOR_EXPERIENCE)", method: .post, parameters: parameters as? Parameters, encoding: JSONEncoding.default, headers: headerParameters as? HTTPHeaders).responseJSON { (response:DataResponse<Any>) in
//
//            print(parameters)
//
//            print("JSON",response)
//
//            switch(response.result) {
//
//            case .success(_):
//
//                if response.result.value != nil{
//
//                    completionHandler(response.result.value as AnyObject, "")
//
//                }
//                break
//
//            case .failure(let error):
//                let temp:[AnyObject] = []
//                if let err = error as? URLError, err.code  == URLError.Code.notConnectedToInternet
//                {
//                    completionHandler( temp as AnyObject, UserInstance.userInstace.noNetworkConnectionMesg)
//                    break
//                }
//                else
//                {
//                    completionHandler(temp as AnyObject, (response.result.error?.localizedDescription)!)
//                    break
//                }
//            }
//        }
//    }
    
    class func regisType(parameters:NSDictionary, headerParameters:NSDictionary, completionHandler: @escaping (_ response:AnyObject, _ error:String) -> Void)
    {
        Alamofire.request("\(ConfigDoctor.BASE_URL)"+"\(ConfigDoctor.GET_REGIS_TYPE)", method: .post, parameters: parameters as? Parameters, encoding: JSONEncoding.default, headers: headerParameters as? HTTPHeaders).responseJSON { (response:DataResponse<Any>) in
            
            print(parameters)
            
            print("\(ConfigDoctor.BASE_URL)"+"\(ConfigDoctor.GET_REGIS_TYPE)")
            
            print(headerParameters)
            
            print(response)
            
            switch(response.result) {
                
            case .success(_):
                
                if response.result.value != nil{
                    
                    completionHandler(response.result.value as AnyObject, "")
                }
                
                break
                
            case .failure(let error):
                
                let temp:[AnyObject] = []
                if let err = error as? URLError, err.code  == URLError.Code.notConnectedToInternet
                {
                    completionHandler( temp as AnyObject, UserInstance.userInstace.noNetworkConnectionMesg)
                    break
                }
                else
                {
                    completionHandler(temp as AnyObject, (response.result.error?.localizedDescription)!)
                    break
                }
            }
        }
    }
    
    class func getSpecializationNew(parameters:NSDictionary, headerParameters:NSDictionary, completionHandler: @escaping (_ response:AnyObject, _ error:String) -> Void)
        
    {
        
        Alamofire.request("\(ConfigDoctor.BASE_URL)"+"\(ConfigDoctor.GET_SPECIALIZATION_NEW)", method: .post, parameters: parameters as? Parameters, encoding: JSONEncoding.default, headers: headerParameters as? HTTPHeaders).responseJSON { (response:DataResponse<Any>) in
            
            print(parameters)
            print("\(ConfigDoctor.BASE_URL)"+"\(ConfigDoctor.GET_SPECIALIZATION_NEW)")
            print(headerParameters)
            print(response)
            switch(response.result) {
            case .success(_):
                if response.result.value != nil{
                    
                    completionHandler(response.result.value as AnyObject, "")
                }
                
                break
                
            case .failure(let error):
                
                let temp:[AnyObject] = []
                if let err = error as? URLError, err.code  == URLError.Code.notConnectedToInternet
                {
                    completionHandler( temp as AnyObject, UserInstance.userInstace.noNetworkConnectionMesg)
                    break
                }
                else
                {
                    completionHandler(temp as AnyObject, (response.result.error?.localizedDescription)!)
                    break
                }
                
            }
            
        }
        
    }
    
    class func getPersoanlDetail(parameters:NSDictionary, headerParameters:NSDictionary, completionHandler: @escaping (_ response:AnyObject, _ error:String) -> Void)
    {
        
        Alamofire.request("\(ConfigDoctor.BASE_URL)"+"\(ConfigDoctor.GET_DOCTOR_PERSONAL)", method: .post, parameters: parameters as? Parameters, encoding: JSONEncoding.default, headers: headerParameters as? HTTPHeaders).responseJSON { response in
            
            print(parameters)
            print("\(ConfigDoctor.BASE_URL)"+"\(ConfigDoctor.GET_DOCTOR_PERSONAL)")
            print(headerParameters)
            //print(response)
            switch(response.result) {
            case .success(_):
                if response.result.value != nil{
                    
                    completionHandler(response.result.value as AnyObject, "")
                }
                break
                
            case .failure(let error):
                
                let temp:[AnyObject] = []
                if let err = error as? URLError, err.code  == URLError.Code.notConnectedToInternet
                {
                    completionHandler( temp as AnyObject, UserInstance.userInstace.noNetworkConnectionMesg)
                    break
                }
                else
                {
                    completionHandler(temp as AnyObject, (response.result.error?.localizedDescription)!)
                    break
                }
                
            }
        }
    }

}
