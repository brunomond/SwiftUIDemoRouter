//
//  AnestesistaView.swift
//  VLDemoRouter
//
//  Created by Bruno Monteiro de Andrade on 17/10/21.
//

import SwiftUI

struct AnestesistaView: VLView {
    @Environment(\.sheetRouter) var presenter : Binding<RouterScreens?>
    
    @State var name : String = "xd"
    var body: some View {
        VStack {
            Text("Anestesista")
            Button(name) {
                router.presentedSheet = .NovoAnest(name: $name)
            }
        }
    }
}

struct AnestesistaView_Previews: PreviewProvider {
    static var previews: some View {
        AnestesistaView()
    }
}
