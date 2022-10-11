// -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
//  Created by Sam Deane on 11/10/22.
//  All code (c) 2022 - present day, Elegant Chaos Limited.
// -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-

import SwiftUI

protocol TemplateController: ObservableObject {
    var defaultKind: String { get }
    var defaultKey: String { get }
    var defaultIcon: String { get }
    
    var allKinds: [String] { get }
    
    func label(forField field: TemplateField) -> String
    func image(forField field: TemplateField) -> String
    func makeField(key: String?, kind: String?, icon: String?) -> TemplateField
}

class SimpleTemplateController: TemplateController {
    typealias Key = String
    typealias Icon = String
    typealias Kind = String
    
    var defaultKind: String { "string" }
    var defaultIcon: String { "tag" }
    var defaultKey: String { "key" }
    
    var allKinds: [String] {
        return [
            "string",
            "paragraph",
            "date"
        ]
    }
    func label(forField field: TemplateField) -> String {
        return field.key
    }
    
    func image(forField field: TemplateField) -> String {
        field.icon
    }

    func makeField(key: String? = nil, kind: String? = nil, icon: String? = nil) -> TemplateField {
        return TemplateField(
            key: key ?? "untitled",
            icon: icon ?? "tag",
            kind: kind ?? "string"
        )
    }
}
