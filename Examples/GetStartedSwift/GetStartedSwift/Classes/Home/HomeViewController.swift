// Copyright MyScript. All right reserved.

import UIKit

//class HomeViewController: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource,UITextFieldDelegate,UICollectionViewDelegateFlowLayout,DropViewDelegate,SmartGuideViewControllerDelegate,IINKEditorDelegate{
//    func partChanged(_ editor: IINKEditor) {
//        print("Clicke")
//    }
//    
//    func contentChanged(_ editor: IINKEditor, blockIds: [String]) {
//         print("Clicke")
//    }
//    
//    func onError(_ editor: IINKEditor, blockId: String, message: String) {
//         print("Clicke")
//    }
//    
//    
//    func smartGuideViewController(_ smartGuideViewController: SmartGuideViewController!, didTapOnMoreButton moreButton: UIButton!, for block: IINKContentBlock!) {
//        print("Clicked")
//    }
//    
//
//    
//    
//@IBOutlet weak var inputTypeSegmentedControl: UISegmentedControl!
//@IBOutlet weak var disease_CollectionView: UICollectionView!
//@IBOutlet weak var diseaseCollecView_HgtContrnt: NSLayoutConstraint!
//weak var editorViewController: EditorViewController!
//var arrDataDisease:[AnyObject] = []
//var arrDropDown:[String] = []
//var dropView:dropdown!
//    var textDrop:MKTextField!
//      var arrDataDiseaseDrop:[AnyObject] = []
//    // MARK: - Life cycle
//    
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        var dictSample:[String: AnyObject] = [:]
//        dictSample.updateValue("" as AnyObject, forKey: "deseasetid")
//        dictSample.updateValue("" as AnyObject, forKey: "diseasename")
//        dictSample.updateValue("" as AnyObject, forKey: "deseasestatus")
//        dictSample.updateValue("0" as AnyObject, forKey: "checked")
//        self.arrDataDisease.append(dictSample as AnyObject)
//        disease_CollectionView.reloadData()
//        getDiseaseList(searchTag: "")
//       disease_CollectionView.register(UINib(nibName: "DiseasesCollectionViewCell", bundle: nil) , forCellWithReuseIdentifier: "DiseasesCollectionViewCell")
//        editorViewController = (childViewControllers.first as! EditorViewController)
//        if let appDelegate = UIApplication.shared.delegate as? AppDelegate {
//            if (appDelegate.engine == nil)
//            {
//                let alert = UIAlertController(title: "Certificate error",
//                                              message: appDelegate.engineErrorMessage,
//                                              preferredStyle: UIAlertController.Style.alert)
//                alert.addAction(UIAlertAction(title: "OK",
//                                              style: UIAlertAction.Style.default,
//                                              handler: {(action: UIAlertAction) -> Void in
//                                                  exit(1)
//                                              }))
//                self.present(alert, animated: true, completion: nil)
//                return
//            }
//            editorViewController.engine = appDelegate.engine
//        }
//        
//        editorViewController.inputMode = .forcePen  // We want the Pen mode for this GetStarted sample code. It lets the user use either its mouse or fingers to draw.
//        // If you have got an iPad Pro with an Apple Pencil, please set this value to InputModeAuto for a better experience.
//        
//        inputTypeSegmentedControl.selectedSegmentIndex = Int(editorViewController.inputMode.rawValue)
//
//        do {
//            if let package = try createPackage(packageName: "New") {
//                try editorViewController.editor.part = package.getPartAt(0)
//            }
//        } catch {
//            print("Error while creating package : " + error.localizedDescription)
//        }
//    }
//    
//    func setView3Disease(textField:MKTextField){
//        let indexPath = IndexPath(item: arrDataDisease.count-1, section: 0)
//        disease_CollectionView.insertItems(at: [indexPath])
//        
//        
//        diseaseCollecView_HgtContrnt.constant = disease_CollectionView.collectionViewLayout.collectionViewContentSize.height
//        
//    }
//    
//    // MARK: - Create package
//
//    func createPackage(packageName: String) throws -> IINKContentPackage? {
//        // Create a new content package with name
//        var resultPackage: IINKContentPackage?
//        let fullPath = FileManager.default.pathForFile(inDocumentDirectory: packageName) + ".iink"
//        if let engine = (UIApplication.shared.delegate as? AppDelegate)?.engine {
//            resultPackage = try engine.createPackage(fullPath.decomposedStringWithCanonicalMapping)
//            
//            // Add a blank page type Text Document
//            if let part = try resultPackage?.createPart("Text Document") /* Options are : "Diagram", "Drawing", "Math", "Text Document", "Text" */ {
//                self.title = "Type: " + part.type
//            }
//        }
//        return resultPackage
//    }
//    
//    // MARK: - Buttons actions
//
//    @IBAction func clearButtonWasTouchedUpInside(_ sender: Any) {
//        editorViewController.editor.clear()
//    }
//    
//    @IBAction func undoButtonWasTouchedUpInside(_ sender: Any) {
//        editorViewController.editor.undo()
//    }
//    
//    @IBAction func redoButtonWasTouchedUpInside(_ sender: Any) {
//        editorViewController.editor.redo()
//    }
//    
//    @IBAction func convertButtonWasTouchedUpInside(_ sender: Any) {
//        print("Called")
//        do {
//            let supportedTargetStates = editorViewController.editor.getSupportedTargetConversionState(nil)
//            try editorViewController.editor.convert(nil, targetState: supportedTargetStates[0].value)
//        
//        } catch {
//            print("Error while converting : " + error.localizedDescription)
//        }
//    }
//    func setTextField(textField: MKTextField){
//        
//        textField.textColor = UIColor.darkGray
//        textField.autocapitalizationType = UITextAutocapitalizationType.words
//        textField.font = UIFont.init(name: "Roboto-Regular", size: 14.0)
//        textField.layer.borderColor = UIColor.clear.cgColor
//        if textField.accessibilityHint == "vitalname" || textField.accessibilityHint == "vitalvalue" ||  textField.accessibilityHint == "Diseases" || textField.accessibilityHint == "SpecialityAuto" ||  textField.accessibilityHint == "Lab" ||  textField.accessibilityHint == "Diagnostics" || textField.accessibilityHint == "STR" || textField.accessibilityHint == "popup"{
//            textField.floatingPlaceholderEnabled = false
//            textField.textAlignment = .left
//        }
//            
//        else{
//            textField.floatingPlaceholderEnabled = true
//            textField.textAlignment = .center
//        }
//        textField.bottomBorderEnabled = true
//        
//        
//        textField.delegate = self
//    }
//    func collectionView(_ collectionView: UICollectionView, didEndDisplaying cell: UICollectionViewCell, forItemAt indexPath: IndexPath) {
//        if collectionView == disease_CollectionView{
//            
//            diseaseCollecView_HgtContrnt.constant = collectionView.collectionViewLayout.collectionViewContentSize.height
//        }
//    }
//    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
//         return arrDataDisease.count
//        
//    }
//    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
//        
//            let cell : DiseasesCollectionViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: "DiseasesCollectionViewCell", for: indexPath) as! DiseasesCollectionViewCell
//            cell.diseasesName_Txt.placeholder = "Enter Disease"
//            cell.diseasesName_Txt.text = (arrDataDisease[indexPath.row]["diseasename"] as? String)?.uppercased()
//            cell.diseasesName_Txt.accessibilityHint = "Diseases"
//            cell.diseasesName_Txt.tag = indexPath.row
//            setTextField(textField: (cell.diseasesName_Txt)!)
//            
//            cell.diseasesName_Txt.bottomBorderColor = UIColor.darkGray
//            let boldFont = UIFont.boldSystemFont(ofSize: 14)
//            let italicFont = UIFont.italicSystemFont(ofSize: 14)
//            if arrDataDisease[indexPath.row]["checked"] as? String == "0"{
//                cell.checkBox_Btn.setImage(#imageLiteral(resourceName: "s"), for: .normal)
//                cell.diseasesName_Txt.font = italicFont
//            }
//            else if arrDataDisease[indexPath.row]["checked"] as? String == "1"{
//                cell.checkBox_Btn.setImage(UIImage(named: "tickBorder"), for: .normal)
//                cell.diseasesName_Txt.font = boldFont
//            }
//            else{
//                cell.checkBox_Btn.setImage(#imageLiteral(resourceName: "questionmark"), for: .normal)
//                cell.diseasesName_Txt.font = boldFont
//            }
//            if arrDataDisease[indexPath.row]["diseaseid"] as? String == ""{
//                cell.diseasesName_Txt.isUserInteractionEnabled = true
//            }
//            else{
//                cell.diseasesName_Txt.isUserInteractionEnabled = true
//            }
//            cell.checkBox_Btn.tag = indexPath.row
//            cell.diseasesName_Txt.addTarget(self, action: #selector(self.showDropDown(sender:)), for: UIControlEvents.editingDidBegin)
//            cell.diseasesName_Txt.addTarget(self, action: #selector(self.searchPredicate(sender:)), for: UIControlEvents.editingChanged)
//            cell.diseasesName_Txt.addTarget(self, action: #selector(self.valueselectedChanged(sender:)), for: UIControlEvents.editingChanged)
//            cell.checkBox_Btn.addTarget(self, action: #selector(self.checkBtn_Action(_:)), for: .touchUpInside)
//            diseaseCollecView_HgtContrnt.constant = collectionView.collectionViewLayout.collectionViewContentSize.height
//            return cell
//        
//    }
//
//    
//    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
//        //        if collectionView == bookAppointment_View.slotCollection_View{
//        //            let padding: CGFloat =  0
//        //            let collectionViewSize = collectionView.frame.size.width - padding
//        //
//        //            return CGSize(width: collectionViewSize/6, height: 50)
//        //        }
//        //        else if collectionView ==  weekDayView.weekDay_CollectionView{
//        //            let padding: CGFloat =  0
//        //            let collectionViewSize = collectionView.frame.size.width - padding
//        //            return CGSize(width: collectionViewSize/1, height: 50)
//        //        }
//            let label:UILabel = UILabel(frame: CGRect(x: 0, y: 0, width: CGFloat.greatestFiniteMagnitude, height: CGFloat.greatestFiniteMagnitude))
//            label.numberOfLines = 0
//            label.lineBreakMode = NSLineBreakMode.byCharWrapping
//            label.font = UIFont.init(name: "Roboto-Regular", size: 14.0)
//            if  (arrDataDisease[indexPath.row]["diseasename"] as? String) != "" &&   (arrDataDisease[indexPath.row]["diseasename"] as? String)  != nil{
//                label.text =  (arrDataDisease[indexPath.row]["diseasename"] as? String)?.uppercased() as! String
//            }
//            else{
//                label.text =  ""
//            }
//            label.sizeToFit()
//            if label.frame.width>(collectionView.frame.width/2)-100{
//                let padding: CGFloat =  50
//                let collectionViewSize = collectionView.frame.size.width - padding
//                if checkDiseaseNameLength(indexPath: indexPath).0 && checkDiseaseNameLength(indexPath: indexPath).1{
//                    return CGSize(width: collectionViewSize/1, height: 40)
//                }
//                else{
//                    return CGSize(width: collectionViewSize/1, height: 40)
//                }
//            }
//            else{
//                let padding: CGFloat =  50
//                let collectionViewSize = collectionView.frame.size.width - padding
//                
//                if checkDiseaseNameLength(indexPath: indexPath).0 && checkDiseaseNameLength(indexPath: indexPath).1{
//                    return CGSize(width: collectionViewSize/1, height: 40)
//                }
//                else{
//                    return CGSize(width: collectionViewSize/2, height: 40)
//                }
//                
//            }
//            
//    }
//    
//    func checkDiseaseNameLength(indexPath:IndexPath)->(Bool,Bool){
//        
//        var prevCheck = false
//        var forwardCheck = false
//        let label:UILabel = UILabel(frame: CGRect(x: 0, y: 0, width: CGFloat.greatestFiniteMagnitude, height: CGFloat.greatestFiniteMagnitude))
//        label.numberOfLines = 0
//        label.lineBreakMode = NSLineBreakMode.byCharWrapping
//        label.font = UIFont.init(name: "Roboto-Regular", size: 14.0)
//        
//        if indexPath.row != 0{
//            if let getDic = arrDataDisease[indexPath.row-1] as? [String:AnyObject]{
//                if  (arrDataDisease[indexPath.row-1]["diseasename"] as? String) != "" && (arrDataDisease[indexPath.row-1]["diseasename"] as? String) != nil{
//                    label.text = (arrDataDisease[indexPath.row-1]["diseasename"] as? String)?.uppercased() as! String
//                    label.sizeToFit()
//                    if label.frame.width>(disease_CollectionView.frame.width/2)-100{
//                        prevCheck = true
//                    }
//                }
//            }
//        }
//        else{
//            
//        }
//        if arrDataDisease.count > indexPath.row+1{
//            if let getDic = arrDataDisease[indexPath.row+1] as? [String:AnyObject]{
//                if (arrDataDisease[indexPath.row+1]["diseasename"] as? String)  != nil && (arrDataDisease[indexPath.row+1]["diseasename"] as? String)  != ""{
//                    label.text = (arrDataDisease[indexPath.row+1]["diseasename"] as? String)?.uppercased() as! String
//                    label.sizeToFit()
//                    if label.frame.width>(disease_CollectionView.frame.width/2)-100{
//                        forwardCheck = true
//                    }
//                }
//            }
//            else{
//                label.text =  ""
//            }
//        }
//        return (prevCheck,forwardCheck)
//    }
//    
//    @IBAction func checkBtn_Action(_ sender: UIButton) {
//        var dictCheck = arrDataDisease[sender.tag] as! [String: AnyObject]
//        if  dictCheck["diseasename"] as? String != ""{
//            if dictCheck["checked"] as! String == "1" {
//                dictCheck.updateValue("2" as AnyObject, forKey: "checked")
//                arrDataDisease[sender.tag] = dictCheck as AnyObject
//            }
//            else if dictCheck["checked"] as! String == "2" {
//                dictCheck.updateValue("0" as AnyObject, forKey: "checked")
//                arrDataDisease[sender.tag] = dictCheck as AnyObject
//                //getPreDataBasedDisease()
//            }
//            else {
//                dictCheck.updateValue("1" as AnyObject, forKey: "checked")
//                arrDataDisease[sender.tag] = dictCheck as AnyObject
//                //getPreDataBasedDisease()
//            }
//        }
//        else{
//            self.view.makeToast("Please enter disease", duration: 3.0, position: .center)
//        }
//        setDiseasesView()
//        //hideAllSuggtnViews()
//    }
//    func setDiseasesView(){
//        
//        disease_CollectionView.delegate = self
//        disease_CollectionView.dataSource = self
//        disease_CollectionView.reloadData()
//    }
//    
//    // MARK: - SHOWDROPDOWN DELEGATES
//    
//    func selectedValueFromTableIndex(dropDown: dropdown, value: AnyObject, indexpath index: NSIndexPath) {
//        
//         if self.textDrop.accessibilityHint == "Diseases"{
//            textDrop.text = textDrop.text?.uppercased()
//            var dictCheck = arrDataDisease[textDrop.tag] as! [String: AnyObject]
//            dictCheck.updateValue((value as? String)?.capitalized as AnyObject, forKey: "diseasename")
//            dictCheck.updateValue((value as? String)?.capitalized as AnyObject, forKey: "diseasestatus")
//            dictCheck.updateValue("1" as AnyObject, forKey: "checked")
//            arrDataDisease[textDrop.tag] = dictCheck as AnyObject
//            disease_CollectionView.reloadData()
//           // getPreDataBasedDisease()
//        }
//        if self.dropView != nil {
//            self.dropView.removeFromSuperview()
//            self.dropView = nil
//        }
//        textDrop.resignFirstResponder()
//    }
//    func showDropDown(sender: MKTextField) {
//        self.arrDropDown.removeAll()
//        if sender.accessibilityHint == "strength"{
//            if textDrop.accessibilityHint == "strength"{
//                textDrop = sender
//                textDrop.accessibilityHint = "strength"
//            }
//            else{
//                textDrop = sender
//            }
//        }
//        else{
//            textDrop = sender
//        }
//        var position:CGPoint!
//        position = sender.convert(CGPoint(x: 0, y: 0), to: self.view)
//        let textDropDown = MKTextField()
//        textDropDown.frame = sender.frame
//        textDropDown.tag = sender.tag
//        textDropDown.frame.origin.x = position.x
//        textDropDown.frame.origin.y = position.y
//        if textDrop.accessibilityHint == "Risk" || textDrop.accessibilityHint == "Allergies" || textDrop.accessibilityHint == "PresentingSymptoms" || textDrop.accessibilityHint == "ClinicalExamination" || textDrop.accessibilityHint == "nature"  {
//           // self.arrDropDown = arrAutoFill as! [String]
//            
//        }
//    
//        else if self.textDrop.accessibilityHint == "Diseases" {
//            for i in 0 ..< self.arrDataDiseaseDrop.count {
//                self.arrDropDown.append(self.arrDataDiseaseDrop[i]["name"] as! String)
//            }
//            
//        }
//            //P2 Show Drop Down
//       
//    }
//    
//    
//    func showDropdownData(sender: AnyObject, array: [AnyObject]){
//        
//        if self.dropView != nil
//        {
//            self.dropView.removeFromSuperview()
//            self.dropView = nil
//        }
//        if  sender.accessibilityHint == "ReferalDoctor"{
//            self.dropView = dropdown(view: sender, items: array as [AnyObject], target : self,heightOfDropView: CGFloat(2*45),directionNew: directionDropView.UP)
//        }
//            
//        else{
//            
//            if array.count > 3 {
//                self.dropView = dropdown(view: sender, items: array as [AnyObject], target : self,heightOfDropView: CGFloat(4*45),directionNew: directionDropView.UP)
//            }
//            else {
//                self.dropView = dropdown(view: sender, items: array as [AnyObject], target : self,heightOfDropView: CGFloat((array.count)*45),directionNew: directionDropView.UP)
//            }
//        }
//        
//        self.dropView.tag = sender.tag
//        if sender.accessibilityHint == "AppointmentClinic"{
//            // bookAppointment_View.addSubview(self.dropView)
//        }
//        else if sender.accessibilityHint == "Generic"{
//            // genericPopup_View.addSubview(self.dropView)
//        }
//        else{
//            self.view.addSubview(self.dropView)
//        }
//        
//    }
//    
//    func valueselectedChanged(sender: AnyObject) {
//        textDrop = sender as! MKTextField
//    
//            
//         if textDrop.accessibilityHint == "Diseases" {
//            if textDrop.text != "" {
//                textDrop.text = textDrop.text?.uppercased()
//                var dictCheck = arrDataDisease[textDrop.tag] as! [String: AnyObject]
//                dictCheck.updateValue(textDrop.text! as AnyObject, forKey: "diseasename")
//                dictCheck.updateValue(textDrop.text! as AnyObject, forKey: "diseasestatus")
//                dictCheck.updateValue("0" as AnyObject, forKey: "checked")
//                
//                if dictCheck["checked"] as! String == "1" {
//                    dictCheck.updateValue("1" as AnyObject, forKey: "checked")
//                }
//                arrDataDisease[textDrop.tag] = dictCheck as AnyObject
//                let indexPath = IndexPath(item: textDrop.tag, section: 0)
//                let cell = self.disease_CollectionView?.cellForItem(at: indexPath) as! DiseasesCollectionViewCell
//                cell.checkBox_Btn.setImage(#imageLiteral(resourceName: "s"), for: .normal)
//                
//                if textDrop.tag == arrDataDisease.count-1 {
//                    dictCheck.updateValue("" as AnyObject, forKey: "diseaseid")
//                    dictCheck.updateValue("" as AnyObject, forKey: "diseasename")
//                    dictCheck.updateValue("" as AnyObject, forKey: "diseasesstatus")
//                    dictCheck.updateValue("0" as AnyObject, forKey: "checked")
//                    arrDataDisease.append(dictCheck as AnyObject)
//                    setView3Disease(textField: textDrop)
//                }
//                
//            }
//            
//            if arrDataDisease.count != textDrop.tag && textDrop.text == "" {
//                arrDataDisease.remove(at: textDrop.tag)
//                setDiseasesView()
//            }
//        }
//            
//      
//    }
//    
//    func searchPredicate(sender: UITextField) {
//        var arraySearchedResults:[String] = []
//        
//
//        
//        if textDrop.accessibilityHint == "STR" {
//            if (sender.text?.characters.count)! < 3 {
//                arraySearchedResults.removeAll()
//            }
//            else {
//                let predicate = NSPredicate(format: "SELF contains[c] %@", sender.text!)
//                arraySearchedResults = (arrDropDown as NSArray).filtered(using: predicate) as! [String]
//                
//            }
//        }
//        else {
//            let predicate = NSPredicate(format: "SELF beginswith[c] %@", sender.text!)
//            arraySearchedResults = (arrDropDown as NSArray).filtered(using: predicate) as! [String]
//            
//        }
//        
//        if textDrop.accessibilityHint == "FRQ" {
//            let searchString = sender.text
//            let predicate = NSPredicate(format: "SELF contains[c] %@", searchString!)             //"title CONTAINS[cd] %@"
//           // arraySearchedResults = (self.arrDataView5Frequency as NSArray).filtered(using: predicate) as! [String]
//        }
//     
//        if arraySearchedResults.count == 0 {
//            
//            if self.dropView != nil {
//                self.dropView.removeFromSuperview()
//                self.dropView = nil
//            }
//            return
//        }
//        if self.dropView != nil {
//            if sender.text!.characters.count == 0 {
//                self.dropView.array = arrDropDown as [AnyObject]
//            }
//            else{
//                self.dropView.array = arraySearchedResults as [AnyObject]
//            }
//            
//            
//            if self.dropView.array.count > 3 {
//                self.dropView.viewTable.frame.size.height = 45*4
//            }
//            else {
//                self.dropView.viewTable.frame.size.height = CGFloat((self.dropView.array.count)*45)
//            }
//            
//            self.dropView.viewTable.reloadData()
//        }
//        else{
//            let position = sender.convert(CGPoint(x: 0, y: 0), to: self.view)
//            let textDropDown = MKTextField()
//            textDropDown.frame = sender.frame
//            textDropDown.tag = sender.tag
//            textDropDown.frame.origin.x = position.x
//            textDropDown.frame.origin.y = position.y
//            if textDrop.accessibilityHint == "Diseases" {
//                
//                if !Themes.sharedInstance.checkIpad(){
//                    if position.x<250{
//                        textDropDown.frame = CGRect(x: textDropDown.frame.minX, y: textDropDown.frame.minY, width: textDropDown.frame.width+150, height: textDropDown.frame.height)
//                    }
//                    else{
//                        textDropDown.frame = CGRect(x: textDropDown.frame.minX-150, y: textDropDown.frame.minY, width: textDropDown.frame.width+150, height: textDropDown.frame.height)
//                    }
//                }
//                else{
//                    textDropDown.frame = CGRect(x: textDropDown.frame.minX, y: textDropDown.frame.minY, width: textDropDown.frame.width+150, height: textDropDown.frame.height)
//                }
//            }
//            
//            if sender.text!.characters.count == 0 {
//                self.showDropdownData(sender: textDropDown, array: arrDropDown as [AnyObject])
//            }
//            else {
//                self.showDropdownData(sender: textDropDown, array: arraySearchedResults as [AnyObject])
//            }
//        }
//    }
//    // MARK: - Segmented control actions
//    
//    @IBAction func inputTypeSegmentedControlValueChanged(_ sender: UISegmentedControl) {
//        guard let inputMode = InputMode(rawValue: UInt(sender.selectedSegmentIndex)) else {
//            return
//        }
//        editorViewController.inputMode = inputMode
//    }
//    
//    func getDiseaseList(searchTag: String) {
//        
//        PrescriptionLayer.getDiseasesList(parameters: ["platform":"\(UserInstance.userInstace.platform)","doctorid":"\(UserInstance.userInstace.doctorId!)","userid":"\(UserInstance.userInstace.userID!)","roleid":"\(UserInstance.userInstace.roleid!)","searchtag":"\(searchTag)"], headerParameters: ["Microtime":"\(String(Int(NSDate().timeIntervalSince1970)))","Accesstoken":"\(UserInstance.userInstace.accessToken!)"],completionHandler: { (response, error) in
//            
//            if response.count > 0 {
//                let dict:[String:AnyObject] = (response as? [String:AnyObject])!
//                if dict["IsSuccess"]! as! Bool == true{
//                    
//                    self.arrDataDiseaseDrop.removeAll()
//                    self.arrDataDiseaseDrop = dict["ResponseObject"] as! [AnyObject]
//                    
//                }
//                else{
//                }
//            }
//            else{
//                MBProgressHUD.hide(for: self.view, animated: true)
//                if error == UserInstance.userInstace.noNetworkConnectionMesg{
//                    self.present(UserInstance.showNetworkAlert(), animated: true, completion: nil)
//                }
//            }
//        })
//    }
//    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
//        //referalDoc_View.speciality_View.isHidden = true
//        textField.resignFirstResponder()
//        self.view.endEditing(true)
//        return true
//    }
//    
//}
