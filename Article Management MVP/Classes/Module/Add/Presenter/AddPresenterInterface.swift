//
//  AddPresenterInterface.swift
//  Article Management MVP
//
//  Created by Amreth on 12/16/16.
//  Copyright © 2016 Amreth. All rights reserved.
//

import Foundation

protocol AddPresenterInterface {
    func uploadImageSuccess(imageUrl : String)
    func postArticleComplete(isSuccess: Bool, message: String)
}
