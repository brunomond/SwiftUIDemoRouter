//
//  PresentationStyke.swift
//  VLDemoRouter
//
//  Created by Bruno Monteiro de Andrade on 17/10/21.
//

import SwiftUI

enum PresentationStyle {
    case Sheet
    case FullScreen
    case PushNavigation(content : () -> AnyView)
}
