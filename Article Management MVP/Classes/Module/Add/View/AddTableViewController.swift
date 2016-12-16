//
//  AddTableViewController.swift
//  Article Management MVP
//
//  Created by Amreth on 12/16/16.
//  Copyright © 2016 Amreth. All rights reserved.
//

import UIKit
import Alamofire

class AddTableViewController: UITableViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    // AddPresenter
    var addPresenter : AddPresenter?
    
    @IBOutlet weak var txtTitle: UITextField!
    @IBOutlet weak var txtDescription: UITextField!
    @IBOutlet weak var addImgView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        addPresenter = AddPresenter()
        addPresenter?.addTableViewControllerInterface = self
    }
    
    @IBAction func btnBrowse(_ sender: Any) {
        let imgPicker = UIImagePickerController()
        imgPicker.allowsEditing = false
        imgPicker.sourceType = .photoLibrary
        imgPicker.delegate = self
        present(imgPicker, animated: true, completion: nil)
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        //get image
        let image = info[UIImagePickerControllerOriginalImage] as! UIImage
        //display image to image view
        addImgView.image = image
        //Dismiss ImagePickerController
        picker.dismiss(animated: true, completion: nil)
    }
    
    
    @IBAction func btnSave(_ sender: Any) {
        let img = self.addImgView.image
        // Tell Presenter to upload image
        addPresenter?.uploadImage(image: img!)
        
    }
}

extension AddTableViewController : AddTableViewControllerInterface{
    func uploadImageSuccessWithURL(url: String) {
        // Start Post Article
        // Tell Presenter to post article
        addPresenter?.postArticle(title: txtTitle.text!, description: txtDescription.text!, imageUrl: url)
    }
    
    func postArticleSuccess(message: String) {
        _ = self.navigationController?.popViewController(animated: true)
    }
    
    func postArticleFail(message: String) {
        print(message)
    }
}
