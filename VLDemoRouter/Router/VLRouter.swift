//
//  VLRouter.swift
//  VLDemoRouter
//
//  Created by Bruno Monteiro de Andrade on 17/10/21.
//

import SwiftUI

class Router : ObservableObject {
    
    static var shared : Router = Router()

    @Published var presentedSheet : RouterScreens?
    
    @State var permissions : [String] = ["Init", "Anest", "TWrite"]
    
    func goToRoute(route : RouterScreens, presentationStyle : PresentationStyle) -> AnyView {
        let result = getRoute(route: route)
        if result.permitted {
            
            switch presentationStyle {
            case .Sheet:
                return result.view
                
            case .FullScreen:
                return result.view
                
            case .PushNavigation(let content):
                return AnyView(NavigationLink(destination: result.view, label: content))
            }
        }
        
        return AnyView(Text("não permitido"))
    }
    
    func getRoute(route : RouterScreens) -> (view: AnyView, permitted : Bool) {
        switch route {
        case .Anestesista:
            return (view : AnyView(AnestesistaView()), permitted: self.permissions.contains("Anest"))
        case .Initial:
            return (view : AnyView(InitView()), permitted: self.permissions.contains("Init"))
        case .NovoAnest(let $name):
            return (view : AnyView(NovoAnestView(name: $name)), permitted: self.permissions.contains("TWrite"))
        case .Proibido:
            return (view : AnyView(AnestesistaView()), permitted: self.permissions.contains("Proib"))
        }
    }
    
    func rootView() -> AnyView {
        return getRoute(route: .Initial).view
    }
    
}
