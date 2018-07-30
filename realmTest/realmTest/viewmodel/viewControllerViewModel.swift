//
//  viewControllerViewModel.swift
//  realmTest
//
//  Created by Gyuchan Jeon on 2018. 7. 30..
//  Copyright © 2018년 Gyuchan Jeon. All rights reserved.
//

import UIKit
import RealmSwift

class viewControllerViewModel: NSObject {

    class func updateComicData() {
        let episode = Episode()
        episode.name = "sampleName"
        episode.episodeId = "12"

        let comic = Comic()
        comic.contentId = "0"
        comic.name = "testComicName"
        comic.type = .type1
        comic.episodeList.append(episode)

        let realm = try! Realm()

        try! realm.write {
            realm.add(comic, update: true)
        }
    }

    class func infoDescription(comic: Comic) -> String {
        return "comicId: \(comic.contentId)\n comicName: \(comic.name)\n comicDescription: \(comic.comicDescription ?? "")\n comicType: \(comic.type.rawValue)\n episodeCount: \(comic.episodeList.count)"
    }

    class func storedComicData() -> Comic {
        let realm = try! Realm()
        let results = realm.objects(Comic.self)
        guard let comicInfo = results.first else { return Comic() }
        return comicInfo
    }
}
