//
//  comic.swift
//  realmTest
//
//  Created by Gyuchan Jeon on 2018. 7. 30..
//  Copyright © 2018년 Gyuchan Jeon. All rights reserved.
//

import RealmSwift

@objc
enum comicType: Int {
    case type1
    case type2
    case type3
    case type4
}

class Comic: Object {
    //"0"일때는 primaryKey가 될 수 없다.
    @objc dynamic var contentId = "-1"
    @objc dynamic var name = ""
    @objc dynamic var comicDescription: String? = nil
    @objc dynamic var type: comicType = .type3
    let episodeList = List<Episode>()

    override static func primaryKey() -> String? {
        return "contentId"
    }
}


