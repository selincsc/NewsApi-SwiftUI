//
//  Article.swift
//  newsApİTutorial
//
//  Created by Selin Çağlar on 21.04.2022.
//

import Foundation
struct Article: Codable,Hashable {
    let title: String?
    let description: String?
    let source : Source?
   let author : String?
   let url : String?
   let urlToImage : String?
   let publishedAt : String?
   let content : String?
}
