//
//  WritingSummaryNewViewController.swift
//  GetStartedSwift
//
//  Created by kannan on 7/5/19.
//  Copyright © 2019 MyScript. All rights reserved.
//

import UIKit

class WritingSummaryNewViewController: UIViewController,UITableViewDelegate,UITableViewDataSource,IINKEditorDelegate,BibleReadingSliderProtocol {
    
    func partChanged(_ editor: IINKEditor) {
        
    }
    
    func contentChanged(_ editor: IINKEditor, blockIds: [String]) {
        
    }
    
    func onError(_ editor: IINKEditor, blockId: String, message: String) {
        
    }
    
    @IBOutlet weak var writingHeight_Contrnt: NSLayoutConstraint!
    @IBOutlet weak var summary_TblView: UITableView!
    var audioVC = EditorViewController()
    override func viewDidLoad() {
        super.viewDidLoad()
        summary_TblView.tableFooterView = UIView()
//        summary_TblView.register(UINib(nibName: "WritingSummaryNewTableViewCell", bundle: nil), forCellReuseIdentifier: "WritingSummaryNewTableViewCell")
        // Do any additional setup after loading the view.
    }
    
    func setupEditorsVC(editorsVC:EditorViewController){
        var getVC = editorsVC
        getVC = childViewControllers.first as! EditorViewController
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        getVC.engine = appDelegate.engine
        getVC.inputMode = .forcePen
        
//        inputTypeSegmentedControl.selectedSegmentIndex = Int(getVC.inputMode.rawValue)
        do {
            if let package = try createPackage(packageName: "New") {
                try getVC.editor.part = package.getPartAt(0)
            }
        } catch {
            print("Error while creating package : " + error.localizedDescription)
        }
        getVC.editor.delegate = self
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
                print("Title----------\(self.title)")
            }
        }
        return resultPackage
    }
    
    func addThisViewControllerAsChild(audioViewController: EditorViewController) {
        print("Called--------------")
        self.addChildViewController(audioViewController);
    }
    
    
    func display(contentController content: UIViewController, on view: UIView) {
        self.addChildViewController(content)
        content.view.frame = view.bounds
        content.view.backgroundColor = UIColor.red
//        content.view.frame = CGRect(x: 0, y: 0, width: 500, height: 600)
        view.addSubview(content.view)
        content.didMove(toParentViewController: self)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
//    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
//        return 60
//    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        print("Rows---------------------\(indexPath.row)")
        var cell: WritingSummaryNewTableViewCell? = (tableView.dequeueReusableCell(withIdentifier: "WritingSummaryNewTableViewCell") as? WritingSummaryNewTableViewCell)
        // var nib: [Any] = Bundle.main.loadNibNamed("WritingSummaryNewTableViewCell", owner: self, options: nil)!
        // cell = nib[0]  as? WritingSummaryNewTableViewCell
      
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        cell?.editorVC  = storyboard.instantiateViewController(withIdentifier: "EditorViewController") as! EditorViewController
         cell?.selectionStyle = .none
        self.addChildViewController(cell!.editorVC )
        setupEditorsVC(editorsVC: cell!.editorVC)
       
        cell?.writingBase_View.addSubview(cell!.editorVC.view)
        cell?.editorVC.didMove(toParentViewController: self)
        cell?.writingHgt_Constrnt.constant = 300
//        cell?.editorVC.view.frame = cell!.writingBase_View.bounds
        cell?.editorVC.view.frame = CGRect(x: 0, y: 0, width: cell!.frame.width, height: 300)
        cell?.editorVC.view.isUserInteractionEnabled = true
        cell?.editorVC.displayViewController.view.isUserInteractionEnabled = true
        return cell!
    }
    
    func tableView(_ tableView: UITableView, didEndDisplaying cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        if (cell is EditorViewController) {
            ((cell as? WritingSummaryNewTableViewCell)?.editorVC)?.removeFromParentViewController()
        }
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
