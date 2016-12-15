//
//  File.swift
//  Article Management MVP
//
//  Created by Amreth on 12/15/16.
//  Copyright © 2016 Amreth. All rights reserved.
//

import Foundation
import Alamofire

// URL
let BASE_URL = "http://120.136.24.174:1301"
let GET_ALL_ARTICLE = BASE_URL + "/v1/api/articles"
let DELETE_ARTICLE_BY_ID = GET_ALL_ARTICLE

// HEADER
let HEADERS : HTTPHeaders = ["Authorization" : "Basic QU1TQVBJQURNSU46QU1TQVBJUEBTU1dPUkQ="]
