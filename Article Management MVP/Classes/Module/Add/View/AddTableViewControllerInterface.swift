//
//  AddTableViewControllerInterface.swift
//  Article Management MVP
//
//  Created by Amreth on 12/16/16.
//  Copyright © 2016 Amreth. All rights reserved.
//

import Foundation

protocol AddTableViewControllerInterface {
    func uploadImageSuccessWithURL(url: String)
    func postArticleSuccess(message: String)
    func postArticleFail(message: String)
}
