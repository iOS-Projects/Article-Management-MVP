//
//  AddPresenter.swift
//  Article Management MVP
//
//  Created by Amreth on 12/16/16.
//  Copyright © 2016 Amreth. All rights reserved.
//

import UIKit

class AddPresenter{
    
    var addModel : AddModel?
    var addTableViewControllerInterface : AddTableViewControllerInterface?
    
    init() {
        addModel = AddModel()
        addModel?.addPresenterInterface = self
    }
    
    // Upload Image
    func uploadImage(image: UIImage){
        addModel?.uploadImage(image: image)
    }
    
    func postArticle(title: String, description:String, imageUrl: String){
        // Pass data to model
        addModel?.postArticle(title: title, description: description, imageUrl: imageUrl)
    }
    
}

extension AddPresenter : AddPresenterInterface{
    func uploadImageSuccess(imageUrl: String) {
        // Reponse image url to view
        addTableViewControllerInterface?.uploadImageSuccessWithURL(url: imageUrl)
    }
    
    func postArticleComplete(isSuccess: Bool, message: String) {
        // Reponse message to view
        if isSuccess{
            addTableViewControllerInterface?.postArticleSuccess(message: message)
        }else{
            addTableViewControllerInterface?.postArticleFail(message: message)
        }
    }
}
