//
//  RouterScreens.swift
//  VLDemoRouter
//
//  Created by Bruno Monteiro de Andrade on 17/10/21.
//

import SwiftUI

enum RouterScreens : Identifiable {
    var id: Int {
        self.generateEnumIdentifier()
    }
    
    case Anestesista
    case Initial
    case NovoAnest(name : Binding<String>)
    case Proibido
    
    func generateEnumIdentifier() -> Int {
        switch self {
        case .Anestesista:
            return 0
        case .Initial:
            return 1
        case .NovoAnest(let _):
            return 2
        case .Proibido:
            return 3
        }
    }
}
