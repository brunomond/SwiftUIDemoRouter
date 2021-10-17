//
//  VLView.swift
//  VLDemoRouter
//
//  Created by Bruno Monteiro de Andrade on 17/10/21.
//

import SwiftUI

protocol VLView : View {
    var router : Router { get }
    var anyView : AnyView { get }
}

extension VLView {
    
    var router : Router {
        return Router.shared
    }
    
    var anyView : AnyView {
        return AnyView(self)
    }
    
}

private struct BMRouterSheetPresent : EnvironmentKey {
    static var defaultValue : Binding<RouterScreens?> = .constant(nil)
}

extension EnvironmentValues {
    var sheetRouter: Binding<RouterScreens?> {
        get { self[BMRouterSheetPresent.self] }
        set { self[BMRouterSheetPresent.self] = newValue}
    }
}

extension View {
    func sheetPresenter(_ value : Binding<RouterScreens?>) -> some View {
        environment(\.sheetRouter, value)
    }
}
