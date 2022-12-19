//
//  KurlyToastManager.swift
//  KurlyBird
//
//  Created by MacDole on 2022/12/19.
//

import Foundation
import UIKit

final class ToastManager {
  // MARK: - Constants
  private enum Factor {
    static let duration = 1.1
    static let interval = 0.3
  }

  internal enum BottomOffset {
    static let Floor: CGFloat = 50.0
    static let Tabbar: CGFloat = 106.0
  }

  static let shared = ToastManager()

  private init() {
    self.configureAppearance()
  }

  private func configureAppearance() {
    let apprearance = ToastView.appearance()
    apprearance.cornerRadius = 8.0
    apprearance.textInsets = UIEdgeInsets(top: 14.0, left: 16.0, bottom: 14.0, right: 16.0)
    apprearance.textColor = .white
    apprearance.font = UIFont(name: "Pretendard-Regular", size: 15.0)
    apprearance.backgroundColor = .black
    apprearance.backgroundWidth = NSNumber(value: UIScreen.main.bounds.size.width - 32.0)
    apprearance.useSafeAreaForBottomOffset = false
  }

  internal func show(text: String?, bottomOffset: CGFloat = 50.0) {
    ToastView.appearance().bottomOffsetPortrait = bottomOffset
    Toast(text: text, delay: Factor.interval, duration: Factor.duration).show()
  }
}
