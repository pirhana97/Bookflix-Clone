//
//  Books.swift
//  Netflix Clone
//
//  Created by Priyanka Ghosh on 16/12/22.
//

import Foundation

struct BookDescriptionResponse : Codable{
    let results: [Books]
}

struct Books : Codable{
  
    var title : String
    var writingAuthorName : String
    var synopsis : String
    var language : String
    var representGenre : String
    var thumbnailVertical : String?
    
}
