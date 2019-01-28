//
//  MainViewController.swift
//  Insurer
//
//  Created by Selvam on 1/28/19.
//  Copyright © 2019 Facebook. All rights reserved.
//

import Foundation
import UIKit

@objc
class MainViewController: UIViewController {
  
  
  @IBAction func onClickingRCTView(_ sender: Any) {
      let jsCodeLocation = RCTBundleURLProvider.sharedSettings()?.jsBundleURL(forBundleRoot: "index", fallbackResource: nil)
    let rootView: RCTRootView = RCTRootView.init(bundleURL: jsCodeLocation, moduleName: "Insurer", initialProperties: nil, launchOptions: [:])
    
    rootView.backgroundColor = .black
    
    let vc = UIViewController()
    vc.view = rootView
    self.present(vc, animated: true, completion: nil)
    
  }
  open override func viewDidLoad() {
    super.viewDidLoad()
    
  }
}
