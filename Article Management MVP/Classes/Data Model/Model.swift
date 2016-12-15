//
//  Model.swift
//  Article Management MVP
//
//  Created by Amreth on 12/14/16.
//  Copyright © 2016 Amreth. All rights reserved.
//

import Foundation
import ObjectMapper

// This class is created to represent the Data that we get from API

class Article : Mappable{
    var id:Int?
    var title:String?
    var description:String?
    var created_date:String?
    var status:String?
    var image:String?
    var author:Author?
    var category:Category?
    required init(map:Map) {}
    
    func mapping(map:Map){
        id              <- map["ID"]
        title           <- map["TITLE"]
        description     <- map["DESCRIPTION"]
        created_date    <- map["CREATED_DATE"]
        status          <- map["STATUS"]
        image           <- map["IMAGE"]
        author          <- map["AUTHOR"]
        category        <- map["CATEGORY"]
    }
}

class Author : Mappable{
    var id:Int?
    var name:String?
    var gmail:String?
    var gender:String?
    var telephone:String?
    var status:String?
    var facebook_id:String?
    var image_url:String?
    required init(map:Map) {}
    
    func mapping(map:Map){
       id               <- map["ID"]
       name             <- map["Name"]
       gmail            <- map["GENDER"]
       telephone        <- map["TELEPHONE"]
       status           <- map["STATUS"]
       facebook_id      <- map["FACEBOOK_ID"]
       image_url        <- map["IMAGE_URL"]
    }
}

class Category: Mappable{
    var id:Int?
    var name:String?
    required init(map:Map) {}
    
    func mapping(map: Map) {
        id              <- map["ID"]
        name            <- map["NAME"]
    }
    
}

class Pagination: Mappable{
    var page:Int?
    var limit:Int?
    var total_count:Int?
    var total_pages:Int?
    required init(map:Map) {}
    
    func mapping(map: Map) {
        page            <- map["PAGE"]
        limit           <- map["Limit"]
        total_count     <- map["TOTAL_COUNT"]
        total_pages     <- map["TOTAL_PAGES"]
    }
}






















