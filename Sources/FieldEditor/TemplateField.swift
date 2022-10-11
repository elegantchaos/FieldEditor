// -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
//  Created by Sam Deane on 11/10/22.
//  All code (c) 2022 - present day, Elegant Chaos Limited.
// -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-

import SwiftUI

class TemplateField: ObservableObject {
    internal init(key: String, icon: String, kind: String) {
        self.key = key
        self.icon = icon
        self.kind = kind
    }
    
    /// The key to use when looking up the value for this item in the record.
    @Published var key: String
    
    /// The icon to show for this item.
    @Published var icon: String
    
    /// The kind of this item. Determines the exact view used to display / edit it.
    @Published var kind: String
}

extension TemplateField: Identifiable {
    var id: String { key }
}

struct PreviewSupport {
    let controller = SimpleTemplateController()
    let template = Template()
    
    func testTemplate() -> Template {
        let template = Template()
        template.addField(controller.makeField(key: "title"))
        template.addField(controller.makeField(key: "subtitle"))
        return template
    }
    
    func testField() -> TemplateField {
        TemplateField(key: "test", icon: "test", kind: controller.defaultKind)
    }
}
