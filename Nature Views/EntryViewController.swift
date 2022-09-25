//
//  EntryViewController.swift
//  Nature Views
//
//  Created by Sophia Wang on 5/7/21.
//

import UIKit

class EntryViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    @IBAction func goback(_ segue: UIStoryboardSegue){
        AudioPlayer.stop()
    }

}
