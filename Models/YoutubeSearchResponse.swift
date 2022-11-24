//
//  YoutubeSearchResponse.swift
//  NetflixUIKit
//
//  Created by V K on 24.11.2022.
//

import Foundation


/*
 items =     (
             {
         etag = mBToJcvj4wGoiAQyesitu8naSWI;
         id =             {
             kind = "youtube#video";
             videoId = v3MY5oO6Rj8;
         };
         kind = "youtube#searchResult";
     },
 */

struct YoutubeSearchResponse: Codable {
    let items: [VideoElement]
}


struct VideoElement: Codable {
    let id: IDVideoElement
}


struct IDVideoElement: Codable {
    let kind: String
    let videoId: String
}
