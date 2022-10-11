// -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
//  Created by Sam Deane on 11/10/22.
//  All code (c) 2022 - present day, Elegant Chaos Limited.
// -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-

import SwiftUI

class Template: ObservableObject {
    @Published var fields: [TemplateField]

    init() {
        self.fields = []
    }
    
    func addField(_ field: TemplateField) {
        self.fields.append(field)
    }

    func moveFields(fromOffsets from: IndexSet, toOffset to: Int) {
        fields.move(fromOffsets: from, toOffset: to)
    }

    func deleteFields(atOffsets offsets: IndexSet) {
        fields.remove(atOffsets: offsets)
    }

}


//    init(decodedFrom strings: [String]) {
//        print("Decoding \(strings)")
//        fields = strings.map({ string in
//            let items = string.split(separator: "•", maxSplits: 1)
//            let kind = Field.Kind(rawValue: String(items[0])) ?? .string
//            return makeField(name: String(items[1]), kind: kind)
//        })
//    }
//
//    var encoded: [String] {
//        let strings = fields.map({ field in
//            "\(field.kind)•\(field.key)"
//        })
//        return strings
//    }
    
