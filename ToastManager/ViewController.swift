//
//  ViewController.swift
//  ToastManager
//
//  Created by MacDole on 2022/12/19.
//

import UIKit

class ViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view.
    self.view.backgroundColor = .white

    print("hello world")

    ToastManager.shared.show(text: "hello world")
  }


}

