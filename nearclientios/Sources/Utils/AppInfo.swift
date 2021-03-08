//
//  AppInfo.swift
//  nearclientios
//
//  Created by Dmytro Kurochka on 10.12.2019.
//

#if canImport(UIKit)
import Foundation
import UIKit

extension UIApplication {
  static var urlSchemes: [String]? {
    return (Bundle.main.object(forInfoDictionaryKey: "CFBundleURLTypes") as? [[String: Any]])?.first?["CFBundleURLSchemes"] as? [String]
  }
}
#endif
