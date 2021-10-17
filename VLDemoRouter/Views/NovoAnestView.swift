//
//  NovoAnestView.swift
//  VLDemoRouter
//
//  Created by Bruno Monteiro de Andrade on 17/10/21.
//

import SwiftUI

struct NovoAnestView: VLView {
    @Environment(\.sheetRouter) var presenter : Binding<RouterScreens?>
    
    @Binding var name : String
    
    var body: some View {
        TextField("Nome", text: $name)
    }
}

struct NovoAnestView_Previews: PreviewProvider {
    static var previews: some View {
        NovoAnestView(name: .constant("XDD"))
    }
}
