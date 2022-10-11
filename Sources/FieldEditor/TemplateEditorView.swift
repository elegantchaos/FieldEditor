// -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
//  Created by Sam Deane on 11/10/22.
//  All code (c) 2022 - present day, Elegant Chaos Limited.
// -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-

import SwiftUI

public struct TemplateEditorView<Controller: TemplateController>: View {
    
    let controller: Controller
    @ObservedObject var template: Template

    public init(controller: Controller, template: Template) {
        self.controller = controller
        self.template = template
    }

    public var body: some View {
        List {
            ForEach(template.fields) { field in
                TemplateEditorFieldView(controller: controller, field: field)
            }
            .onMove(perform: template.moveFields)
            .onDelete(perform: template.deleteFields)

                HStack {
                    Image(systemName: "plus.circle.fill")
                        .font(.title2)
                        .foregroundColor(.green)
//                    
//                    Text("New Field")
//                        .padding(.leading)
                }
                .onTapGesture(perform: handleNewField)

        }
        .environment(\.editMode, .constant(.active))
    }
    
    func handleNewField() {
        print("blah")
        let field = controller.newField()
        template.addField(field)
    }
}

struct TemplateEditor_Previews: PreviewProvider {
    static let support = PreviewSupport()
    
    static var previews: some View {
        TemplateEditorView(controller: support.controller, template: support.testTemplate())
            .environment(\.editMode, .constant(.active))
    }
}
