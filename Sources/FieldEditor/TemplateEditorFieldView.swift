// -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
//  Created by Sam Deane on 11/10/22.
//  All code (c) 2022 - present day, Elegant Chaos Limited.
// -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-

import SwiftUI

struct TemplateEditorFieldView<Controller: TemplateController>: View {
    
    let controller: Controller
    
    @ObservedObject var field: TemplateField

    init(controller: Controller, field: TemplateField) {
        self.controller = controller
        self.field = field
    }

    var body: some View {
        HStack {
            TextField("label", text: $field.key, onEditingChanged: handleEditingChanged, onCommit: handleCommit)
            
            Button(action: { print("blah") }) {
                FieldKindMenu(controller: controller, field: field)
            }
        }
    }
    
    func handleEditingChanged(_ isEditing: Bool) {
        if !isEditing {
            saveChanges()
        }
    }
    
    func handleCommit() {
        saveChanges()
    }
    
    func saveChanges() {
        //            if key != field.key {
        //                field.key = key
        //            }
    }
    
}

struct TemplateFieldEditorView_Previews: PreviewProvider {
    static var previewField: TemplateField {
        TemplateField(key: "test", icon: "test", kind: "test")
    }
    static var previews: some View {
        Text("Hello, world!")
    }
}
