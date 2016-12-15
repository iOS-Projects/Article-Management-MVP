//
//  DisplayPresenterInterface.swift
//  Article Management MVP
//
//  Created by Amreth on 12/14/16.
//  Copyright © 2016 Amreth. All rights reserved.
//

import Foundation

protocol DisplayPresenterInterface {
    func responseData(_ data:[Article])
    func deleteSuccess()
}
