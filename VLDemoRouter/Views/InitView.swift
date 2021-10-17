//
//  InitView.swift
//  VLDemoRouter
//
//  Created by Bruno Monteiro de Andrade on 17/10/21.
//

import SwiftUI

struct InitView: VLView {
    
    @Environment(\.sheetRouter) var presenter : Binding<RouterScreens?>
    
    var body: some View {
        VStack {
            Text("Init")
            router.goToRoute(route: .Anestesista, presentationStyle: .PushNavigation(content: { AnyView(Text("GO")) }))
        }
    }
}

struct InitView_Previews: PreviewProvider {
    static var previews: some View {
        InitView()
    }
}
