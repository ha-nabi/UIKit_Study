//
//  Teams.swift
//  SampleUIKit
//
//  Created by 강치우 on 11/19/23.
//

import UIKit

enum TeamType {
    case minji
    case honey
    case daniel
    case haerin
    case hyein
}

extension TeamType {
    
    var propile: UIImage {
        switch self {
            
        case .minji:
            return UIImage(named: "minji")!
        case .honey:
            return UIImage(named: "honey")!
        case .daniel:
            return UIImage(named: "daniel")!
        case .haerin:
            return UIImage(named: "haerin")!
        case .hyein:
            return UIImage(named: "hyein")!
        }
    }
}
