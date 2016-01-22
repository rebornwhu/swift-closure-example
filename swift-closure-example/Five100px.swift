//
//  Five100px.swift
//  swift-closure-example
//
//  Created by Xiao Lu on 1/21/16.
//  Copyright © 2016 Xiao Lu. All rights reserved.
//

import Foundation

enum ImageSize: Int {
    case Tiny = 1
    case Small = 2
    case Medium = 3
    case Large = 4
    case XLarge = 5
}

enum Router {
    static let baseURLString = "https://api.500px.com/v1"
    static let consumerKey = "h9VtzL5qQlp10HMzWNKmvs7qpZH27NOe5HYO4tXH"
    
    case PopularPhoto(Int)
    case PhotoInfo(Int, ImageSize)
    case Comments(Int, Int)
}

func createTuple(router: Router) -> (path: String, parameters: [String: AnyObject]) {
    switch router {
    case .PopularPhoto(let page):
        let params = ["consumer_key": Router.consumerKey, "page": "\(page)", "feature": "popular", "rpp": "50", "include_store": "store_download", "include_states": "votes"]
        return ("/photos", params)
    case .PhotoInfo(let photoID, let imageSize):
        let params = ["consumer_key": Router.consumerKey, "image_size": "\(imageSize.rawValue)"]
        return ("/photos/\(photoID)", params)
    case .Comments(let photoID, let commentsPage):
        let params = ["consumer_key": Router.consumerKey, "comments": "1", "comments_page": "\(commentsPage)"]
        return ("/photos/\(photoID)/comments", params)
    }
}