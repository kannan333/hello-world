//
//  WritingSummaryViewController.swift
//  GetStartedSwift
//
//  Created by kannan on 5/9/19.
//  Copyright © 2019 MyScript. All rights reserved.
//

import UIKit

class WritingSummaryViewController: UIViewController,TagListViewDelegate,IINKEditorDelegate,UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout,UITextFieldDelegate {
    @IBOutlet weak var previewTxtFldHgt_Constrnt: NSLayoutConstraint!
    @IBOutlet weak var previewTxtFieldBase_View: UIView!
    @IBOutlet weak var preview_TxtField: UITextField!
    @IBOutlet weak var collectionViewHgt_Contrnt: NSLayoutConstraint!
    @IBOutlet weak var spacingBetweenCollectionHgt_Constrnt: NSLayoutConstraint!
    @IBOutlet weak var writingViewHgt_Constrnt: NSLayoutConstraint!
    @IBOutlet weak var writingBaseViewHgt_Contrnt: NSLayoutConstraint!
    
    @IBOutlet weak var treatmentPlanTitle_Btn: UIButton!
    @IBOutlet weak var referToTitle_Btn: UIButton!
    @IBOutlet weak var vitalsTitle_Btn: UIButton!
    @IBOutlet weak var riskAllergyTitle_Btn: UIButton!
    @IBOutlet weak var histryHospitalTitle_Btn: UIButton!
    @IBOutlet weak var notesTitle_Btn: UIButton!
    @IBOutlet weak var diagnosis_Btn: UIButton!
    @IBOutlet weak var patientDtls_Btn: UIButton!
    @IBOutlet weak var loadPreset_Btn: UIButton!
    @IBOutlet weak var savePreset_Btn: UIButton!
    @IBOutlet weak var writingView: UIView!
    
    @IBOutlet weak var prescriptionColl_View: UICollectionView!
    @IBOutlet weak var autofillSymtmExamintn_HgtCnstrnt: NSLayoutConstraint!
    @IBOutlet weak var daysSymtmExamnt_HgtCnstrnt: NSLayoutConstraint!
    @IBOutlet weak var searchSymtomsExamitnDays_View: TagListView!
    @IBOutlet weak var autoFillBottom_View: UIView!
    @IBOutlet weak var searchSymtomsAutoFill_View: TagListView!
    @IBOutlet weak var symptomsSuggtnBase_View: UIView!
    
    @IBOutlet weak var headingsBase_View: UIView!
    @IBOutlet weak var followUpTitle_Btn: UIButton!
    @IBOutlet weak var adviceTitle_Btn: UIButton!
    @IBOutlet weak var medicinesTitle_Btn: UIButton!
    @IBOutlet weak var testToBeDoneTitle_Btn: UIButton!
    @IBOutlet weak var testCompletedTitle_Btn: UIButton!
    @IBOutlet weak var diagnosisTitle_Btn: UIButton!
    @IBOutlet weak var examinationTitle_Btn: UIButton!
    @IBOutlet weak var symptomsTitle_Btn: UIButton!
    @IBOutlet weak var confirm_Btn: UIButton!
    @IBOutlet weak var delete_Btn: UIButton!
    @IBOutlet weak var includeExc_Btn: UIButton!
    @IBOutlet weak var preview_Btn: UIButton!
    @IBOutlet weak var rxSettings_Btn: UIButton!
    @IBOutlet weak var print_Btn: UIButton!
    @IBOutlet weak var headings_Btn: UIButton!
    @IBOutlet weak var writingBase_View: UIView!
    @IBOutlet weak var headingsViewHeight_Constrnt: NSLayoutConstraint!
    @IBOutlet weak var inputTypeSegmentedControl: UISegmentedControl!
    
    var arrDataView4PreHistory:[AnyObject] = []
    var arrDataView4PreSym:[AnyObject] = []
    var arrDataView4PreExa:[AnyObject] = []
    var arrDrop4Duration:[String] = []
    var arrDataView5:[AnyObject] = []
    var arrDataDiagnosis:[AnyObject] = []
    var arrDataTests:[AnyObject] = []
    var arrDataTestsDone:[AnyObject] = []
    var arrPopUpDataView5:[String] = []
    var arrDataNotes:[AnyObject] = []
    var arrDataTreatment:[AnyObject] = []
    var arrAutoFill:[AnyObject] = []
    var arrDropDown:[String] = []
    
    var editorViewController: EditorViewController = EditorViewController()
    
    var smrtVC  = SmartGuideViewController()
    var getText = String()
    let writingConfirm_Btn = UIButton()
    let writingDelete_Btn = UIButton()
    let writingExport_Btn = UIButton()
    
    let drugSeperate_View = UIView()
    let drugRootSeperate_View = UIView()
    let drugFrqSeperate_View = UIView()
    let drugDaysSeperate_View = UIView()
    
    let medicineNameTitle_Lbl = UILabel()
    let medicineRouteTitle_Lbl = UILabel()
    let medicineFrqTitle_Lbl = UILabel()
    let medicineDaysTitle_Lbl = UILabel()
    
    var medicineName_Str = String()
    var medicineRoute_Str = String()
    var medicineFrq_Str = String()
    var medicineDays_Str = String()
    
    var medicineName_Arr = [AnyObject]()
    var medicineRoute_Arr = [AnyObject]()
    var medicineFrq_Arr =  [AnyObject]()
    var medicineDays_Arr = [AnyObject]()
    
    var diagnosisName_Arr = [AnyObject]()
    var testsName_Arr = [AnyObject]()
    var testsDoneName_Arr = [AnyObject]()
    var notes_Arr = [AnyObject]()
    var treatment_Arr = [AnyObject]()
    var history_Arr = [AnyObject]()
    var symptomsName_Arr = [AnyObject]()
    
    let block: IINKContentBlock = IINKContentBlock.init()
    var symtomps_Data = [String:AnyObject]()
    var symtompsDefault_Data = [AnyObject]()
    var arrDataView5Drop:[AnyObject] = []
    var arrAuto_Fill = [AnyObject]()
    var suggestions_Fill = [AnyObject]()
    var days_Fill = [AnyObject]()
    var loadedData_Dic = [AnyObject]()
    var checkKeyboard = false
    var yCoordinateArr = [String]()
    var searchDrug:String = ""
    var timer_TextImport = Timer()
    var textSample = String()
    override func viewDidLoad() {
        super.viewDidLoad()
        setHandWriting()
        getSympAllDefaultAutoFill(searchTag: "")
        getDuration()
        setPresetBtn(sender: savePreset_Btn)
        setPresetBtn(sender: loadPreset_Btn)
        prescriptionColl_View.register(UINib(nibName: "PrescriptionCollectionViewCell", bundle: nil) , forCellWithReuseIdentifier: "PrescriptionCollectionViewCell")
        prescriptionColl_View.register(UINib(nibName: "MedicinesCollectionViewCell", bundle: nil) , forCellWithReuseIdentifier: "MedicinesCollectionViewCell")
        
        //prescriptionColl_View.register(HeaderCollectionReusableView.self, forSupplementaryViewOfKind: UICollectionElementKindSectionHeader, withReuseIdentifier: "HeaderCollectionReusableView")
        
        self.prescriptionColl_View.register(UINib(nibName: "HeaderCollectionReusableView", bundle: nil), forSupplementaryViewOfKind: UICollectionElementKindSectionHeader, withReuseIdentifier: "HeaderCollectionReusableView");
        preview_TxtField.isHidden = true
        previewTxtFldHgt_Constrnt.constant = 0
        headingsViewHeight_Constrnt.constant = 204
        let layout: UICollectionViewFlowLayout = UICollectionViewFlowLayout()
        layout.sectionInset = UIEdgeInsets(top: 20, left: 0, bottom: 10, right: 0)
       // layout.itemSize = CGSize(width: screenWidth/3, height: screenWidth/3)
        layout.minimumInteritemSpacing = 0
        layout.minimumLineSpacing = 0
        headingsViewHeight_Constrnt.constant = 90
        symptomsSuggtnBase_View.isHidden = true
        var formSympDic = [String:AnyObject]()
        formSympDic["symptoms"] = [] as AnyObject
        loadedData_Dic.append(formSympDic as AnyObject)
        var formExaDic = [String:AnyObject]()
        formExaDic["examination"] = [] as AnyObject
        loadedData_Dic.append(formExaDic as AnyObject)
        var formDiaDic = [String:AnyObject]()
        formDiaDic["diagnosis"] = [] as AnyObject
        loadedData_Dic.append(formDiaDic as AnyObject)
        var formTestCompletedDic = [String:AnyObject]()
        formTestCompletedDic["testscompleted"] = [] as AnyObject
        loadedData_Dic.append(formTestCompletedDic as AnyObject)
        var formTestToBeDoneDic = [String:AnyObject]()
        formTestToBeDoneDic["testtobedone"] = [] as AnyObject
        loadedData_Dic.append(formTestToBeDoneDic as AnyObject)
        var formMedicinesDic = [String:AnyObject]()
        formMedicinesDic["medicines"] = [] as AnyObject
        loadedData_Dic.append(formMedicinesDic as AnyObject)
        var formNotesDic = [String:AnyObject]()
        formNotesDic["notes"] = [] as AnyObject
        loadedData_Dic.append(formNotesDic as AnyObject)
        var formTreatmentDic = [String:AnyObject]()
        formTreatmentDic["treatmentplan"] = [] as AnyObject
        loadedData_Dic.append(formTreatmentDic as AnyObject)
        var formHistoryDic = [String:AnyObject]()
        formHistoryDic["history"] = [] as AnyObject
        loadedData_Dic.append(formHistoryDic as AnyObject)
        print(loadedData_Dic)
        
       // prescriptionColl_View!.collectionViewLayout = layout
        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
//        do{
//        try editorViewController.editor.addBlock(CGPoint(x: 0, y: 0), type: "Text", mimeType:  .text, data: "Dolo 650mg")
//        // try editorViewController.editor.import_(.text, data: "Dolo 650mg", block: nil)
//        // try editor.import_(MimeType.TEXT, "this is a test", null);
//    }
//    catch{
//    print("error------------------------------\(error)")
//    }
}
    
    //MARK:- BUTTON ACTIONS
    
    @IBAction func titleBtn_Actions(_ sender: UIButton) {
        clearWritingEditor()
        if sender.tag == 0{
          
        }
        else if sender.tag == 1{
          setSymptomsTitleBtn_Action()
        }
        else if sender.tag == 2{
          setExaminationTitleBtn_Action()
        }
        else if sender.tag == 3{
          diagnosisTitleBtn_Action()
        }
        else if sender.tag == 4{
          setTestCompletedTitleBtn_Action()
        }
        else if sender.tag == 5{
          setTestDoneTitleBtn_Action()
        }
        else if sender.tag == 6{
          setDrugsTitleBtn_Action()
        }
        else if sender.tag == 7{
          notesTitleBtn_Action()
        }
        else if sender.tag == 8{
          treatmentTitleBtn_Action()
        }
        else if sender.tag == 9{
          setHistoryTitleBtn_Action()
        }
        
    }
    
    @IBAction func baseTitleBtn_Actions(_ sender: UIButton) {
        preview_TxtField.resignFirstResponder()
        symptomsTitle_Btn.backgroundColor = UIColor(displayP3Red: 255.0/255.0, green: 74.0/255.0, blue: 118.0/255.0, alpha: 1)
        examinationTitle_Btn.backgroundColor = UIColor(displayP3Red: 255.0/255.0, green: 74.0/255.0, blue: 118.0/255.0, alpha: 1)
        diagnosis_Btn.backgroundColor = UIColor(displayP3Red: 255.0/255.0, green: 74.0/255.0, blue: 118.0/255.0, alpha: 1)
        medicinesTitle_Btn.backgroundColor = UIColor(displayP3Red: 255.0/255.0, green: 74.0/255.0, blue: 118.0/255.0, alpha: 1)
        testCompletedTitle_Btn.backgroundColor = UIColor(displayP3Red: 255.0/255.0, green: 74.0/255.0, blue: 118.0/255.0, alpha: 1)
        testToBeDoneTitle_Btn.backgroundColor = UIColor(displayP3Red: 255.0/255.0, green: 74.0/255.0, blue: 118.0/255.0, alpha: 1)
        notesTitle_Btn.backgroundColor = UIColor(displayP3Red: 255.0/255.0, green: 74.0/255.0, blue: 118.0/255.0, alpha: 1)
        treatmentPlanTitle_Btn.backgroundColor = UIColor(displayP3Red: 255.0/255.0, green: 74.0/255.0, blue: 118.0/255.0, alpha: 1)
        histryHospitalTitle_Btn.backgroundColor = UIColor(displayP3Red: 255.0/255.0, green: 74.0/255.0, blue: 118.0/255.0, alpha: 1)
        
//        for i in 0..<loadedData_Dic.count{
//           // let getDic = loadedData_Dic[i] as! [String:AnyObject]
//            if i == 0 {
//            let getDic = loadedData_Dic[i] as! [String:AnyObject]
//                let getData = getDic["Symptoms"] as! [AnyObject]
//                if getData.count>0{
//
//                }
//            }
//          //  let getKeys = Array(getDic.keys)
////            for j in 0..<getKeys.count{
////               let getData =  getDic["\(getKeys[j])"] as! [AnyObject]
////                if getData.count==0{
////                    loadedData_Dic.remove(at: i)
////                }
////            }
//        }
        prescriptionColl_View.reloadData()
        preview_TxtField.isHidden = true
        previewTxtFldHgt_Constrnt.constant = 0
        headingsBase_View.isHidden = false
        if sender.tag == 0{
           setKeyboardPosition()
           removeMedicineSeperateView()
          //headingsViewHeight_Constrnt.constant = 0
          symptomsSuggtnBase_View.isHidden = true
           // for load
      //  writingBase_View.frame = CGRect(x: 0, y: writingView.frame.minY+5, width: writingBase_View.frame.width, height: writingView.frame.height)
            
        }
    }
    
    @IBAction func writingBtn_Action(_ sender: UIButton) {
        preview_TxtField.isHidden = true
        previewTxtFldHgt_Constrnt.constant = 0
        preview_TxtField.resignFirstResponder()
        headingsBase_View.isHidden = false
        setKeyboardPosition()
        checkKeyboard = false
        setSymptomsTitleBtn_Action()
    }
    
    @IBAction func keyboardBtn_Action(_ sender: UIButton) {
        if checkTitleSelection(){
            checkKeyboard = true
            collectionViewHgt_Contrnt.constant = 280
            autofillSymtmExamintn_HgtCnstrnt.constant = 0
            daysSymtmExamnt_HgtCnstrnt.constant = 0
            preview_TxtField.isHidden = false
            preview_TxtField.becomeFirstResponder()
            previewTxtFldHgt_Constrnt.constant = 15
            headingsBase_View.isHidden = true
            if symptomsTitle_Btn.backgroundColor == Themes.sharedInstance.customColor() || examinationTitle_Btn.backgroundColor == Themes.sharedInstance.customColor(){
            setTagViews(autofill: symtompsDefault_Data, suggestions: [], searchTag: "")
            }
        }
        else{
            self.view.makeToast("Please select any heading", duration: 3.0, position: .center)
        }
      //writingBaseViewHgt_Contrnt.constant = 100
       
//        spacingBetweenCollectionHgt_Constrnt.constant = 400
//        writingViewHgt_Constrnt.constant = 240
    }
    
    @IBAction func deleteBtn_Action(_ sender: UIButton) {
        if symptomsTitle_Btn.backgroundColor == Themes.sharedInstance.customColor() || examinationTitle_Btn.backgroundColor == Themes.sharedInstance.customColor(){
            if getText != ""{
            getAllAutoFill(searchTag: "",tokenView: "SearchSymtoms", type: "")
            }
        }
    clearWritingEditor()
    }
    
    @IBAction func confirmBtn_Action(_ sender: UIButton) {
        if checkTitleSelection(){
            if !checkKeyboard{
                if getText != ""{
                    writingExportBtn_Action(sender: sender)
                    //writingConfirmBtn_Action(sender: sender)
                    clearWritingEditor()
                }
        else{
        self.view.makeToast("Please write anything", duration: 3.0, position: .center)
        }
        }
            else{
                if preview_TxtField.text != ""{
                    setValueFromKeyboard(getTxt: preview_TxtField.text!)
                }
                else{
                  self.view.makeToast("Please type anything", duration: 3.0, position: .center)
                }
            }
        }
        else{
        self.view.makeToast("Please select any heading", duration: 3.0, position: .center)
        }
    }
    
     //MARK:-Functions
    
    func setHandWriting(){
        
        let block: IINKContentBlock = IINKContentBlock.init()
        editorViewController = childViewControllers.first as! EditorViewController
        if let appDelegate = UIApplication.shared.delegate as? AppDelegate {
            if (appDelegate.engine == nil)
            {
                let alert = UIAlertController(title: "Certificate error",
                                              message: appDelegate.engineErrorMessage,
                                              preferredStyle: UIAlertControllerStyle.alert)
                alert.addAction(UIAlertAction(title: "OK",
                                              style: UIAlertActionStyle.default,
                                              handler: {(action: UIAlertAction) -> Void in
                                                exit(1)
                }))
                self.present(alert, animated: true, completion: nil)
                return
            }
            // var lexicon = ["word1", "word2"]
            //var myLexicon = NSMutableDictionary()
            
            // self.requestSupplementaryLexiconWithCompletion { (theLexicon: UILexicon!) -> Void in
            
            //   }
            // editorViewController.editor.expo
            editorViewController.engine = appDelegate.engine
            
            
            writingConfirm_Btn.frame = CGRect(x: writingBase_View.frame.width-100, y: 10, width: 30, height: 30)
            writingConfirm_Btn.setImage(#imageLiteral(resourceName: "confirm"), for: .normal)
            // writingConfirm_Btn.backgroundColor = UIColor.red
            writingConfirm_Btn.layer.cornerRadius =  writingConfirm_Btn.frame.width/2
            writingConfirm_Btn.addTarget(self, action: #selector(writingConfirmBtn_Action(sender:)), for: .touchUpInside)
            
            writingDelete_Btn.frame = CGRect(x: writingConfirm_Btn.frame.minX-60, y: 10, width: 30, height: 30)
            writingDelete_Btn.setImage(#imageLiteral(resourceName: "Delete-1"), for: .normal)
            // writingDelete_Btn.backgroundColor = UIColor.red
            writingDelete_Btn.layer.cornerRadius =  writingDelete_Btn.frame.width/2
            writingDelete_Btn.addTarget(self, action: #selector(writingDeleteBtn_Action(sender:)), for: .touchUpInside)
            
            writingExport_Btn.frame = CGRect(x: writingDelete_Btn.frame.minX-60, y: 10, width: 30, height: 30)
            writingExport_Btn.setImage(#imageLiteral(resourceName: "Delete-1"), for: .normal)
            // writingDelete_Btn.backgroundColor = UIColor.red
            writingExport_Btn.layer.cornerRadius =  writingExport_Btn.frame.width/2
            writingExport_Btn.addTarget(self, action: #selector(writingExportBtn_Action(sender:)), for: .touchUpInside)
            
            drugSeperate_View.frame = CGRect(x: 240, y: 80, width: 2, height: writingBase_View.frame.height)
            drugSeperate_View.backgroundColor = UIColor.gray
            drugRootSeperate_View.frame = CGRect(x: drugSeperate_View.frame.maxX+150, y: 80, width: 2, height: writingBase_View.frame.height)
            drugRootSeperate_View.backgroundColor = UIColor.gray
            drugFrqSeperate_View.frame = CGRect(x: drugRootSeperate_View.frame.maxX+150, y: 80, width: 2, height: writingBase_View.frame.height)
            drugFrqSeperate_View.backgroundColor = UIColor.gray
            drugDaysSeperate_View.frame = CGRect(x: drugFrqSeperate_View.frame.maxX+150, y: 80, width: 2, height: writingBase_View.frame.height)
            drugDaysSeperate_View.backgroundColor = UIColor.gray
            
            medicineNameTitle_Lbl.frame = CGRect(x: 60, y: 21, width: 150, height: 30)
            medicineNameTitle_Lbl.textColor = UIColor.black
            medicineNameTitle_Lbl.text = "Medicine/Route"
            medicineNameTitle_Lbl.font = UIFont.boldSystemFont(ofSize: 14)
            medicineRouteTitle_Lbl.frame = CGRect(x: drugSeperate_View.frame.maxX+60, y: 21, width: 100, height: 30)
            medicineRouteTitle_Lbl.textColor = UIColor.black
            medicineRouteTitle_Lbl.text = "FRQ"
            medicineRouteTitle_Lbl.font = UIFont.boldSystemFont(ofSize: 14)
            medicineFrqTitle_Lbl.frame = CGRect(x: drugRootSeperate_View.frame.maxX+60, y: 21, width: 100, height: 30)
            medicineFrqTitle_Lbl.textColor = UIColor.black
            medicineFrqTitle_Lbl.text = "Days"
            medicineFrqTitle_Lbl.font = UIFont.boldSystemFont(ofSize: 14)
            
            medicineDaysTitle_Lbl.frame = CGRect(x: drugFrqSeperate_View.frame.maxX+40, y: 21, width: 100, height: 30)
            medicineDaysTitle_Lbl.textColor = UIColor.black
            medicineDaysTitle_Lbl.text = "AF/BF/SOS"
            medicineDaysTitle_Lbl.font = UIFont.boldSystemFont(ofSize: 14)
        }
        
        editorViewController.inputMode = .forcePen  // We want the Pen mode for this GetStarted sample code. It lets the user use either its mouse or fingers to draw.
        // If you have got an iPad Pro with an Apple Pencil, please set this value to InputModeAuto for a better experience.
        
        inputTypeSegmentedControl.selectedSegmentIndex = Int(editorViewController.inputMode.rawValue)
        do {
            if let package = try createPackage(packageName: "New") {
                try editorViewController.editor.part = package.getPartAt(0)
            }
        } catch {
            print("Error while creating package : " + error.localizedDescription)
        }
        editorViewController.editor.delegate = self
        //        do{
        //            try editorViewController.editor.addBlock(CGPoint(x: 20, y: 20), type: "Text")
        //        }
        //        catch{
        //            print("error------------------------------\(error)")
        //        }
        setShadow(view: writingBase_View)
        
        // writingBase_View.addSubview(editorViewController.view)
        NotificationCenter.default.addObserver(self, selector:#selector(receiveNotification(ns:)), name: NSNotification.Name(rawValue: "notifyme"), object: nil)
        NotificationCenter.default.addObserver(self, selector:#selector(removeTxt(ns:)), name: NSNotification.Name(rawValue: "touchesend"), object: nil)
        NotificationCenter.default.addObserver(self, selector:#selector(eraseAllNotification(ns:)), name: NSNotification.Name(rawValue: "eraseallletters"), object: nil)
    }
    
    func hideWrittenView(chk:Bool){
        if chk{
            //writingBase_View.frame.origin.y = Themes.sharedInstance.screenSize.height
             writingBase_View.frame.origin.y = (Themes.sharedInstance.screenSize.height) -  (self.writingBase_View.frame.height)
        }
        else{
            writingBase_View.frame.origin.y = (Themes.sharedInstance.screenSize.height) -  (self.writingBase_View.frame.height)
        }
    }
    
    func writingConfirmBtn_Action(sender:UIButton){
//                if getText != ""{
//                    searchSymtmsExamin_TokenView.addTokenWithTitle(getText, tokenObject: "not duration" as AnyObject)
//                    clearWritingEditor()
//            }
        if sender == medicinesTitle_Btn{
        for i in 0..<medicineName_Arr.count{
            var medicineNameStr_Arr = [String]()
            var medicineRouteStr_Arr = [String]()
            var medicineFrqStr_Arr = [String]()
            var medicineDaysStr_Arr = [String]()
            
            print("yCoordinate---------\(yCoordinateArr)")
            print("MedicineNameFinalArr----\(medicineName_Arr)")
            print("MedicineRouteFinalArr----\(medicineRoute_Arr)")
            print("MedicineFrqFinalArr----\(medicineFrq_Arr)")
            print("MedicineDaysFinalArr----\(medicineDays_Arr)")
            
//            for i in 0..<medicineName_Arr.count{
//                medicineNameStr_Arr.append(medicineName_Arr[i] as! String)
//            }
//            for i in 0..<medicineRoute_Arr.count{
//                medicineRouteStr_Arr.append(medicineRoute_Arr[i] as! String)
//            }
//            for i in 0..<medicineFrq_Arr.count{
//                medicineFrqStr_Arr.append(medicineFrq_Arr[i] as! String)
//            }
//            for i in 0..<medicineDays_Arr.count{
//                medicineDaysStr_Arr.append(medicineDays_Arr[i] as! String)
//            }
//
//            medicineName_Str = medicineNameStr_Arr.map { String($0) }
//                .joined(separator: "")
//            medicineRoute_Str = medicineRouteStr_Arr.map { String($0) }
//                .joined(separator: "")
//            medicineFrq_Str = medicineFrqStr_Arr.map { String($0) }
//                .joined(separator: "")
//            medicineDays_Str = medicineDaysStr_Arr.map { String($0) }
//                .joined(separator: "")
            
            
            var dictSample:[String: AnyObject] = [:]
            dictSample.updateValue("no" as AnyObject, forKey: "is_ai_data")
            dictSample.updateValue("no" as AnyObject, forKey: "ai_drugid")
            dictSample.updateValue("" as AnyObject, forKey: "brandname")
            dictSample.updateValue("" as AnyObject, forKey: "genericname")
            dictSample.updateValue("" as AnyObject, forKey: "genericid")
            dictSample.updateValue("" as AnyObject, forKey: "description")
            dictSample.updateValue("" as AnyObject, forKey: "strength")
            dictSample.updateValue("" as AnyObject, forKey: "drugid")
            dictSample.updateValue(medicineRoute_Arr[i] as AnyObject, forKey: "route")
            dictSample.updateValue(medicineFrq_Arr[i] as AnyObject, forKey: "frequency")
            dictSample.updateValue("3" as AnyObject, forKey: "beforeafter")
            dictSample.updateValue(medicineDays_Arr[i] as AnyObject, forKey: "noofdays")
            dictSample.updateValue("" as AnyObject, forKey: "brandid")
            dictSample.updateValue("" as AnyObject, forKey: "manufactureid")
            dictSample.updateValue("" as AnyObject, forKey: "manufacturename")
            dictSample.updateValue("" as AnyObject, forKey: "therapeuticid")
            dictSample.updateValue(medicineName_Arr[i] as AnyObject, forKey: "displaybrandname")
            dictSample.updateValue("" as AnyObject, forKey: "displaystrength")
            dictSample.updateValue("" as AnyObject, forKey: "strength")
            dictSample.updateValue("" as AnyObject, forKey: "sponsored")
            dictSample.updateValue("" as AnyObject, forKey: "generic_combo")
            dictSample.updateValue("1" as AnyObject, forKey: "manual")
            dictSample.updateValue("1" as AnyObject, forKey: "isSelected")
            arrDataView5.append(dictSample as AnyObject)
        }
        setDrugsView()
        }
        else if sender == symptomsTitle_Btn{
            var symStr = String()
            for i in 0..<symptomsName_Arr.count{
//                var formDic = [String:AnyObject]()
//                formDic.updateValue("0" as AnyObject, forKey: "testid")
//                formDic.updateValue(Themes.sharedInstance.checkNullvalue(Passed_value: testsName_Arr[i]) as AnyObject, forKey: "testname")
//                formDic.updateValue("1" as AnyObject, forKey: "checked")
//                arrDataTests.append(formDic as AnyObject)
                symStr.append(Themes.sharedInstance.checkNullvalue(Passed_value: symptomsName_Arr[i]))
            }
            
            do{
                // try editorViewController.editor.addBlock(CGPoint(x: 20, y: 20), type: "Text")
                // try editorViewController.editor.addBlock(CGPoint(x: 0, y: 0), type: "Text", mimeType:  .text, data: title)
                clearWritingEditor()
                // textSample = getText
                // getText = ""
                try editorViewController.editor.import_(.text, data: symStr, block: nil)
                // getText = ""
                // try editor.import_(MimeType.TEXT, "this is a test", null);
            }
            catch{
                print("error------------------------------\(error)")
            }
        }
        else if sender == testCompletedTitle_Btn{
            for i in 0..<testsName_Arr.count{
                var formDic = [String:AnyObject]()
                formDic.updateValue("0" as AnyObject, forKey: "testid")
                formDic.updateValue(Themes.sharedInstance.checkNullvalue(Passed_value: testsName_Arr[i]) as AnyObject, forKey: "testname")
                formDic.updateValue("1" as AnyObject, forKey: "checked")
                arrDataTests.append(formDic as AnyObject)
            }
            setTests()
        }
        else if sender == testToBeDoneTitle_Btn{
                for i in 0..<testsDoneName_Arr.count{
                    var formDic = [String:AnyObject]()
                    formDic.updateValue("0" as AnyObject, forKey: "testdoneid")
                    formDic.updateValue(Themes.sharedInstance.checkNullvalue(Passed_value: testsDoneName_Arr[i]) as AnyObject, forKey: "testdonename")
                    formDic.updateValue("1" as AnyObject, forKey: "checked")
                    arrDataTestsDone.append(formDic as AnyObject)
                }
                setTestsToBeDone()
        }
        else if sender == notesTitle_Btn{
            var notes_Str = String()
            for i in 0..<notes_Arr.count{
                notes_Str.append(Themes.sharedInstance.checkNullvalue(Passed_value:notes_Arr[i]))
            }
            var formDic = [String:AnyObject]()
            formDic.updateValue(Themes.sharedInstance.checkNullvalue(Passed_value: notes_Str) as AnyObject, forKey: "notesstring")
            arrDataNotes.append(formDic as AnyObject)
            setNotes()
        }
        else if sender == treatmentPlanTitle_Btn{
            arrDataTreatment.removeAll()
            var treatment_Str = String()
            for i in 0..<treatment_Arr.count{
               treatment_Str.append(Themes.sharedInstance.checkNullvalue(Passed_value:treatment_Arr[i]))
            }
            var formDic = [String:AnyObject]()
            formDic.updateValue(treatment_Str as AnyObject, forKey: "treatmentstring")
            arrDataTreatment.append(formDic as AnyObject)
            setTreatmentPlan()
        }
        else if sender == histryHospitalTitle_Btn{
            for i in 0..<history_Arr.count{
                var formDic = [String:AnyObject]()
                formDic.updateValue(Themes.sharedInstance.checkNullvalue(Passed_value: history_Arr[i]) as AnyObject, forKey: "name")
                arrDataTreatment.append(formDic as AnyObject)
            }
            setHistory()
        }
        else{
            for i in 0..<diagnosisName_Arr.count{
                var formDic = [String:AnyObject]()
                formDic.updateValue("0" as AnyObject, forKey: "diagnostictestid")
                formDic.updateValue(Themes.sharedInstance.checkNullvalue(Passed_value: diagnosisName_Arr[i]) as AnyObject, forKey: "diagnoticname")
                formDic.updateValue("1" as AnyObject, forKey: "checked")
                arrDataDiagnosis.append(formDic as AnyObject)
            }
            setDiagnosis()
        }
       
        
    }
    
    func writingDeleteBtn_Action(sender:UIButton){
        clearWritingEditor()
    }
    
    func writingExportBtn_Action(sender:UIButton){
        let jsonText = try? editorViewController.editor.export_(editorViewController.editor.rootBlock, mimeType: IINKMimeType.JIIX)
        
        let data = jsonText!.data(using: .utf8)!
        
        let jsonDict = try? JSONSerialization.jsonObject(with: data, options : .allowFragments) as? [String:Any]
        
        print(jsonDict)
        //seperateDict(getDic: jsonDict as! NSDictionary)
        let getDic = jsonDict as! NSDictionary
        var getChildren = getDic["words"] as! [AnyObject]
//        if getChildren.count>0{
//        let getWords_Str = Themes.sharedInstance.checkNullvalue(Passed_value: getChildren[0]["label"]!)
        
        if symptomsTitle_Btn.backgroundColor == Themes.sharedInstance.customColor(){
             getYAxisArray(getDic: getDic)
           
//            if checkRepeatedSymptoms(getStr: String(getText)){
//                var formDic = [String:AnyObject]()
//                formDic = ["name":String(getText),"duration":""] as [String : AnyObject]
//                arrDataView4PreSym.append(formDic as AnyObject)
//            }
        }
         else if examinationTitle_Btn.backgroundColor == Themes.sharedInstance.customColor(){
            if checkRepeatedSymptoms(getStr: String(getText)){
                var formDic = [String:AnyObject]()
                formDic = ["name":String(getText),"duration":""] as [String : AnyObject]
                arrDataView4PreExa.append(formDic as AnyObject)
            }
        }
        else if diagnosis_Btn.backgroundColor == Themes.sharedInstance.customColor(){
            if checkRepeatedDiagnosis(getStr: String(getText)){
                getYAxisArray(getDic: getDic)
                
            }
        }
        else if testCompletedTitle_Btn.backgroundColor == Themes.sharedInstance.customColor(){
            if checkRepeatedSymptoms(getStr: String(getText)){
                getYAxisArray(getDic: getDic)
               
            }
        }
        else if testToBeDoneTitle_Btn.backgroundColor == Themes.sharedInstance.customColor(){
            if checkRepeatedSymptoms(getStr: String(getText)){
                getYAxisArray(getDic: getDic)
               
            }
        }
        else if medicinesTitle_Btn.backgroundColor == Themes.sharedInstance.customColor(){
            if checkRepeatedSymptoms(getStr: String(getText)){
               getYAxisArray(getDic: getDic)
//                getDiagnosisArr(getDic:getDic )
//                var formDic = [String:AnyObject]()
//                formDic = ["name":String(getText),"duration":""] as [String : AnyObject]
//                arrDataView4PreExa.append(formDic as AnyObject)
            }
        }
        
       else if notesTitle_Btn.backgroundColor == Themes.sharedInstance.customColor(){
            if checkRepeatedSymptoms(getStr: String(getText)){
                notes_Arr.append(getText as AnyObject)
                
                var notes_Str = String()
                for i in 0..<notes_Arr.count{
                    notes_Str.append(Themes.sharedInstance.checkNullvalue(Passed_value:notes_Arr[i]))
                }
                var formDic = [String:AnyObject]()
                formDic.updateValue(Themes.sharedInstance.checkNullvalue(Passed_value: notes_Str) as AnyObject, forKey: "notesstring")
                arrDataNotes.append(formDic as AnyObject)
                setNotes()
                
//                getYAxisArray(getDic: getDic)
            }
        }
        else if treatmentPlanTitle_Btn.backgroundColor == Themes.sharedInstance.customColor(){
            if checkRepeatedSymptoms(getStr: String(getText)){
                treatment_Arr.append(getText as AnyObject)
                arrDataTreatment.removeAll()
                
                var treatment_Str = String()
                for i in 0..<treatment_Arr.count{
                    treatment_Str.append(Themes.sharedInstance.checkNullvalue(Passed_value:treatment_Arr[i]))
                }
                var formDic = [String:AnyObject]()
                formDic.updateValue(treatment_Str as AnyObject, forKey: "treatmentstring")
                arrDataTreatment.append(formDic as AnyObject)
                setTreatmentPlan()
//                getYAxisArray(getDic: getDic)
                
            }
        }
        if histryHospitalTitle_Btn.backgroundColor == Themes.sharedInstance.customColor(){
            if checkRepeatedSymptoms(getStr: String(getText)){
//                var formDic = [String:AnyObject]()
//                formDic = ["name":String(getText)] as [String : AnyObject]
//                arrDataView4PreHistory.append(formDic as AnyObject)
                  getYAxisArray(getDic: getDic)
            }
        }
        getText = ""
        formFinalDicToLoad()
    }
    
    func seperateDict(getDic:NSDictionary,yAxisArr:[String]){
       
        medicineName_Str = String()
        medicineRoute_Str = String()
        medicineFrq_Str = String()
        medicineDays_Str = String()
        
        medicineName_Arr = [AnyObject]()
        medicineRoute_Arr = [AnyObject]()
        medicineFrq_Arr = [AnyObject]()
        medicineDays_Arr = [AnyObject]()
        yCoordinateArr.removeAll()
//        var getChildren = getDic["children"] as! [AnyObject]
        let getWords_Arr = getDic["words"] as! [AnyObject]
        for i in 0..<getWords_Arr.count{
            if i % 2 == 0{
                print("ertyuiop")
                let getWord = getWords_Arr[i] as! [String:AnyObject]
                if let getItems = getWord["items"] as? [AnyObject]{
                    if let getX_Coordinates = getItems[0]["X"] as? [AnyObject]{
                let getY_Coordinates = getItems[0]["Y"] as! [AnyObject]
                let label_Val = Themes.sharedInstance.checkNullvalue(Passed_value: getWord["label"])
            
                if diagnosis_Btn.backgroundColor == Themes.sharedInstance.customColor(){
                    for e in 0..<getX_Coordinates.count{
                    let getX_Val = Themes.sharedInstance.checkNullvalue(Passed_value: getX_Coordinates[e])
                    var yCurrentPos = String()
                    for f in 0..<getY_Coordinates.count{
                        let getY_Val = Themes.sharedInstance.checkNullvalue(Passed_value: getY_Coordinates[f])
                        
                        if f == 0{
                            yCurrentPos = getY_Val
                        }
                    }
                    if e == getX_Coordinates.count-1{
                        formMedicineDic(xCoordinate: getX_Val,YCoordinateCurrntPos:yCurrentPos, character: label_Val, yCoordinate: yAxisArr)
                    }
                    }
                }
                else{
                for e in 0..<getX_Coordinates.count{
                    let getX_Val = Themes.sharedInstance.checkNullvalue(Passed_value: getX_Coordinates[e])
                    var yCurrentPos = String()
                    for f in 0..<getY_Coordinates.count{
                        let getY_Val = Themes.sharedInstance.checkNullvalue(Passed_value: getY_Coordinates[f])
                        
                        if f == 0{
                           yCurrentPos = getY_Val
                        }
                    }
                    if e == getX_Coordinates.count-1{
                        formMedicineDic(xCoordinate: getX_Val,YCoordinateCurrntPos:yCurrentPos, character: label_Val, yCoordinate: yAxisArr)
                    }
                }
                }
                }
            }
                else{
                    print("ITEMS ISSUES-----------------")
                }
            }
            else{
                print("ertyuiop")
                let getWord = getWords_Arr[i] as! [String:AnyObject]
                if let getItems = getWord["items"] as? [AnyObject]{
                    if  let getX_Coordinates = getItems[0]["X"] as? [AnyObject]{
                    let getY_Coordinates = getItems[0]["Y"] as! [AnyObject]
                    let label_Val = Themes.sharedInstance.checkNullvalue(Passed_value: getWord["label"])
                    
                    if diagnosis_Btn.backgroundColor == Themes.sharedInstance.customColor(){
                        for e in 0..<getX_Coordinates.count{
                            let getX_Val = Themes.sharedInstance.checkNullvalue(Passed_value: getX_Coordinates[e])
                            var yCurrentPos = String()
                            for f in 0..<getY_Coordinates.count{
                                let getY_Val = Themes.sharedInstance.checkNullvalue(Passed_value: getY_Coordinates[f])
                                
                                if f == 0{
                                    yCurrentPos = getY_Val
                                }
                            }
                            if e == getX_Coordinates.count-1{
                                formMedicineDic(xCoordinate: getX_Val,YCoordinateCurrntPos:yCurrentPos, character: label_Val, yCoordinate: yAxisArr)
                            }
                        }
                    }
                    else{
                        for e in 0..<getX_Coordinates.count{
                            let getX_Val = Themes.sharedInstance.checkNullvalue(Passed_value: getX_Coordinates[e])
                            var yCurrentPos = String()
                            for f in 0..<getY_Coordinates.count{
                                let getY_Val = Themes.sharedInstance.checkNullvalue(Passed_value: getY_Coordinates[f])
                                
                                if f == 0{
                                    yCurrentPos = getY_Val
                                }
                            }
                            if e == getX_Coordinates.count-1{
                                formMedicineDic(xCoordinate: getX_Val,YCoordinateCurrntPos:yCurrentPos, character: label_Val, yCoordinate: yAxisArr)
                            }
                        }
                    }
                }
                }
                else{
                    print("ITEMS ISSUES-----------------")
                }
            }
        }
       
        if diagnosis_Btn.backgroundColor == Themes.sharedInstance.customColor(){
            writingConfirmBtn_Action(sender: diagnosis_Btn)
        }
       else if symptomsTitle_Btn.backgroundColor == Themes.sharedInstance.customColor(){
            writingConfirmBtn_Action(sender: symptomsTitle_Btn)
        }
        else if testCompletedTitle_Btn.backgroundColor == Themes.sharedInstance.customColor(){
            writingConfirmBtn_Action(sender: testCompletedTitle_Btn)
        }
        else if testToBeDoneTitle_Btn.backgroundColor == Themes.sharedInstance.customColor(){
            writingConfirmBtn_Action(sender: testToBeDoneTitle_Btn)
        }
        else if notesTitle_Btn.backgroundColor == Themes.sharedInstance.customColor(){
            writingConfirmBtn_Action(sender: notesTitle_Btn)
        }
        else if treatmentPlanTitle_Btn.backgroundColor == Themes.sharedInstance.customColor(){
            writingConfirmBtn_Action(sender: treatmentPlanTitle_Btn)
        }
        else if treatmentPlanTitle_Btn.backgroundColor == Themes.sharedInstance.customColor(){
            writingConfirmBtn_Action(sender: histryHospitalTitle_Btn)
        }
        else{
            writingConfirmBtn_Action(sender: medicinesTitle_Btn)
        }
        
    }
    
    func getDiagnosisArr(getDic:NSDictionary){
        
    }
    
    func getYAxisArray(getDic:NSDictionary){
        let getWords_Arr = getDic["words"] as! [AnyObject]
        var yAxisArray = [String]()
        for i in 0..<getWords_Arr.count{
            if i % 2 == 0{
                print("ertyuiop")
                let getWord = getWords_Arr[i] as! [String:AnyObject]
                print("Word Array--------------------------\(getWords_Arr)")
                if let getItems = getWord["items"] as? [AnyObject]{
                    if let getX_Coordinates = getItems[0]["X"] as? [AnyObject]{
                let getY_Coordinates = getItems[0]["Y"] as! [AnyObject]
                let label_Val = Themes.sharedInstance.checkNullvalue(Passed_value: getWord["label"])
                var yAxis = String()
                for j in 0..<getY_Coordinates.count{
                    let getY_Val = Themes.sharedInstance.checkNullvalue(Passed_value: getY_Coordinates[j])
                    if j == 0{
                        yAxisArray.append("\(getY_Val)")
                    }
                }
                    }
            }
                else{
                    print("ITEMS ISSUES------------------")
                }
        }
            else{
                print("ertyuiop")
                let getWord = getWords_Arr[i] as! [String:AnyObject]
                print("Word Array--------------------------\(getWords_Arr)")
                if let getItems = getWord["items"] as? [AnyObject]{
                    if let getX_Coordinates = getItems[0]["X"] as? [AnyObject]{
                    let getY_Coordinates = getItems[0]["Y"] as! [AnyObject]
                    let label_Val = Themes.sharedInstance.checkNullvalue(Passed_value: getWord["label"])
                    var yAxis = String()
                    for j in 0..<getY_Coordinates.count{
                        let getY_Val = Themes.sharedInstance.checkNullvalue(Passed_value: getY_Coordinates[j])
                        if j == 0{
                            yAxisArray.append("\(getY_Val)")
                        }
                    }
                }
                }
                else{
                    print("ITEMS ISSUES------------------")
                }
            }
    }
        var yAxisSortArr = [String]()
        var lastGreat_No = String()
        for j in 0..<yAxisArray.count{
            
            let getYAxis = yAxisArray[j]
            if j == 0{
                yAxisSortArr.append(getYAxis)
                lastGreat_No = getYAxis
            }
            else{
                let getDiff = Float(getYAxis)! - Float(lastGreat_No)!
                    
                if getDiff>=10{
                   yAxisSortArr.append("\(getYAxis)")
                   lastGreat_No = getYAxis
                }
            }
        }
        setAccendingOrderYAxis(yAxisAray: yAxisSortArr,dic:getDic)
    }
    
    func setAccendingOrderYAxis(yAxisAray:[String],dic:NSDictionary){
        var getArray = yAxisAray
        let sortYAxis = getArray.sorted()
        print("YAxisArray-------------------------\(sortYAxis)")
        seperateDict(getDic: dic as! NSDictionary, yAxisArr: sortYAxis)

    }
    func formMedicineDic(xCoordinate:String,YCoordinateCurrntPos:String,character:String,yCoordinate:[String]){
          if diagnosis_Btn.backgroundColor == Themes.sharedInstance.customColor(){
            if Float(xCoordinate)! <= 135{
                for i in 0..<yCoordinate.count{
                    let getDiff = Float(yCoordinate[i])! - Float(YCoordinateCurrntPos)!
                    if getDiff<0{
                        let get_Diff =   Float(YCoordinateCurrntPos)! - Float(yCoordinate[i])!
                        if get_Diff<10{
                            var getStr = String()
                            if diagnosisName_Arr.indices.contains(i){
                                getStr.append("\(diagnosisName_Arr[i])")
                                getStr.append(character)
                                diagnosisName_Arr.remove(at: i)
                            }
                            else{
                                getStr.append(character)
                                
                            }
                            
                            diagnosisName_Arr.insert(getStr as AnyObject, at: i)
                            break
                        }
                    }
                    else{
                        if getDiff<10{
                            var getStr = String()
                            if diagnosisName_Arr.indices.contains(i){
                                let getTxt = "\(diagnosisName_Arr[i])"
                                getStr.append(getTxt)
                                getStr.append(character)
                                diagnosisName_Arr.remove(at: i)
                            }
                            else{
                                getStr.append(character)
                            }
                            diagnosisName_Arr.insert(getStr as AnyObject, at: i)
                            break
                        }
                    }
                }
            }
        }
      else if testCompletedTitle_Btn.backgroundColor == Themes.sharedInstance.customColor(){
            if Float(xCoordinate)! <= 135{
                for i in 0..<yCoordinate.count{
                    let getDiff = Float(yCoordinate[i])! - Float(YCoordinateCurrntPos)!
                    if getDiff<0{
                        let get_Diff =   Float(YCoordinateCurrntPos)! - Float(yCoordinate[i])!
                        if get_Diff<10{
                            var getStr = String()
                            if testsName_Arr.indices.contains(i){
                                getStr.append("\(testsName_Arr[i])")
                                getStr.append(character)
                                testsName_Arr.remove(at: i)
                            }
                            else{
                                getStr.append(character)
                                
                            }
                            
                            testsName_Arr.insert(getStr as AnyObject, at: i)
                            break
                        }
                    }
                    else{
                        if getDiff<10{
                            var getStr = String()
                            if  testsName_Arr.indices.contains(i){
                                let getTxt = "\(testsName_Arr[i])"
                                getStr.append(getTxt)
                                getStr.append(character)
                                testsName_Arr.remove(at: i)
                            }
                            else{
                                getStr.append(character)
                            }
                            testsName_Arr.insert(getStr as AnyObject, at: i)
                            break
                        }
                    }
                }
            }
        }
      else if testToBeDoneTitle_Btn.backgroundColor == Themes.sharedInstance.customColor(){
            if Float(xCoordinate)! <= 135{
                for i in 0..<yCoordinate.count{
                    let getDiff = Float(yCoordinate[i])! - Float(YCoordinateCurrntPos)!
                    if getDiff<0{
                        let get_Diff =   Float(YCoordinateCurrntPos)! - Float(yCoordinate[i])!
                        if get_Diff<10{
                            var getStr = String()
                            if testsDoneName_Arr.indices.contains(i){
                                getStr.append("\(testsDoneName_Arr[i])")
                                getStr.append(character)
                                testsDoneName_Arr.remove(at: i)
                            }
                            else{
                                getStr.append(character)
                                
                            }
                            
                            testsDoneName_Arr.insert(getStr as AnyObject, at: i)
                            break
                        }
                    }
                    else{
                        if getDiff<10{
                            var getStr = String()
                            if  testsDoneName_Arr.indices.contains(i){
                                let getTxt = "\(testsDoneName_Arr[i])"
                                getStr.append(getTxt)
                                getStr.append(character)
                                testsDoneName_Arr.remove(at: i)
                            }
                            else{
                                getStr.append(character)
                            }
                            testsDoneName_Arr.insert(getStr as AnyObject, at: i)
                            break
                        }
                    }
                }
            }
        }
        else if notesTitle_Btn.backgroundColor == Themes.sharedInstance.customColor(){
            notes_Arr.append(character as AnyObject)
        }
          else if treatmentPlanTitle_Btn.backgroundColor == Themes.sharedInstance.customColor(){
            treatment_Arr.append(character as AnyObject)
          }
          else if histryHospitalTitle_Btn.backgroundColor == Themes.sharedInstance.customColor(){
            arrDataView4PreHistory.append(character as AnyObject)
          }
          else if symptomsTitle_Btn.backgroundColor == Themes.sharedInstance.customColor(){
            symptomsName_Arr.append(character as AnyObject)
          }
          else{
        if Float(xCoordinate)! <= 46{
            var nameStr = String()
            for i in 0..<yCoordinate.count{
                let getDiff = Float(yCoordinate[i])! - Float(YCoordinateCurrntPos)!
                if getDiff<0{
                    let get_Diff =   Float(YCoordinateCurrntPos)! - Float(yCoordinate[i])!
                    if get_Diff<10{
                        var getStr = String()
                        if medicineName_Arr.indices.contains(i){
                            getStr.append("\(medicineName_Arr[i])")
                            getStr.append(character)
                            medicineName_Arr.remove(at: i)
                        }
                        else{
                          getStr.append(character)
                            
                        }
                        medicineName_Arr.insert(getStr as AnyObject, at: i)
                        break
                    }
                }
                else{
                    if getDiff<10{
                        var getStr = String()
                        if medicineName_Arr.indices.contains(i){
                           let getTxt = "\(medicineName_Arr[i])"
                           getStr.append(getTxt)
                           getStr.append(character)
                           medicineName_Arr.remove(at: i)
                        }
                        else{
                           getStr.append(character)
                        }
                        medicineName_Arr.insert(getStr as AnyObject, at: i)
                        break
                    }
                }
            }
           print("medicineNameArr------------------\(medicineName_Arr)")
        }
        else if Float(xCoordinate)! <= 75{
            var nameStr = String()
            
            for i in 0..<yCoordinate.count{
                let getDiff = Float(yCoordinate[i])! - Float(YCoordinateCurrntPos)!
                if getDiff<0{
                    let get_Diff =   Float(YCoordinateCurrntPos)! - Float(yCoordinate[i])!
                    if get_Diff<10{
                        var getStr = String()
                        if medicineRoute_Arr.indices.contains(i){
                            getStr.append("\(medicineRoute_Arr[i])")
                            getStr.append(character)
                        }
                        else{
                            getStr.append(character)
                        }
                        medicineRoute_Arr.insert(getStr as AnyObject, at: i)
                        break
                    }
                }
                else{
                    if getDiff<10{
                        var getStr = String()
                        if medicineRoute_Arr.indices.contains(i){
                            let getTxt = "\(medicineRoute_Arr[i])"
                            getStr.append(getTxt)
                            getStr.append(character)
                            
                        }
                        else{
                            getStr.append(character)
                        }
                        medicineRoute_Arr.insert(getStr as AnyObject, at: i)
                        break
                    }
                }
            }
            print("medicineRouteArr------------------\(medicineRoute_Arr)")
        }
        else if Float(xCoordinate)! <= 105{
            var nameStr = String()
            
            for i in 0..<yCoordinate.count{
                let getDiff = Float(yCoordinate[i])! - Float(YCoordinateCurrntPos)!
                if getDiff<0{
                    let get_Diff =   Float(YCoordinateCurrntPos)! - Float(yCoordinate[i])!
                    if get_Diff<10{
                        var getStr = String()
                        
                        if medicineFrq_Arr.indices.contains(i){
                            getStr.append("\(medicineFrq_Arr[i])")
                            getStr.append(character)
                        }
                        else{
                            getStr.append(character)
                        }
                        medicineFrq_Arr.insert(getStr as AnyObject, at: i)
                        break
                    }
                }
                else{
                    if getDiff<10{
                        var getStr = String()
                        if medicineFrq_Arr.indices.contains(i){
                            let getTxt = "\(medicineFrq_Arr[i])"
                            getStr.append(getTxt)
                            getStr.append(character)
                            
                        }
                        else{
                            getStr.append(character)
                        }
                        medicineFrq_Arr.insert(getStr as AnyObject, at: i)
                        break
                    }
                }
            }
            print("medicineFrqArr------------------\(medicineFrq_Arr)")
        }
        else if Float(xCoordinate)! <= 135{
            var nameStr = String()
            
            for i in 0..<yCoordinate.count{
                let getDiff = Float(yCoordinate[i])! - Float(YCoordinateCurrntPos)!
                if getDiff<0{
                    let get_Diff =   Float(YCoordinateCurrntPos)! - Float(yCoordinate[i])!
                    if get_Diff<10{
                        var getStr = String()
                        
                        if medicineDays_Arr.indices.contains(i){
                            getStr.append("\(medicineDays_Arr[i])")
                            getStr.append(character)
                        }
                        else{
                            getStr.append(character)
                        }
                        medicineDays_Arr.insert(getStr as AnyObject, at: i)
                        break
                    }
                }
                else{
                    if getDiff<10{
                        var getStr = String()
                        if medicineDays_Arr.indices.contains(i){
                            let getTxt = "\(medicineDays_Arr[i])"
                            getStr.append(getTxt)
                            getStr.append(character)
                            
                        }
                        else{
                            getStr.append(character)
                        }
                        medicineDays_Arr.insert(getStr as AnyObject, at: i)
                        break
                    }
                }
            }
             print("medicineDaysArr------------------\(medicineDays_Arr)")
        }
        }
    }
    
    func setValueFromKeyboard(getTxt:String){
        preview_TxtField.text = ""
        if symptomsTitle_Btn.backgroundColor == Themes.sharedInstance.customColor(){
            if checkRepeatedSymptoms(getStr: String(getTxt)){
                var formDic = [String:AnyObject]()
                formDic = ["name":String(getTxt),"duration":""] as [String : AnyObject]
                arrDataView4PreSym.append(formDic as AnyObject)
            }
        }
        else if  examinationTitle_Btn.backgroundColor == Themes.sharedInstance.customColor(){
            if checkRepeatedSymptoms(getStr: String(getTxt)){
                var formDic = [String:AnyObject]()
                formDic = ["name":String(getTxt),"duration":""] as [String : AnyObject]
                arrDataView4PreExa.append(formDic as AnyObject)
            }
        }
        formFinalDicToLoad()
    }
    func clearWritingEditor(){
        editorViewController.editor.clear()
    }
    func receiveNotification(ns: NSNotification){
        print("/nReceived Notification-------\(ns.userInfo)")
        print("/nReceived Notification-------\(ns.object)")
        if let getObj = ns.object as? String{
            getText.append("\(ns.object!)")
            // searchSymtmsExamin_TokenView.becomeFirstResponder()
            // searchSymtmsExamin_TokenView.text = getText
            if symptomsTitle_Btn.backgroundColor == Themes.sharedInstance.customColor() || examinationTitle_Btn.backgroundColor == Themes.sharedInstance.customColor(){
           getAllAutoFill(searchTag: getText,tokenView: "SearchSymtoms", type: "")
//                timer_TextImport = Timer.scheduledTimer(timeInterval: 3, target: self, selector: #selector(getImportTextTimer), userInfo: nil, repeats: false)
              
            }
            else if medicinesTitle_Btn.backgroundColor == Themes.sharedInstance.customColor(){
                if getText.count >= 3{
                getDrugList(searchTag: getText)
                }
            }
        }
        //searchSymtmsExamin_TokenView.
    }
    
    func removeTxt(ns:NSNotification){
        getText.removeAll()
        //searchSymtmsExamin_TokenView.text = getText
    }
    
    func eraseAllNotification(ns: NSNotification){
        //        print("------------------erase")
        //        clearWritingEditor()
        
        //        getText.removeAll()
        //        clearWritingEditor()
        //        searchSymtmsExamin_TokenView.text = ""
        //        searchSymtmsExamin_TokenView.becomeFirstResponder()
        //        searchSymtmsExamin_TokenView.resignFirstResponder()
    }
    
    func getBlockForTimer(){
        print("Done!")
        
        do{
            let getTxt =  try self.editorViewController.editor.export_(self.block, mimeType: .JIIX)
            let data = getTxt.data(using: .utf8)!
            let jsonDict = try JSONSerialization.jsonObject(with: data, options : .allowFragments) as? [Dictionary<String,Any>]
            print(jsonDict)
        }
        catch{
            
        }
    }
    
     func getImportTextTimer(){
        
        print("timer-----\(textSample)")
//        textSample = getText
        writingExportBtn_Action(sender: symptomsTitle_Btn)
//        clearWritingEditor()
        
    }
    
    func createPackage(packageName: String) throws -> IINKContentPackage? {
        // Create a new content package with name
        var resultPackage: IINKContentPackage?
        let fullPath = FileManager.default.pathForFile(inDocumentDirectory: packageName) + ".iink"
        if let engine = (UIApplication.shared.delegate as? AppDelegate)?.engine {
            resultPackage = try engine.createPackage(fullPath.decomposedStringWithCanonicalMapping)
            
            // Add a blank page type Text Document
            if let part = try resultPackage?.createPart("Text") /* Options are : "Diagram", "Drawing", "Math", "Text Document", "Text" */ {
                self.title = "Type: " + part.type
            }
        }
        return resultPackage
    }
    
    //MARK:- INKEditor Delegates
    func partChanged(_ editor: IINKEditor) {
        print("sfg")
    }
    
    func contentChanged(_ editor: IINKEditor, blockIds: [String]) {
        print("sfg\(blockIds)")
        print()
    }
    
    func onError(_ editor: IINKEditor, blockId: String, message: String) {
        print("message----\(message)")
        print("blockid-------\(blockId)")
    }

    func setShadow(view: UIView) {
        view.layer.shadowColor = UIColor(red: 0.800, green: 0.800, blue: 0.800, alpha: 1.0).cgColor
        view.layer.shadowOffset = CGSize.zero
        view.layer.shadowRadius = 5
        view.layer.shadowOpacity = 2.0
        view.layer.masksToBounds = false
    }
    
    func setPresetBtn(sender:UIButton){
        sender.layer.borderColor = UIColor.white.cgColor
        // view.layer.shadowOffset = CGSize.zero
        sender.layer.cornerRadius = 5
        sender.layer.borderWidth = 1.0
        sender.layer.masksToBounds = false
    }
    
    func checkRepeatedSymptoms(getStr:String)->Bool{
//        for i in 0..<arrDataView4PreSym.count{
//            if arrDataView4PreSym[i] == getStr{
//                self.view.makeToast("The symptom already exists", duration: 2.0, position: .center)
//                return false
//                break
//            }
//        }
        return true
    }
    
    func checkRepeatedDiagnosis(getStr:String)->Bool{
         return true
    }
    
    func setKeyboardPosition(){
        if !checkKeyboard{
            headingsViewHeight_Constrnt.constant = 90
        }
        else{
            collectionViewHgt_Contrnt.constant = 140
            headingsViewHeight_Constrnt.constant = 90
            checkKeyboard = false
        }
    }
    
    func removeMedicineSeperateView(){
        drugDaysSeperate_View.removeFromSuperview()
        drugFrqSeperate_View.removeFromSuperview()
        drugRootSeperate_View.removeFromSuperview()
        drugSeperate_View.removeFromSuperview()
        
        medicineNameTitle_Lbl.removeFromSuperview()
        medicineRouteTitle_Lbl.removeFromSuperview()
        medicineFrqTitle_Lbl.removeFromSuperview()
        medicineDaysTitle_Lbl.removeFromSuperview()
    }
    
    func setSymptomsTitleBtn_Action(){
       symptomsSuggtnBase_View.isHidden = false
       removeMedicineSeperateView()
        
        symptomsTitle_Btn.backgroundColor = Themes.sharedInstance.customColor()
        timer_TextImport = Timer.scheduledTimer(timeInterval: 3, target: self, selector: #selector(getImportTextTimer), userInfo: nil, repeats: true)
        var chk_Key = false
        for i in 0..<loadedData_Dic.count{
            let getDic = loadedData_Dic[i] as! [String:AnyObject]
            if let getKey = getDic["symptoms"]{
                chk_Key = true
                break
            }
            else{
                
            }
        }
        if !chk_Key{
            var formSympDic = [String:AnyObject]()
            formSympDic["symptoms"] = [] as AnyObject
            //formSympDic.setValue(formSympDicToLoad(), forKeyPath: "symptoms")
            loadedData_Dic.append(formSympDic as AnyObject)
            prescriptionColl_View.reloadData()
        }
        else{
            if symptomsTitle_Btn.backgroundColor == Themes.sharedInstance.customColor(){
                var formSympDic = [String:AnyObject]()
                formSympDic["symptoms"] = [] as AnyObject
                //formSympDic.setValue(formSympDicToLoad(), forKeyPath: "symptoms")
                loadedData_Dic.append(formSympDic as AnyObject)
                prescriptionColl_View.reloadData()
            }
        }
        setTagViews(autofill: arrAutoFill, suggestions: days_Fill, searchTag: "")
        // writingBase_View.frame = CGRect(x: 0, y: writingView.frame.minY+40, width: writingBase_View.frame.width, height: writingView.frame.height)
    }
    func setTestCompletedTitleBtn_Action(){
        symptomsSuggtnBase_View.isHidden = false
        removeMedicineSeperateView()
        
        testCompletedTitle_Btn.backgroundColor = Themes.sharedInstance.customColor()
        var chk_Key = false
        for i in 0..<loadedData_Dic.count{
            let getDic = loadedData_Dic[i] as! [String:AnyObject]
            if let getKey = getDic["testscompleted"]{
                chk_Key = true
                break
            }
            else{
                
            }
        }
        if !chk_Key{
            var formSympDic = [String:AnyObject]()
            formSympDic["testscompleted"] = [] as AnyObject
            //formSympDic.setValue(formSympDicToLoad(), forKeyPath: "symptoms")
            loadedData_Dic.append(formSympDic as AnyObject)
            prescriptionColl_View.reloadData()
        }
        else{
            if testCompletedTitle_Btn.backgroundColor == Themes.sharedInstance.customColor(){
                var formSympDic = [String:AnyObject]()
                formSympDic["testscompleted"] = [] as AnyObject
                //formSympDic.setValue(formSympDicToLoad(), forKeyPath: "symptoms")
                loadedData_Dic.append(formSympDic as AnyObject)
                prescriptionColl_View.reloadData()
            }
        }
//        setTagViews(autofill: arrAutoFill, suggestions: days_Fill, searchTag: "")
    }
    func setTestDoneTitleBtn_Action(){
        symptomsSuggtnBase_View.isHidden = false
        removeMedicineSeperateView()
        
        testToBeDoneTitle_Btn.backgroundColor = Themes.sharedInstance.customColor()
        var chk_Key = false
        for i in 0..<loadedData_Dic.count{
            let getDic = loadedData_Dic[i] as! [String:AnyObject]
            if let getKey = getDic["testtobedone"]{
                chk_Key = true
                break
            }
            else{
                
            }
        }
        if !chk_Key{
            var formSympDic = [String:AnyObject]()
            formSympDic["testtobedone"] = [] as AnyObject
            //formSympDic.setValue(formSympDicToLoad(), forKeyPath: "symptoms")
            loadedData_Dic.append(formSympDic as AnyObject)
            prescriptionColl_View.reloadData()
        }
        else{
            if testToBeDoneTitle_Btn.backgroundColor == Themes.sharedInstance.customColor(){
                var formSympDic = [String:AnyObject]()
                formSympDic["testtobedone"] = [] as AnyObject
                //formSympDic.setValue(formSympDicToLoad(), forKeyPath: "symptoms")
                loadedData_Dic.append(formSympDic as AnyObject)
                prescriptionColl_View.reloadData()
            }
        }
        //        setTagViews(autofill: arrAutoFill, suggestions: days_Fill, searchTag: "")
    }
    
    func setExaminationTitleBtn_Action(){
        symptomsSuggtnBase_View.isHidden = false
        removeMedicineSeperateView()
        examinationTitle_Btn.backgroundColor = Themes.sharedInstance.customColor()
        var chk_Key = false
        for i in 0..<loadedData_Dic.count{
            let getDic = loadedData_Dic[i] as! [String:AnyObject]
            if let getKey = getDic["examination"]{
                chk_Key = true
                break
            }
            else{
                
            }
        }
        if !chk_Key{
            var formSympDic = [String:AnyObject]()
            formSympDic["examination"] = [] as AnyObject
            //formSympDic.setValue(formSympDicToLoad(), forKeyPath: "symptoms")
            loadedData_Dic.append(formSympDic as AnyObject)
            prescriptionColl_View.reloadData()
        }
        else{
            if examinationTitle_Btn.backgroundColor == Themes.sharedInstance.customColor(){
                var formSympDic = [String:AnyObject]()
                formSympDic["examination"] = [] as AnyObject
                //formSympDic.setValue(formSympDicToLoad(), forKeyPath: "symptoms")
                loadedData_Dic.append(formSympDic as AnyObject)
                prescriptionColl_View.reloadData()
            }
        }
        setTagViews(autofill: arrAutoFill, suggestions: days_Fill, searchTag: "")
    }
    
    func diagnosisTitleBtn_Action(){
        symptomsSuggtnBase_View.isHidden = false
        autoFillBottom_View.isHidden = true
        removeMedicineSeperateView()
        diagnosis_Btn.backgroundColor = Themes.sharedInstance.customColor()
        var chk_Key = false
        for i in 0..<loadedData_Dic.count{
            let getDic = loadedData_Dic[i] as! [String:AnyObject]
            if let getKey = getDic["diagnosis"]{
                chk_Key = true
                break
            }
            else{
                
            }
        }
        if !chk_Key{
            var formSympDic = [String:AnyObject]()
            formSympDic["diagnosis"] = [] as AnyObject
            //formSympDic.setValue(formSympDicToLoad(), forKeyPath: "symptoms")
            loadedData_Dic.append(formSympDic as AnyObject)
            prescriptionColl_View.reloadData()
        }
        else{
            if diagnosis_Btn.backgroundColor == Themes.sharedInstance.customColor(){
                var formSympDic = [String:AnyObject]()
                formSympDic["diagnosis"] = [] as AnyObject
                //formSympDic.setValue(formSympDicToLoad(), forKeyPath: "symptoms")
                loadedData_Dic.append(formSympDic as AnyObject)
                prescriptionColl_View.reloadData()
            }
        }
    }
    
    func setDrugsTitleBtn_Action(){
        
        symptomsSuggtnBase_View.isHidden = false
        autoFillBottom_View.isHidden = true
        medicinesTitle_Btn.backgroundColor = Themes.sharedInstance.customColor()
        self.writingBase_View.addSubview(drugSeperate_View)
        self.writingBase_View.addSubview(drugRootSeperate_View)
        self.writingBase_View.addSubview(drugFrqSeperate_View)
        self.writingBase_View.addSubview(drugDaysSeperate_View)
        
        self.writingBase_View.addSubview(medicineNameTitle_Lbl)
        self.writingBase_View.addSubview(medicineRouteTitle_Lbl)
        self.writingBase_View.addSubview(medicineFrqTitle_Lbl)
        self.writingBase_View.addSubview(medicineDaysTitle_Lbl)
        self.searchSymtomsAutoFill_View.removeAllTags()
        self.searchSymtomsExamitnDays_View.removeAllTags()
        
        var chk_Key = false
        for i in 0..<loadedData_Dic.count{
            let getDic = loadedData_Dic[i] as! [String:AnyObject]
            if let getKey = getDic["medicines"]{
                chk_Key = true
                break
            }
            else{
                
            }
        }
        if !chk_Key{
            var formSympDic = [String:AnyObject]()
            formSympDic["medicines"] = [] as AnyObject
            //formSympDic.setValue(formSympDicToLoad(), forKeyPath: "symptoms")
            loadedData_Dic.append(formSympDic as AnyObject)
            prescriptionColl_View.reloadData()
        }
        else{
            if medicinesTitle_Btn.backgroundColor == Themes.sharedInstance.customColor(){
                var formSympDic = [String:AnyObject]()
                formSympDic["medicines"] = [] as AnyObject
                //formSympDic.setValue(formSympDicToLoad(), forKeyPath: "symptoms")
                loadedData_Dic.append(formSympDic as AnyObject)
                prescriptionColl_View.reloadData()
            }
        }
        
       
//        daysSymtmExamnt_HgtCnstrnt.constant = 0
//        searchSymtomsExamitnDays_View.alignment = .left
//        headingsViewHeight_Constrnt.constant =  0
        
    }
    
    func notesTitleBtn_Action(){
        symptomsSuggtnBase_View.isHidden = false
        autoFillBottom_View.isHidden = true
        removeMedicineSeperateView()
        notesTitle_Btn.backgroundColor = Themes.sharedInstance.customColor()
        var chk_Key = false
        for i in 0..<loadedData_Dic.count{
            let getDic = loadedData_Dic[i] as! [String:AnyObject]
            if let getKey = getDic["notes"]{
                chk_Key = true
                break
            }
            else{
                
            }
        }
        if !chk_Key{
            var formSympDic = [String:AnyObject]()
            formSympDic["notes"] = [] as AnyObject
            //formSympDic.setValue(formSympDicToLoad(), forKeyPath: "symptoms")
//            loadedData_Dic.append(formSympDic as AnyObject)
            loadedData_Dic.remove(at: 6)
            loadedData_Dic.insert(formSympDic as AnyObject, at: 6)
            prescriptionColl_View.reloadData()
        }
        else{
            if notesTitle_Btn.backgroundColor == Themes.sharedInstance.customColor(){
                var formSympDic = [String:AnyObject]()
                formSympDic["notes"] = [] as AnyObject
                //formSympDic.setValue(formSympDicToLoad(), forKeyPath: "symptoms")
//                loadedData_Dic.append(formSympDic as AnyObject)
                loadedData_Dic.remove(at: 6)
                loadedData_Dic.insert(formSympDic as AnyObject, at: 6)
                prescriptionColl_View.reloadData()
            }
        }
    }
    
    func treatmentTitleBtn_Action(){
        symptomsSuggtnBase_View.isHidden = false
        autoFillBottom_View.isHidden = true
        removeMedicineSeperateView()
        treatmentPlanTitle_Btn.backgroundColor = Themes.sharedInstance.customColor()
        var chk_Key = false
        for i in 0..<loadedData_Dic.count{
            let getDic = loadedData_Dic[i] as! [String:AnyObject]
            if let getKey = getDic["treatmentplan"]{
                chk_Key = true
                break
            }
            else{
                
            }
        }
        if !chk_Key{
            var formSympDic = [String:AnyObject]()
            formSympDic["treatmentplan"] = [] as AnyObject
            //formSympDic.setValue(formSympDicToLoad(), forKeyPath: "symptoms")
            loadedData_Dic.remove(at: 7)
            loadedData_Dic.insert(formSympDic as AnyObject, at: 7)
//            loadedData_Dic.append(formSympDic as AnyObject)
            prescriptionColl_View.reloadData()
        }
        else{
             if treatmentPlanTitle_Btn.backgroundColor == Themes.sharedInstance.customColor(){
                var formSympDic = [String:AnyObject]()
                formSympDic["treatmentplan"] = [] as AnyObject
                //formSympDic.setValue(formSympDicToLoad(), forKeyPath: "symptoms")
                loadedData_Dic.remove(at: 7)
                loadedData_Dic.insert(formSympDic as AnyObject, at: 7)
//              loadedData_Dic.append(formSympDic as AnyObject)
                prescriptionColl_View.reloadData()
            }
        }
    }
    
    func setHistoryTitleBtn_Action(){
        symptomsSuggtnBase_View.isHidden = false
        removeMedicineSeperateView()
        
        histryHospitalTitle_Btn.backgroundColor = Themes.sharedInstance.customColor()
        var chk_Key = false
        for i in 0..<loadedData_Dic.count{
            let getDic = loadedData_Dic[i] as! [String:AnyObject]
            if let getKey = getDic["History"]{
                chk_Key = true
                break
            }
            else{
                
            }
        }
        if !chk_Key{
            var formSympDic = [String:AnyObject]()
            formSympDic["History"] = [] as AnyObject
            //formSympDic.setValue(formSympDicToLoad(), forKeyPath: "symptoms")
            loadedData_Dic.append(formSympDic as AnyObject)
            prescriptionColl_View.reloadData()
        }
        else{
            if histryHospitalTitle_Btn.backgroundColor == Themes.sharedInstance.customColor(){
                var formSympDic = [String:AnyObject]()
                formSympDic["History"] = [] as AnyObject
                //formSympDic.setValue(formSympDicToLoad(), forKeyPath: "symptoms")
                loadedData_Dic.append(formSympDic as AnyObject)
                prescriptionColl_View.reloadData()
            }
        }
        setTagViews(autofill: arrAutoFill, suggestions: days_Fill, searchTag: "")
        // writingBase_View.frame = CGRect(x: 0, y: writingView.frame.minY+40, width: writingBase_View.frame.width, height: writingView.frame.height)
    }
    func  setDaysView(){
        
       // if  arrDataView4PreSym.count != 0{
            searchSymtomsExamitnDays_View.delegate = self
            searchSymtomsExamitnDays_View.textFont = UIFont.systemFont(ofSize: 15)
            searchSymtomsExamitnDays_View.shadowRadius = 2
            searchSymtomsExamitnDays_View.shadowOpacity = 0.4
            searchSymtomsExamitnDays_View.shadowColor = UIColor.black
            searchSymtomsExamitnDays_View.shadowOffset = CGSize(width: 1, height: 1)
            searchSymtomsExamitnDays_View.removeAllTags()
            searchSymtomsExamitnDays_View.tagSelectedBackgroundColor =  UIColor(red: 85.0/255.0, green: 177.0/255.0, blue: 95.0/255.0, alpha: 1.0)
            searchSymtomsExamitnDays_View.tagBackgroundColor =  UIColor(red: 40.0/255.0, green: 140.0/255.0, blue: 140.0/255.0, alpha: 1.0)
            searchSymtomsExamitnDays_View.cornerRadius = 10
            for i in 0..<days_Fill.count {
                searchSymtomsExamitnDays_View.addTag(days_Fill[i] as! String)
            }
            daysSymtmExamnt_HgtCnstrnt.constant = 100
            searchSymtomsExamitnDays_View.alignment = .left
        
            headingsViewHeight_Constrnt.constant =  180
        print("HEIGHT--------\(headingsViewHeight_Constrnt.constant)")
        
       // }
    }
    
  
    func setDiagnosis(){
        var formMedicineDic = [String:AnyObject]()
        formMedicineDic["diagnosis"] = arrDataDiagnosis as AnyObject
        //formSympDic.setValue(formSympDicToLoad(), forKeyPath: "symptoms")
        loadedData_Dic.remove(at: 2)
        loadedData_Dic.insert(formMedicineDic as AnyObject, at: 2)
        prescriptionColl_View.reloadData()
    }
    func setTests(){
        var formMedicineDic = [String:AnyObject]()
        formMedicineDic["testscompleted"] = arrDataTests as AnyObject
        //formSympDic.setValue(formSympDicToLoad(), forKeyPath: "symptoms")
        loadedData_Dic.remove(at: 3)
        loadedData_Dic.insert(formMedicineDic as AnyObject, at: 3)
        prescriptionColl_View.reloadData()
    }
    func setTestsToBeDone(){
        var formMedicineDic = [String:AnyObject]()
        formMedicineDic["testtobedone"] = arrDataTestsDone as AnyObject
        //formSympDic.setValue(formSympDicToLoad(), forKeyPath: "symptoms")
        loadedData_Dic.remove(at: 4)
        loadedData_Dic.insert(formMedicineDic as AnyObject, at: 4)
        prescriptionColl_View.reloadData()
    }
    func setDrugsView(){
        var formMedicineDic = [String:AnyObject]()
        formMedicineDic["medicines"] = arrDataView5 as AnyObject
        //formSympDic.setValue(formSympDicToLoad(), forKeyPath: "symptoms")
        loadedData_Dic.remove(at: 5)
        loadedData_Dic.insert(formMedicineDic as AnyObject, at: 5)
        prescriptionColl_View.reloadData()
    }
    func setNotes(){
        
        var formNotesDic = [String:AnyObject]()
        formNotesDic["notes"] = arrDataNotes as AnyObject
        //formSympDic.setValue(formSympDicToLoad(), forKeyPath: "symptoms")
        loadedData_Dic.remove(at: 6)
        loadedData_Dic.insert(formNotesDic as AnyObject, at: 6)
        prescriptionColl_View.reloadData()
    }
    func setTreatmentPlan(){
        var formNotesDic = [String:AnyObject]()
        formNotesDic["treatmentplan"] = arrDataTreatment as AnyObject
        //formSympDic.setValue(formSympDicToLoad(), forKeyPath: "symptoms")
        loadedData_Dic.remove(at: 7)
        loadedData_Dic.insert(formNotesDic as AnyObject, at: 7)
        prescriptionColl_View.reloadData()
    }
    
    func setHistory(){
        var formNotesDic = [String:AnyObject]()
        formNotesDic["history"] = arrDataView4PreHistory as AnyObject
        //formSympDic.setValue(formSympDicToLoad(), forKeyPath: "symptoms")
        loadedData_Dic.remove(at: 8)
        loadedData_Dic.insert(formNotesDic as AnyObject, at: 8)
        prescriptionColl_View.reloadData()
    }
    
    
    func setTagViews(autofill:[AnyObject],suggestions:[AnyObject],searchTag:String){
        autoFillBottom_View.isHidden = true
        searchSymtomsAutoFill_View.removeAllTags()
        searchSymtomsExamitnDays_View.removeAllTags()
        searchSymtomsAutoFill_View.delegate = self
        searchSymtomsAutoFill_View.textFont = UIFont.systemFont(ofSize: 15)
        searchSymtomsAutoFill_View.shadowRadius = 2
        searchSymtomsAutoFill_View.shadowOpacity = 0.4
        searchSymtomsAutoFill_View.shadowColor = UIColor.black
        searchSymtomsAutoFill_View.shadowOffset = CGSize(width: 1, height: 1)
        searchSymtomsAutoFill_View.removeAllTags()
        searchSymtomsAutoFill_View.tagSelectedBackgroundColor =  UIColor(red: 248/255.0, green: 119.0/255.0, blue: 19.0/255.0, alpha: 1.0)
        searchSymtomsAutoFill_View.tagBackgroundColor =  UIColor(red: 248.0/255.0, green: 119.0/255.0, blue: 19.0/255.0, alpha: 1.0)
        searchSymtomsAutoFill_View.cornerRadius = 10
        if symptomsTitle_Btn.backgroundColor == Themes.sharedInstance.customColor() || examinationTitle_Btn.backgroundColor == Themes.sharedInstance.customColor(){
            if autofill.count != 0{
                for i in 0..<autofill.count{
                    searchSymtomsAutoFill_View.addTag(autofill[i] as! String)
                }
            }
            else{
                if searchTag == ""{
                    for i in 0..<symtompsDefault_Data.count{
                        searchSymtomsAutoFill_View.addTag(symtompsDefault_Data[i] as! String)
                    }
                }
                else{
                    autoFillBottom_View.isHidden = true
                }
            }
            setDaysView()
        }
        else if medicinesTitle_Btn.backgroundColor == Themes.sharedInstance.customColor(){
            daysSymtmExamnt_HgtCnstrnt.constant = 0
            if autofill.count != 0{
                autoFillBottom_View.isHidden = false
                for i in 0..<autofill.count{
                    let getDic = autofill[i] as! [String:AnyObject]
                    searchSymtomsAutoFill_View.addTag(getDic["displaybrandname"] as! String)
                }
            }
            else{
            autoFillBottom_View.isHidden = true
            }
        }
         autofillSymtmExamintn_HgtCnstrnt.constant = 100
    }
    
    func setDrugsDic(medicine:[String:AnyObject]){
        var dictSample:[String: AnyObject] = [:]
        dictSample.updateValue("no" as AnyObject, forKey: "is_ai_data")
        dictSample.updateValue("no" as AnyObject, forKey: "ai_drugid")
        dictSample.updateValue(Themes.sharedInstance.checkNullvalue(Passed_value: medicine["brandname"]) as AnyObject, forKey: "brandname")
        dictSample.updateValue(Themes.sharedInstance.checkNullvalue(Passed_value: medicine["genericname"]) as AnyObject, forKey: "genericname")
        dictSample.updateValue(Themes.sharedInstance.checkNullvalue(Passed_value: medicine["genericid"]) as AnyObject, forKey: "genericid")
        dictSample.updateValue("" as AnyObject, forKey: "description")
        dictSample.updateValue(Themes.sharedInstance.checkNullvalue(Passed_value: medicine["drugid"]) as AnyObject, forKey: "drugid")
        dictSample.updateValue(Themes.sharedInstance.checkNullvalue(Passed_value: medicine["route"]) as AnyObject, forKey: "route")
        dictSample.updateValue("1-1-1" as AnyObject, forKey: "frequency")
        dictSample.updateValue("3" as AnyObject, forKey: "beforeafter")
        dictSample.updateValue("3" as AnyObject, forKey: "noofdays")
        dictSample.updateValue(Themes.sharedInstance.checkNullvalue(Passed_value: medicine["brandid"]) as AnyObject, forKey: "brandid")
        dictSample.updateValue(Themes.sharedInstance.checkNullvalue(Passed_value: medicine["manufactureid"]) as AnyObject, forKey: "manufactureid")
        dictSample.updateValue(Themes.sharedInstance.checkNullvalue(Passed_value: medicine["manufacturename"]) as AnyObject, forKey: "manufacturename")
        dictSample.updateValue(Themes.sharedInstance.checkNullvalue(Passed_value: medicine["therapeuticid"])  as AnyObject, forKey: "therapeuticid")
        dictSample.updateValue(Themes.sharedInstance.checkNullvalue(Passed_value: medicine["displaybrandname"])  as AnyObject, forKey: "displaybrandname")
        dictSample.updateValue(Themes.sharedInstance.checkNullvalue(Passed_value: medicine["displaystrength"]) as AnyObject, forKey: "displaystrength")
        dictSample.updateValue(Themes.sharedInstance.checkNullvalue(Passed_value: medicine["strength"]) as AnyObject, forKey: "strength")
        dictSample.updateValue(Themes.sharedInstance.checkNullvalue(Passed_value: medicine["sponsored"]) as AnyObject, forKey: "sponsored")
        dictSample.updateValue(Themes.sharedInstance.checkNullvalue(Passed_value: medicine["generic_combo"]) as AnyObject, forKey: "generic_combo")
        dictSample.updateValue("1" as AnyObject, forKey: "manual")
        dictSample.updateValue("1" as AnyObject, forKey: "isSelected")
        arrDataView5.append(dictSample as AnyObject)
        setDrugsView()
    }
    
    func formStringTokens(tokens:[AnyObject]) -> String{
        var token_Str:String = String()
        for i in 0..<tokens.count{
            if token_Str == ""{
                let getStr = tokens[i] as! [String:AnyObject]
                token_Str.append("\(getStr["name"]!)")
            }
            else{
                let getStr = tokens[i] as! [String:AnyObject]
                token_Str.append(",\(getStr["name"]!)")
            }
        }
        return token_Str
    }
    
    func formSympDicToLoad()->[String]{
      //  loadedData_Dic["symptoms"] = arrDataView4PreSym
        var formSypmStr_Arr = [String]()
        for i in 0..<arrDataView4PreSym.count{
            var formSymp_Str = String()
            let getData = arrDataView4PreSym[i] as! [String:AnyObject]
            let getSymp_Name = Themes.sharedInstance.checkNullvalue(Passed_value: getData["name"])
            formSymp_Str.append(getSymp_Name)
//            if i+1 <= arrDataView4PreSym.count{
//                let chkDuration = arrDataView4PreSym[i+1] as! [String:AnyObject]
//                let chkData = Themes.sharedInstance.checkNullvalue(Passed_value: chkDuration["name"])
//                if   chkData == ""{
//                    formSymp_Str.append( Themes.sharedInstance.checkNullvalue(Passed_value: chkDuration["duration"]))
//                }
//            }
            formSypmStr_Arr.append(formSymp_Str)
        
        }
        return formSypmStr_Arr
    }
    
    func formFinalDicToLoad(){
        //loadedData_Dic.removeAll()
        if arrDataView4PreSym.count>0{
            var formSympDic = [String:AnyObject]()
            formSympDic["symptoms"] = arrDataView4PreSym as AnyObject
            //formSympDic.setValue(formSympDicToLoad(), forKeyPath: "symptoms")
            loadedData_Dic.remove(at: 0)
            loadedData_Dic.insert(formSympDic as AnyObject, at: 0)
            getAllAutoFill(searchTag: "", tokenView: "SearchSymtoms", type: "")
        }
        if  arrDataView4PreExa.count>0{
            var formExaDic = [String:AnyObject]()
            formExaDic["examination"] = arrDataView4PreExa as AnyObject
            //formSympDic.setValue(formSympDicToLoad(), forKeyPath: "symptoms")
            loadedData_Dic.remove(at: 1)
            loadedData_Dic.insert(formExaDic as AnyObject, at: 1)
            //loadedData_Dic.append(formExaDic as AnyObject)
             getAllAutoFill(searchTag: "", tokenView: "Examination", type: "")
        }
        prescriptionColl_View.reloadData()
    }
    
    
    func checkTitleSelection()->Bool{
        var chckTiltle = false
        if symptomsTitle_Btn.backgroundColor == Themes.sharedInstance.customColor(){
            chckTiltle = true
//            self.view.makeToast("Please select any heading", duration: 2.0, position: .center)
        }
        else if examinationTitle_Btn.backgroundColor == Themes.sharedInstance.customColor(){
              chckTiltle = true
        }
        else if patientDtls_Btn.backgroundColor == Themes.sharedInstance.customColor(){
              chckTiltle = true
        }
        else if diagnosis_Btn.backgroundColor == Themes.sharedInstance.customColor(){
              chckTiltle = true
        }
        else if testCompletedTitle_Btn.backgroundColor == Themes.sharedInstance.customColor(){
              chckTiltle = true
        }
        else if testToBeDoneTitle_Btn.backgroundColor == Themes.sharedInstance.customColor(){
              chckTiltle = true
        }
        else if medicinesTitle_Btn.backgroundColor == Themes.sharedInstance.customColor(){
              chckTiltle = true
        }
        else if notesTitle_Btn.backgroundColor == Themes.sharedInstance.customColor(){
              chckTiltle = true
        }
        else if treatmentPlanTitle_Btn.backgroundColor == Themes.sharedInstance.customColor(){
              chckTiltle = true
        }
        else if histryHospitalTitle_Btn.backgroundColor == Themes.sharedInstance.customColor(){
              chckTiltle = true
        }
        else if riskAllergyTitle_Btn.backgroundColor == Themes.sharedInstance.customColor(){
              chckTiltle = true
        }
        else if vitalsTitle_Btn.backgroundColor == Themes.sharedInstance.customColor(){
              chckTiltle = true
        }
        else if adviceTitle_Btn.backgroundColor == Themes.sharedInstance.customColor(){
              chckTiltle = true
        }
        else if followUpTitle_Btn.backgroundColor == Themes.sharedInstance.customColor(){
              chckTiltle = true
        }
        else if referToTitle_Btn.backgroundColor == Themes.sharedInstance.customColor(){
              chckTiltle = true
        }
        else{
             chckTiltle = false
        }
        return chckTiltle
    }
    
    
    //MARK:- TagView Delegates
    
    func tagPressed(_ title: String, tagView: TagView, sender: TagListView) {
       clearWritingEditor()
        sleep(1)
        tagView.isSelected = !tagView.isSelected
//        if sender == historySuggtn_TagView || sender == historyAutoFill_TagView {
//            editedLastToken = ""
//            editedTokenView = searchSymtExmtnSuggstn_TokenView
//            arrDataView3FamilyHistory.removeAll()
//            arrDataView3FamilyHistory = formTokens(tokens: familyHistory_TokenView.tokens()!)
//            arrDataView3FamilyHistory.append(String(describing: title))
//            setFamilyHistoryView()
//        }
//        if sender == allergyRiskSuggtnTag_View  || sender == riskAutoFill_TagView {
//            editedLastToken = ""
//            editedTokenView = searchSymtExmtnSuggstn_TokenView
//            arrDataView3Risk.removeAll()
//            arrDataView3Risk = formTokens(tokens: allergyRisk_TokenView.tokens()!)
//            arrDataView3Risk.append(String(describing: title))
//            setAllergyHistoryView()
//        }
        
        if sender == searchSymtomsAutoFill_View {
           // arrDataView4PreSym.removeAll()
            tagView.isSelected = true
            if symptomsTitle_Btn.backgroundColor == Themes.sharedInstance.customColor(){
                
            if checkRepeatedSymptoms(getStr: title){
                var formDic = [String:AnyObject]()
                formDic = ["name":title,"duration":""] as [String : AnyObject]
                arrDataView4PreSym.append(formDic as AnyObject)
            }
            }
            else if examinationTitle_Btn.backgroundColor == Themes.sharedInstance.customColor(){
                if checkRepeatedSymptoms(getStr: title){
                    var formDic = [String:AnyObject]()
                    formDic = ["name":title,"duration":""] as [String : AnyObject]
                    arrDataView4PreExa.append(formDic as AnyObject)
                }
            }
            else if medicinesTitle_Btn.backgroundColor == Themes.sharedInstance.customColor(){
//                 clearWritingEditor()
//                sleep(3)
                do{
//                    try editorViewController.editor.addBlock(CGPoint(x: 20, y: 20), type: "Text")
//                    try editorViewController.editor.addBlock(CGPoint(x: 0, y: 0), type: "Text", mimeType:  .text, data: title)
                     try editorViewController.editor.import_(.text, data: title, block: nil)
                    // try editor.import_(MimeType.TEXT, "this is a test", null);
                }
                catch{
                    print("error------------------------------\(error)")
                }
                
//                for i in 0..<arrAutoFill.count{
//                    let getMedicine_Dic = arrAutoFill[i] as! [String:AnyObject]
//                    if title == Themes.sharedInstance.checkNullvalue(Passed_value:getMedicine_Dic["displaybrandname"]){
//                                do{
//                                    //try editorViewController.editor.addBlock(CGPoint(x: 20, y: 20), type: "Text")
//                                  // try editorViewController.editor.addBlock(CGPoint(x: 20, y: 20), type: "Text", mimeType:  .text, data: "Dolo 650mg")
//                                    try editorViewController.editor.import_(.text, data: "Dolo 650mg", block: nil)
//                                   // try editor.import_(MimeType.TEXT, "this is a test", null);
//                                }
//                                catch{
//                                    print("error------------------------------\(error)")
//                                }
////                         setDrugsDic(medicine: getMedicine_Dic)
//                        break
//                    }
//                    else{
//
//                    }
//                }
            }
            
        }
      else if sender == searchSymtomsExamitnDays_View {
            if symptomsTitle_Btn.backgroundColor == Themes.sharedInstance.customColor(){
            var formDic = [String:AnyObject]()
            formDic = ["name":"","duration":title] as [String : AnyObject]
            arrDataView4PreSym.append(formDic as AnyObject)
            }
            else{
                var formDic = [String:AnyObject]()
                formDic = ["name":"","duration":title] as [String : AnyObject]
                arrDataView4PreExa.append(formDic as AnyObject)
            }
        }
        
       formFinalDicToLoad()
    }
    
    func tagRemoveButtonPressed(_ title: String, tagView: TagView, sender: TagListView) {
        
        sender.removeTagView(tagView)
    }
    
    //MARK:- CollectionView Delegates
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        print("count---------\(loadedData_Dic.count)")
         return loadedData_Dic.count
    }
    
    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
//        let headerView = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: "HeaderCollectionReusableView", for: indexPath) as! HeaderCollectionReusableView
        let headerView = collectionView.dequeueReusableSupplementaryView(
            ofKind: kind,
            withReuseIdentifier: "\(HeaderCollectionReusableView.self)",
            for: indexPath) as? HeaderCollectionReusableView
        headerView?.backgroundColor = UIColor.white
        let label = UILabel(frame: CGRect(x: 0, y: 0, width: collectionView.frame.width, height: 40))
        label.textColor = UIColor.red
        let getData = loadedData_Dic[indexPath.section] as! [String:AnyObject]
        var titleStr = String()
        if indexPath.section == 0{
           titleStr = "Symptoms"
        }
        else if indexPath.section == 1{
             titleStr = "Examination"
        }
        else if indexPath.section == 2{
            titleStr = "Diagnosis"
        }
        else if indexPath.section == 3{
            titleStr = "Tests Completed"
        }
        else if indexPath.section == 4{
            titleStr = "Test To Be Done"
        }
        else if indexPath.section == 5{
             titleStr = "Medicines"
        }
        if indexPath.section == 6{
            titleStr = "Notes"
        }
        if indexPath.section == 7{
            titleStr = "Treatment Plan"
        }
        if indexPath.section == 8{
            titleStr = "History & Hospitalization"
        }
        headerView?.title_Lbl.text = titleStr
//        headerView.addSubview(label)
        return headerView!
//        switch kind {
//        case UICollectionView.UICollectionElementKindSectionHeader:
//        // 3
//        guard
//            let headerView = collectionView.dequeueReusableSupplementaryView(
//                ofKind: kind,
//                withReuseIdentifier: "\(FlickrPhotoHeaderView.self)",
//                for: indexPath) as? FlickrPhotoHeaderView
//            else {
//                fatalError("Invalid view type")
//        }
//
//        let searchTerm = searches[indexPath.section].searchTerm
//        headerView.label.text = searchTerm
//        return headerView
//        default:
//        // 4
//        assert(false, "Invalid element type")
//    }
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize {
        let getData = loadedData_Dic[section] as! [String:AnyObject]
        var headerSize:CGFloat = 0
        if section == 0{
            let getData =  getData["symptoms"] as! [AnyObject]
            if getData.count>0{
                headerSize = 30
            }
            else{
                if symptomsTitle_Btn.backgroundColor == Themes.sharedInstance.customColor(){
                headerSize = 30
                }
            }
        }
        if section == 1{
            let getData =  getData["examination"] as! [AnyObject]
            if getData.count>0{
                headerSize = 30
            }
            else{
                if examinationTitle_Btn.backgroundColor == Themes.sharedInstance.customColor(){
                    headerSize = 30
                }
            }
        }
        if section == 2{
            let getData =  getData["diagnosis"] as! [AnyObject]
            if getData.count>0{
                headerSize = 30
            }
            else{
                if diagnosis_Btn.backgroundColor == Themes.sharedInstance.customColor(){
                    headerSize = 30
                }
            }
        }
        if section == 3{
            let getData =  getData["testscompleted"] as! [AnyObject]
            if getData.count>0{
                headerSize = 30
            }
            else{
                if testCompletedTitle_Btn.backgroundColor == Themes.sharedInstance.customColor(){
                headerSize = 30
                }
            }
        }
        if section == 4{
            let getData =  getData["testtobedone"] as! [AnyObject]
            if getData.count>0{
                headerSize = 30
            }
            else{
                if testToBeDoneTitle_Btn.backgroundColor == Themes.sharedInstance.customColor(){
                    headerSize = 30
                }
            }
        }
        if section == 5{
            let getData =  getData["medicines"] as! [AnyObject]
            if getData.count>0{
                headerSize = 30
            }
            else{
                if medicinesTitle_Btn.backgroundColor == Themes.sharedInstance.customColor(){
                    headerSize = 30
                }
            }
        }
        if section == 6{
            let getData =  getData["notes"] as! [AnyObject]
            if getData.count>0{
                headerSize = 30
            }
            else{
                if notesTitle_Btn.backgroundColor == Themes.sharedInstance.customColor(){
                    headerSize = 30
                }
            }
        }
        if section == 7{
            let getData =  getData["treatmentplan"] as! [AnyObject]
            if getData.count>0{
                headerSize = 30
            }
            else{
                if treatmentPlanTitle_Btn.backgroundColor == Themes.sharedInstance.customColor(){
                    headerSize = 30
                }
            }
        }
         if section == 8{
            let getData =  getData["history"] as! [AnyObject]
            if getData.count>0{
                headerSize = 30
            }
            else{
                if histryHospitalTitle_Btn.backgroundColor == Themes.sharedInstance.customColor(){
                    headerSize = 30
                }
            }
        }
        return CGSize(width:collectionView.frame.size.width, height:headerSize)
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        let getDic = loadedData_Dic[section] as! [String:AnyObject]
        if  section == 0{
            let getData = getDic["symptoms"] as! [AnyObject]
            return getData.count
        }
        else if section == 1{
            let getData = getDic["examination"] as! [AnyObject]
            return getData.count
        }
        else if section == 2{
            let getData = getDic["diagnosis"] as! [AnyObject]
            return getData.count
        }
        else if section == 3{
            let getData = getDic["testscompleted"] as! [AnyObject]
            if getData.count>0{
                return getData.count
            }
            else{
                return 0
            }
        }
        else if  section == 4{
            let getData = getDic["testtobedone"] as! [AnyObject]
            if getData.count>0{
                return getData.count
            }
            else{
                return 0
            }
        }
        else if section == 5{
            let getData = getDic["medicines"] as! [AnyObject]
            if getData.count>0{
            return getData.count
            }
            else{
               return 0
            }
        }
        else if section == 6{
            let getData = getDic["notes"] as! [AnyObject]
            if getData.count>0{
                return getData.count
            }
            else{
                return 0
            }
        }
        else if section == 7{
            let getData = getDic["treatmentplan"] as! [AnyObject]
            if getData.count>0{
                return getData.count
            }
            else{
                return 0
            }
        }
        else if section == 8{
            let getData = getDic["history"] as! [AnyObject]
            if getData.count>0{
                return getData.count
            }
            else{
                return 0
            }
        }
        else{
            return 0
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let presCell : PrescriptionCollectionViewCell = prescriptionColl_View.dequeueReusableCell(withReuseIdentifier: "PrescriptionCollectionViewCell", for: indexPath) as! PrescriptionCollectionViewCell
        let getDic = loadedData_Dic[indexPath.section] as! [String:AnyObject]
       // let getKeys = Array(getDic.keys)
        //let getData_Dic = getDic["\(getKeys[indexPath.section])"] as! [AnyObject]
        if indexPath.section == 0{
           let getSymData = getDic["symptoms"] as! [AnyObject]
           let  getSymDic = getSymData[indexPath.row] as! [String:AnyObject]
            if Themes.sharedInstance.checkNullvalue(Passed_value: getSymDic["name"]) != ""{
                if getSymData.count-1 == indexPath.row{
                     presCell.title_Lbl.text = "\((Themes.sharedInstance.checkNullvalue(Passed_value: getSymDic["name"])).capitalizeFirst())"
                }
                else{
                       presCell.title_Lbl.text = "\((Themes.sharedInstance.checkNullvalue(Passed_value: getSymDic["name"])).capitalizeFirst()),"
                }
            }
            else{
                 if getSymData.count-1 == indexPath.row{
                    presCell.title_Lbl.text = "\((Themes.sharedInstance.checkNullvalue(Passed_value: getSymDic["duration"])).capitalizeFirst())"
                }
                 else{
                    presCell.title_Lbl.text = "\((Themes.sharedInstance.checkNullvalue(Passed_value: getSymDic["duration"])).capitalizeFirst()),"
                }
                
            }
        }
        else if indexPath.section == 1{
            let getSymData = getDic["examination"] as! [AnyObject]
            let  getSymDic = getSymData[indexPath.row] as! [String:AnyObject]
            if Themes.sharedInstance.checkNullvalue(Passed_value: getSymDic["name"]) != ""{
                 if getSymData.count-1 == indexPath.row{
                      presCell.title_Lbl.text = "\((Themes.sharedInstance.checkNullvalue(Passed_value: getSymDic["name"])).capitalizeFirst())"
                }
                 else{
                      presCell.title_Lbl.text = "\((Themes.sharedInstance.checkNullvalue(Passed_value: getSymDic["name"])).capitalizeFirst()),"
                }
              
            }
            else{
                 if getSymData.count-1 == indexPath.row{
                     presCell.title_Lbl.text = "\((Themes.sharedInstance.checkNullvalue(Passed_value: getSymDic["duration"])).capitalizeFirst())"
                }
                 else{
                     presCell.title_Lbl.text = "\((Themes.sharedInstance.checkNullvalue(Passed_value: getSymDic["duration"])).capitalizeFirst()),"
                }
               
            }
        }
        else if indexPath.section == 2{
            let getDiagnosis_Data = getDic["diagnosis"] as! [AnyObject]
            let  getDiagnosis_Dic = getDiagnosis_Data[indexPath.row] as! [String:AnyObject]
            if Themes.sharedInstance.checkNullvalue(Passed_value: getDiagnosis_Dic["diagnoticname"]) != ""{
                presCell.title_Lbl.text = "\((Themes.sharedInstance.checkNullvalue(Passed_value: getDiagnosis_Dic["diagnoticname"])).capitalizeFirst())"
            }
//            if Themes.sharedInstance.checkNullvalue(Passed_value: getSymDic["name"]) != ""{
//                if getSymData.count-1 == indexPath.row{
//                    presCell.title_Lbl.text = "\((Themes.sharedInstance.checkNullvalue(Passed_value: getSymDic["name"])).capitalizeFirst())"
//                }
//                else{
//                    presCell.title_Lbl.text = "\((Themes.sharedInstance.checkNullvalue(Passed_value: getSymDic["name"])).capitalizeFirst()),"
//                }
//
//            }
//            else{
//                if getSymData.count-1 == indexPath.row{
//                    presCell.title_Lbl.text = "\((Themes.sharedInstance.checkNullvalue(Passed_value: getSymDic["duration"])).capitalizeFirst())"
//                }
//                else{
//                    presCell.title_Lbl.text = "\((Themes.sharedInstance.checkNullvalue(Passed_value: getSymDic["duration"])).capitalizeFirst()),"
//                }
//
//            }
        }
        else if indexPath.section == 3{
            let getSymData = getDic["testscompleted"] as! [AnyObject]
            let  getSymDic = getSymData[indexPath.row] as! [String:AnyObject]
            if Themes.sharedInstance.checkNullvalue(Passed_value: getSymDic["testname"]) != ""{
             
                    presCell.title_Lbl.text = "\((Themes.sharedInstance.checkNullvalue(Passed_value: getSymDic["testname"])).capitalizeFirst())"
            }
            else{
             
            }
        }
        else if indexPath.section == 4{
            let getSymData = getDic["testtobedone"] as! [AnyObject]
            let  getSymDic = getSymData[indexPath.row] as! [String:AnyObject]
            if Themes.sharedInstance.checkNullvalue(Passed_value: getSymDic["testdonename"]) != ""{
                
                presCell.title_Lbl.text = "\((Themes.sharedInstance.checkNullvalue(Passed_value: getSymDic["testdonename"])).capitalizeFirst())"
            }
            else{
                
            }
        }
         else if indexPath.section == 5{
             let medicinesCell : MedicinesCollectionViewCell = prescriptionColl_View.dequeueReusableCell(withReuseIdentifier: "MedicinesCollectionViewCell", for: indexPath) as! MedicinesCollectionViewCell
            let getMedicine_Data = getDic["medicines"] as! [AnyObject]
            let getMedicine_Dic = getMedicine_Data[indexPath.row] as! [String:AnyObject]
             if Themes.sharedInstance.checkNullvalue(Passed_value: getMedicine_Dic["displaybrandname"]) != ""{
               medicinesCell.name_Lbl.text = Themes.sharedInstance.checkNullvalue(Passed_value: getMedicine_Dic["displaybrandname"])
            }
            if Themes.sharedInstance.checkNullvalue(Passed_value: getMedicine_Dic["route"]) != ""{
                 medicinesCell.route_Lbl.text = Themes.sharedInstance.checkNullvalue(Passed_value: getMedicine_Dic["route"])
            }
                if Themes.sharedInstance.checkNullvalue(Passed_value: getMedicine_Dic["frequency"]) != ""{
                    medicinesCell.freq_Lbl.text = Themes.sharedInstance.checkNullvalue(Passed_value: getMedicine_Dic["frequency"])
                }
                if Themes.sharedInstance.checkNullvalue(Passed_value: getMedicine_Dic["noofdays"]) != ""{
                    medicinesCell.days_Lbl.text = Themes.sharedInstance.checkNullvalue(Passed_value: getMedicine_Dic["noofdays"])
                }
//            if indexPath.row == 0{
//                if Themes.sharedInstance.checkNullvalue(Passed_value: getSymDic["brandname"]) != ""{
//                    presCell.title_Lbl.text = Themes.sharedInstance.checkNullvalue(Passed_value: getSymDic["brandname"])
//                }
//            }
           return medicinesCell
            
        }
        else if indexPath.section == 6{
            let getSymData = getDic["notes"] as! [AnyObject]
            let  getSymDic = getSymData[indexPath.row] as! [String:AnyObject]
            if Themes.sharedInstance.checkNullvalue(Passed_value: getSymDic["notesstring"]) != ""{
                
                presCell.title_Lbl.text = "\((Themes.sharedInstance.checkNullvalue(Passed_value: getSymDic["notesstring"])).capitalizeFirst())"
            }
            else{
                
            }
        }
        else if indexPath.section == 7{
            let getSymData = getDic["treatmentplan"] as! [AnyObject]
            let  getSymDic = getSymData[indexPath.row] as! [String:AnyObject]
            if Themes.sharedInstance.checkNullvalue(Passed_value: getSymDic["treatmentstring"]) != ""{
                
                presCell.title_Lbl.text = "\((Themes.sharedInstance.checkNullvalue(Passed_value: getSymDic["treatmentstring"])).capitalizeFirst())"
            }
            else{
                
            }
        }
        else if indexPath.section == 8{
            let  getHistoryData = getDic["history"] as! [AnyObject]
            let  getHistoryDic = getHistoryData[indexPath.row] as! [String:AnyObject]
            if Themes.sharedInstance.checkNullvalue(Passed_value: getHistoryDic["name"]) != ""{
                presCell.title_Lbl.text = "\((Themes.sharedInstance.checkNullvalue(Passed_value: getHistoryDic["name"])).capitalizeFirst())"
            }
            else{
                
            }
        }
        return presCell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let label:UILabel = UILabel(frame: CGRect(x: 0, y: 0, width: CGFloat.greatestFiniteMagnitude, height: 40))
        label.numberOfLines = 0
       // label.textAlignment = .left
        label.lineBreakMode = NSLineBreakMode.byCharWrapping
        label.font = UIFont.systemFont(ofSize: 14.0)
        if indexPath.section == 0{
            let getDic = loadedData_Dic[indexPath.section] as! [String:AnyObject]
            let getData_Dic = getDic["symptoms"] as! [AnyObject]
            let getData =  getData_Dic[indexPath.row] as! [String:AnyObject]
        if  Themes.sharedInstance.checkNullvalue(Passed_value: getData["name"]) != ""{
            label.text =  (Themes.sharedInstance.checkNullvalue(Passed_value: getData["name"])).capitalizeFirst()
        }
        else{
            label.text = Themes.sharedInstance.checkNullvalue(Passed_value: getData["duration"])
            }
        label.sizeToFit()
        print("Label width\(label.frame.width)")
        print("Label value\( Themes.sharedInstance.checkNullvalue(Passed_value: getData["name"]))")
       
        return CGSize(width: label.frame.width+3, height:23)
        }
            
        else if indexPath.section == 1{
            let getDic = loadedData_Dic[indexPath.section] as! [String:AnyObject]
            let getData_Dic = getDic["examination"] as! [AnyObject]
            let getData = getData_Dic[indexPath.row] as! [String:AnyObject]
            if  Themes.sharedInstance.checkNullvalue(Passed_value: getData["name"]) != ""{
                label.text =  (Themes.sharedInstance.checkNullvalue(Passed_value: getData["name"])).capitalizeFirst()
            }
            else{
                label.text = Themes.sharedInstance.checkNullvalue(Passed_value: getData["duration"])
            }
            label.sizeToFit()
            print("Label width\(label.frame.width)")
            print("Label value\( Themes.sharedInstance.checkNullvalue(Passed_value: getData["name"]))")
            
            return CGSize(width: label.frame.width+3, height:23)
        }
        else if indexPath.section == 2{
             return CGSize(width: collectionView.frame.width, height:23)
        }
        else if indexPath.section == 3{
           // let getDic = loadedData_Dic[indexPath.section] as! [String:AnyObject]
           // let getData_Dic = getDic["medicines"] as! [AnyObject]
           // let getData = getData_Dic[indexPath.section] as! [String:AnyObject]
//            if  Themes.sharedInstance.checkNullvalue(Passed_value: getData["name"]) != ""{
//                label.text =  (Themes.sharedInstance.checkNullvalue(Passed_value: getData["name"])).capitalizeFirst()
//            }
//            else{
//                label.text = Themes.sharedInstance.checkNullvalue(Passed_value: getData["duration"])
//            }
//            label.sizeToFit()
//            print("Label width\(label.frame.width)")
//            print("Label value\( Themes.sharedInstance.checkNullvalue(Passed_value: getData["name"]))")
            
            return CGSize(width: collectionView.frame.width, height:23)
        }
        else if indexPath.section == 4{
             return CGSize(width: collectionView.frame.width, height:23)
        }
        else if indexPath.section == 5{
             return CGSize(width: collectionView.frame.width, height:23)
        }
        else if indexPath.section == 6{
            return CGSize(width: collectionView.frame.width, height:23)
        }
        else if indexPath.section == 7{
            return CGSize(width: collectionView.frame.width, height:23)
        }
        else if indexPath.section == 8{
            return CGSize(width: collectionView.frame.width, height:23)
        }
        return CGSize(width: 0, height: 0)
    }
    
    //MARK:-UITEXTFIELD DELEGATE
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        var newString = (textField.text! as NSString).replacingCharacters(in: range, with: string)
        newString = newString.trimmingCharacters(in: NSCharacterSet.whitespacesAndNewlines)
        let newLength = textField.text!.characters.count + string.characters.count - range.length
        
        return true
    }
    
    //MARK:- API CALL
    
    func getAllAutoFill(searchTag: String,tokenView:String,type:String) {
        // MBProgressHUD.showAdded(to: self.view, animated: true);
        var typeToConfirm  = String()
        if  tokenView == "FamilyHistory"{
            typeToConfirm = "history"
        }
        else if tokenView == "RiskAllergy" || tokenView == "AllergyRisk"{
            typeToConfirm = "risk"
        }
        else if tokenView == "Examination"{
            typeToConfirm = "Examination"
        }
        else{
            typeToConfirm = type
        }
        
        var getSymtoms_Arr = formStringTokens(tokens: arrDataView4PreSym)
        var getExamination_Arr = formStringTokens(tokens: arrDataView4PreExa)
        var formSymExa_Str = String()
        if getSymtoms_Arr != "" && getExamination_Arr != ""{
            formSymExa_Str = getSymtoms_Arr+",\(getExamination_Arr)"
        }
        else if getSymtoms_Arr != ""{
            formSymExa_Str = getSymtoms_Arr
        }
        else if getExamination_Arr != ""{
            formSymExa_Str = getExamination_Arr
        }
        
        print(Utils.convertDictionaryToJson(dictionary: ["platform":"\(UserInstance.userInstace.platform)","doctorid":"\(UserInstance.userInstace.doctorId!)","userid":"\(UserInstance.userInstace.userID!)","roleid":"\(UserInstance.userInstace.roleid!)","searchtag":"\(searchTag)","suggestions":"\(formSymExa_Str)","type":typeToConfirm]))
        PrescriptionLayer.getSymtoms(parameters: ["platform":"\(UserInstance.userInstace.platform)","doctorid":"\(UserInstance.userInstace.doctorId!)","userid":"\(UserInstance.userInstace.userID!)","roleid":"\(UserInstance.userInstace.roleid!)","searchtag":"\(searchTag)","suggestions":formSymExa_Str,"type":typeToConfirm], headerParameters: ["Microtime":"\(String(Int(NSDate().timeIntervalSince1970)))","Accesstoken":"\(UserInstance.userInstace.accessToken!)"],completionHandler: { (response, error) in
            MBProgressHUD.hide(for: self.view, animated: true)
            
            if response.count > 0 {
                let dict:[String:AnyObject] = (response as? [String:AnyObject])!
                if dict["IsSuccess"]! as! Bool == true{
                    self.arrAutoFill.removeAll()
                    let getSymtoms = dict["ResponseObject"] as! [String:AnyObject]
                    
                    self.suggestions_Fill = getSymtoms["suggestions"] as! [AnyObject]
                    self.arrAuto_Fill = getSymtoms["autofill"] as! [AnyObject]
                    
                    if self.symptomsTitle_Btn.backgroundColor == Themes.sharedInstance.customColor() || self.examinationTitle_Btn.backgroundColor == Themes.sharedInstance.customColor(){
                        if searchTag != ""{
                           let getAutoFill =  getSymtoms["autofill"] as! [AnyObject]
                            self.arrAuto_Fill.removeAll()
                            for i in 0..<getAutoFill.count{
                                if i<4{
                                    self.arrAuto_Fill.append(getAutoFill[i])
                                }
                            }
                           self.setTagViews(autofill: self.arrAuto_Fill, suggestions: self.suggestions_Fill, searchTag: searchTag)
                        }
                        else{
                            if self.symptomsTitle_Btn.backgroundColor == Themes.sharedInstance.customColor(){
                                if  self.arrDataView4PreSym.count>0{
                                    let getSuggtn = getSymtoms["suggestions"] as! [AnyObject]
                                    self.suggestions_Fill.removeAll()
                                    for i in 0..<getSuggtn.count{
                                        if i<5{
                                            self.suggestions_Fill.append(getSuggtn[i])
                                        }
                                    }
                                    self.setTagViews(autofill:  self.suggestions_Fill, suggestions:  self.suggestions_Fill, searchTag: searchTag)
                                }
                                
                                else{
                                    self.setTagViews(autofill: self.symtompsDefault_Data, suggestions: self.symtompsDefault_Data, searchTag: searchTag)
                                }
                            }
                            if self.examinationTitle_Btn.backgroundColor == Themes.sharedInstance.customColor(){
                                if  self.arrDataView4PreExa.count>0{
                                    let getSuggtn = getSymtoms["suggestions"] as! [AnyObject]
                                    self.suggestions_Fill.removeAll()
                                    for i in 0..<getSuggtn.count{
                                        if i<5{
                                            self.suggestions_Fill.append(getSuggtn[i])
                                        }
                                    }
                                    self.setTagViews(autofill:  self.suggestions_Fill, suggestions:  self.suggestions_Fill, searchTag: searchTag)
                                }
                                    
                                else{
                                    self.setTagViews(autofill: self.symtompsDefault_Data, suggestions: self.symtompsDefault_Data, searchTag: searchTag)
                                }
                            }
                            else{
                                  self.setTagViews(autofill: self.symtompsDefault_Data, suggestions: self.symtompsDefault_Data, searchTag: searchTag)
                            }
                          
                        }
                    }
                    else{
                        
                    }
                  
//                    if type == "history"{
//                      //  self.historyAutoFill_Arr = arrAuto_Fill
//                    }
//                    else if type == "risk"{
//                        //self.riskAutoFill_Arr = arrAuto_Fill
//                    }
//                    else if typeToConfirm == "Examination"{
////                        if searchTag != ""{
////                            self.arrAutoFill = arrAuto_Fill  as [AnyObject]
////                            self.examinationDefaultAutoFill_HgtContrnt.constant = 0
////                            self.examinationDefault_AutoFillView.removeAllTags()
////                            self.examinationDefaultAutoFill_BottomView.isHidden = true
////                        }
////                        else{
////                            self.setExaminationDefaultAutoFillView()
////                        }
////                        self.arrDropDown = arrSuggtn_Fill as! [String]
//                    }
//                    else{
//                        if searchTag != ""{
//                            self.arrAutoFill = arrAuto_Fill  as [AnyObject]
////                            self.defaultAutoFillHgt_Contraint.constant = 0
////                            self.symptomsDefaultAutoFill_TagView.removeAllTags()
////                            self.symptomsDefaultAuto_BottomView.isHidden = true
//                        }
//                        else{
//                            //self.setSymptomsDefaultAutoFillView()
//                        }
//                        if arrSuggtn_Fill != nil{
//                            self.arrDropDown = arrSuggtn_Fill as! [String]
//                        }
//
//                    }
                    
                    MBProgressHUD.hide(for: self.view, animated: true)
                   // self.setHistoryRiskAllergySuggstnsView(fromSearch: tokenView)
                }
                else{
                    MBProgressHUD.hide(for: self.view, animated: true)
                }
            }
            else{
                MBProgressHUD.hide(for: self.view, animated: true)
                if error == UserInstance.userInstace.noNetworkConnectionMesg{
                    self.present(UserInstance.showNetworkAlert(), animated: true, completion: nil)
                }
            }
        })
    }
    
    func getSympAllDefaultAutoFill(searchTag: String) {
        //        MBProgressHUD.showAdded(to: self.view, animated: true);
        
        PrescriptionLayer.getSymtomsDefault(parameters: ["platform":"\(UserInstance.userInstace.platform)","doctorid":"\(UserInstance.userInstace.doctorId!)","userid":"\(UserInstance.userInstace.userID!)","roleid":"\(UserInstance.userInstace.roleid!)","searchtag":"\(searchTag)","suggestions":""], headerParameters: ["Microtime":"\(String(Int(NSDate().timeIntervalSince1970)))","Accesstoken":"\(UserInstance.userInstace.accessToken!)"],completionHandler: { (response, error) in
            MBProgressHUD.hide(for: self.view, animated: true)
//            self.previewBtn.isUserInteractionEnabled = true
            if response.count > 0 {
                let dict:[String:AnyObject] = (response as? [String:AnyObject])!
                if dict["IsSuccess"]! as! Bool == true{
                    self.symtompsDefault_Data.removeAll()
                    let getSymtoms = dict["ResponseObject"] as! [String:AnyObject]
                    let arrAuto_Fill = getSymtoms["autofill"] as! [AnyObject]
                    
                    MBProgressHUD.hide(for: self.view, animated: true)
                  //  if searchTag != ""{
                        //self.symtompsDefault_Data = arrAuto_Fill as! [AnyObject]
//                        self.symtompsDefault_Data = arrAuto_Fill as! [AnyObject]
                    let getData = arrAuto_Fill as! [AnyObject]
                    for i in 0..<getData.count{
                        if i<=5{
                            self.symtompsDefault_Data.append(getData[i] as AnyObject)
                        }
                    }
                     if self.symptomsTitle_Btn.backgroundColor == Themes.sharedInstance.customColor(){
                        self.setTagViews(autofill: self.symtompsDefault_Data, suggestions: self.symtompsDefault_Data, searchTag: searchTag)
                    }
                     else{
                        
                    }
                     // }
                    //else{
                         //self.symtompsDefault_Data = arrAuto_Fill as! [AnyObject]
                         //self.setTagViews(autofill: self.symtompsDefault_Data, suggestions: self.days_Fill)
                         // self.symptomsDefaultAutoFill_Arr = arrAuto_Fill
                        // self.setSymptomsDefaultAutoFillView()
                   // }
                }
                else{
                    MBProgressHUD.hide(for: self.view, animated: true)
                }
            }
            else{
                MBProgressHUD.hide(for: self.view, animated: true)
                if error == UserInstance.userInstace.noNetworkConnectionMesg{
                    self.present(UserInstance.showNetworkAlert(), animated: true, completion: nil)
                }
            }
        })
    }
    
    func getDrugList(searchTag: String) {
        
        //        MBProgressHUD.showAdded(to: self.view, animated: true);
        PrescriptionLayer.getDrugList(parameters: ["platform":"\(UserInstance.userInstace.platform)","userid":"\(UserInstance.userInstace.userID!)","doctorid":"\(UserInstance.userInstace.doctorId!)","roleid":"\(UserInstance.userInstace.roleid!)","searchtag":"\(searchTag)","patientid":"59","prescriptionid":"22781"], headerParameters: ["Microtime":"\(String(Int(NSDate().timeIntervalSince1970)))","Accesstoken":"\(UserInstance.userInstace.accessToken!)"],completionHandler: { (response, error) in
            
            if response.count > 0 {
                let dict:[String:AnyObject] = (response as? [String:AnyObject])!
                if dict["IsSuccess"]! as! Bool == true{
//                    self.arrDataView5Drop.removeAll()
//                    self.arrDataView5Drop = dict["ResponseObject"] as! [AnyObject]
//                    self.searchDrug = searchTag
//                    MBProgressHUD.hide(for: self.view, animated: true)
//                    var formDrug_Arr = [AnyObject]()
//                    for i in 0..<self.arrDataView5Drop.count{
//                        if i<=5{
//
//                            formDrug_Arr.append(self.arrDataView5Drop[i])
//                        }
//                        else{
//                            break
//                        }
//                    }
//                    self.arrAutoFill = formDrug_Arr
//                    self.setTagViews(autofill:  self.arrAutoFill , suggestions: [], searchTag: "")
//                    self.showDropDown(sender: self.textDrop)
                }
                else{
                    MBProgressHUD.hide(for: self.view, animated: true)
                }
            }
            else{
                MBProgressHUD.hide(for: self.view, animated: true)
                if error == UserInstance.userInstace.noNetworkConnectionMesg{
                    self.present(UserInstance.showNetworkAlert(), animated: true, completion: nil)
                }
            }
        })
    }
    
    func getDuration() {
        
        PrescriptionLayer.getDuration(parameters: ["platform":"\(UserInstance.userInstace.platform)","userid":"\(UserInstance.userInstace.userID!)","doctorid":"\(UserInstance.userInstace.doctorId!)","roleid":"\(UserInstance.userInstace.roleid!)" ,"searchtag":""], headerParameters: ["Microtime":"\(String(Int(NSDate().timeIntervalSince1970)))","Accesstoken":"\(UserInstance.userInstace.accessToken!)"],completionHandler: { (response, error) in
            
            if response.count > 0 {
                let dict:[String:AnyObject] = (response as? [String:AnyObject])!
                if dict["IsSuccess"]! as! Bool == true{
                    
                    self.days_Fill.removeAll()
                    let getResponse = dict["ResponseObject"] as! [String:AnyObject]
                    self.days_Fill = getResponse["duration"] as! [AnyObject]
                      if self.symptomsTitle_Btn.backgroundColor == Themes.sharedInstance.customColor(){
                      self.setDaysView()
                    }
                      else{
                        
                    }
                }
                else{
                }
            }
            else{
            }
        })
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
