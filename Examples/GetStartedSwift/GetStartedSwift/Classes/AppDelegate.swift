// Copyright MyScript. All right reserved.

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    
    var engineErrorMessage: String?

    /**
     * IINK Engine, lazy loaded.
     *
     * @return the iink engine.
     */
    lazy var engine: IINKEngine? = {
        // Check that the MyScript certificate is present
        if myCertificate.length == 0
        {
            self.engineErrorMessage = "Please replace the content of MyCertificate.c with the certificate you received from the developer portal"
            return nil
        }

        // Create the iink runtime environment
        let data = Data(bytes: myCertificate.bytes, count: myCertificate.length)
        guard let engine = IINKEngine(certificate: data) else
        {
            self.engineErrorMessage = "Invalid certificate"
            return nil
        }

        // Configure the iink runtime environment
        let configurationPath = Bundle.main.bundlePath.appending("/recognition-assets/conf")
        do {
            try engine.configuration.setStringArray([configurationPath], forKey:"configuration-manager.search-path") // Tells the engine where to load the recognition assets from.
        } catch {
            print("Should not happen, please check your resources assets : " + error.localizedDescription)
            return nil
        }
        
        // Set the temporary directory
        do {
            try engine.configuration.setString(NSTemporaryDirectory(), forKey: "content-package.temp-folder")
        } catch {
            print("Failed to set temporary folder: " + error.localizedDescription)
            return nil
        }

        return engine
    }()
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
       // let vc = Prescription1AndP2ViewController (nibName: "Prescription1AndP2ViewController", bundle: nil)
//        let prescription = Prescription1AndP2ViewController (nibName:"Prescription1AndP2ViewController", bundle: nil)
//        var dictHospital:[String: AnyObject] = [:]
//        dictHospital.updateValue("Clinic" as AnyObject, forKey: "hospitalname")
//        dictHospital.updateValue("786" as AnyObject, forKey: "hospitalid")
//        prescription.dictHospital = dictHospital
//
//        var dictPrescription1 = ["patientid":"", "bookingid":"0", "history":"", "doctornotes":"","treatmentplan":"", "risk":"", "allergies":"", "symtoms":"", "description":"", "examinations":"", "comments":"", "vitals":"", "prescriptionhistory":"", "uploadshistory":"", "vitalhistory":"", "prescriptionid":"0", "preprescriptionids":"","arrdataview2":""] as [String : Any]
//
//         let formPatientDic = ["patientid":"59","bookingid":"10133","comments":"","gender":"Male","familyid":"0","patientage":"23","patientname":"kannan","mobilenumber":"9823243442"]
//
//        prescription.dictPrescription1 = dictPrescription1 as [String : AnyObject]
//        dictPrescription1.updateValue("59" as! String, forKey: "patientid")
//        dictPrescription1.updateValue("10133" as! String, forKey: "bookingid")
//        dictPrescription1.updateValue("test" as! String, forKey: "comments")
//
//        prescription.dictPatient = formPatientDic as [String: AnyObject]
//        prescription.dictPrescription1 = dictPrescription1 as [String : AnyObject]
        UserInstance.userInstace.userID = "222"
        UserInstance.userInstace.doctorId = 222
        UserInstance.userInstace.docID = "222"
        UserInstance.userInstace.roleid = 1
        UserInstance.userInstace.accessToken = "eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.IjIyMnxtZWRpdGltZXNkb2N0b3Ii.wBuMfdzcCT6OgHIxrp78IFwMJzKYGUP6Ao4aUr7-TY4"
//
//        UserDefaults.standard.set(false, forKey: "booking_closed")
//        let navVc = UINavigationController(rootViewController: prescription)
//        navVc.isNavigationBarHidden = true
//        self.window?.rootViewController = navVc
//        self.window?.makeKeyAndVisible()
        return true
    }
    
}
