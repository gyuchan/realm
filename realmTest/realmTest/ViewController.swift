//
//  ViewController.swift
//  realmTest
//
//  Created by Gyuchan Jeon on 2018. 7. 30..
//  Copyright © 2018년 Gyuchan Jeon. All rights reserved.
//

import UIKit
import RealmSwift

class ViewController: UIViewController {
    @IBOutlet weak var label: UILabel!

    let onlyStoredData: Bool = false

    override func viewDidLoad() {
        super.viewDidLoad()

        if onlyStoredData == false {
            print("before : \(viewControllerViewModel.infoDescription(comic: viewControllerViewModel.storedComicData()))")
            viewControllerViewModel.updateComicData()
        }

        print("after : \(viewControllerViewModel.infoDescription(comic: viewControllerViewModel.storedComicData()))")
        label.text = viewControllerViewModel.infoDescription(comic: viewControllerViewModel.storedComicData())
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

