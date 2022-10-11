//// -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
////  Created by Sam Deane on 11/10/22.
////  All code (c) 2022 - present day, Elegant Chaos Limited.
//// -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
//
//import SwiftUI
//
//struct FieldView: View {
//    let record: any Record
//    let field: Field
//
//    var body: some View {
//        let text = field.text(for: record)
//        if !text.isEmpty {
//            PropertyView(label: field.label, icon: field.icon, value: text, layout: field.layout)
//        }
//    }
//}
//
//struct EditableFieldView: View {
//    let record: Record
//    let field: Field
//
//    var body: some View {
//        switch field.kind {
//            case .date:
//                EditableDateFieldView(record: record, field: field)
//
//            default:
//                EditableTextFieldView(record: record, field: field)
//        }
//    }
//}
//
//struct EditableDateFieldView: View {
//    let record: Record
//    let field: Field
//    @Binding var date: Date
//
//    internal init(record: Record, field: Field) {
//        self.record = record
//        self.field = field
//        self._date = Binding(
//            get: {
//                record.date(forKey: field.key) ?? Date()
//            },
//
//            set: {
//                newValue in
//                record.set(newValue, forKey: field.key)
//            }
//        )
//    }
//
//
//    var body: some View {
//        PropertyView(label: field.label, icon: field.icon, layout: .below) {
//            DatePicker(field.label, selection: $date, displayedComponents: [.date])
//                .labelsHidden()
//        }
//    }
//}
//
//struct EditableTextFieldView: View {
//    let record: Record
//    let field: Field
//    @State var text: String
//
//    internal init(record: Record, field: Field) {
//        self.record = record
//        self.field = field
//        self._text = .init(initialValue: record.string(forKey: field.key) ?? "")
//    }
//
//
//    var body: some View {
//        PropertyView(label: field.label, icon: field.icon, layout: .below) {
//            TextField(field.label, text: $text)
//        }
//    }
//}
