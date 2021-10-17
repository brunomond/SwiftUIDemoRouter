//
//  ContentView.swift
//  VLDemoRouter
//
//  Created by Bruno Monteiro de Andrade on 17/10/21.
//

import SwiftUI

struct ContentView: VLView {
    
    @StateObject var routerBind : Router = Router.shared
    
    var body: some View {
        NavigationView {
            EmptyView()
            router.rootView()
        }
        .sheet(item: $routerBind.presentedSheet, onDismiss: nil) { presentedSheet in
            router.goToRoute(route: presentedSheet, presentationStyle: .Sheet)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
