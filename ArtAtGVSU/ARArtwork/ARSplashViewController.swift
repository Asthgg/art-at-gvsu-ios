//
//  ARSplashViewController.swift
//  ArtAtGVSU
//
//  Created by Zach Veenstra on 4/17/24.
//  Copyright © 2024 Applied Computing Institute. All rights reserved.
//

import UIKit
import SwiftUI
import SDWebImage
import ImageViewer
import Combine

class ARSplashViewController: UIViewController {
    var artwork: Artwork? = nil
    var hostingController: UIHostingController<ARSplashView>? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        hostingController = UIHostingController(rootView: ARSplashView(artwork: self.artwork!))
        
        addChild(hostingController!)
        view.addSubview(hostingController!.view)
        hostingController!.didMove(toParent: self)
    }
    
    override func viewDidLayoutSubviews() {
        hostingController?.view.frame = self.view.frame
    }
}
