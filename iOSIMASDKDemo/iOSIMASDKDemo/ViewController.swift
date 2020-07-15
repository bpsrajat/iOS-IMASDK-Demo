//
//  ViewController.swift
//  iOSIMASDKDemo
//
//  Created by Rajat Sharma on 2020-07-15.
//  Copyright © 2020 Rajat Sharma. All rights reserved.
//

import UIKit
import AVKit

class ViewController: UIViewController {
    static let ContentURLString = "https://devstreaming-cdn.apple.com/videos/streaming/examples/img_bipbop_adv_example_fmp4/master.m3u8"

    var playerController: AVPlayerViewController!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupContentPlayer()
        // Do any additional setup after loading the view.
    }

    private func setupContentPlayer() {
        let contentURL = URL(string: ViewController.ContentURLString)
        let player = AVPlayer(url: contentURL!)
        playerController = AVPlayerViewController()
        playerController.player = player
    }
}

