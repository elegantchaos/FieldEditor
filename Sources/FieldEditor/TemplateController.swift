// -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
//  Created by Sam Deane on 11/10/22.
//  All code (c) 2022 - present day, Elegant Chaos Limited.
// -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-

import SwiftUI

public protocol TemplateController: ObservableObject {
    var defaultKind: String { get }
    var defaultKey: String { get }
    var defaultIcon: String { get }
    
    var allKinds: [String] { get }
    
    func label(forField field: TemplateField) -> String
    func image(forField field: TemplateField) -> String
    func makeField(key: String?, kind: String?, icon: String?) -> TemplateField
    
}

public extension TemplateController {
    func newField() -> TemplateField {
        return makeField(key: defaultKey, kind: defaultKind, icon: defaultIcon)
    }
}

public class SimpleTemplateController: TemplateController {
    typealias Key = String
    typealias Icon = String
    typealias Kind = String
    
    public var defaultKind: String { "string" }
    public var defaultIcon: String { "tag" }
    public var defaultKey: String { "key" }
    
    public init() {
    }
    
    public var allKinds: [String] {
        return [
            "string",
            "paragraph",
            "date"
        ]
    }
    
    public func label(forField field: TemplateField) -> String {
        return field.key
    }
    
    public func image(forField field: TemplateField) -> String {
        field.icon
    }

    public func makeField(key: String? = nil, kind: String? = nil, icon: String? = nil) -> TemplateField {
        return TemplateField(
            key: key ?? "untitled",
            icon: icon ?? "tag",
            kind: kind ?? "string"
        )
    }
}
