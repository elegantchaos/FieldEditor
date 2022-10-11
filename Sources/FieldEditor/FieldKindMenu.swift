// -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
//  Created by Sam Deane on 11/10/22.
//  All code (c) 2022 - present day, Elegant Chaos Limited.
// -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-

import SwiftUI

struct FieldKindMenu: View {
    let controller: any TemplateController
    @ObservedObject var field: TemplateField
    
    var body: some View {
        Menu {
            Picker("", selection: $field.kind) {
                ForEach(controller.allKinds, id: \.self) { kind in
                    Text(kind)
                }
            }
            .pickerStyle(InlinePickerStyle())
        } label: {
            HStack {
                Text(field.kind)
                Image(systemName: "chevron.up.chevron.down")
            }
        }
    }
}

struct FieldKindMenu_Previews: PreviewProvider {
    static var testController = SimpleTemplateController()
    
    static var previews: some View {
        FieldKindMenu(controller: testController, field: TemplateField(key: "test", icon: "test", kind: testController.defaultKind))
    }
}
