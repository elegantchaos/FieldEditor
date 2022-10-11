//// -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
////  Created by Sam Deane on 11/10/22.
////  All code (c) 2022 - present day, Elegant Chaos Limited.
//// -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
//
//import SwiftUI
//
//class Field<R: Record>: ObservableObject, Identifiable {
//    typealias Key = R.Key
//
//    enum Kind: String, CaseIterable {
//        case string
//        case paragraph
//        case number
//        case date
//        
//        var label: LocalizedStringKey {
//            LocalizedStringKey(rawValue)
//        }
//        
//        var defaultIcon: String {
//            switch self {
//                case .string: return "tag"
//                case .paragraph: return "note.text"
//                case .number: return "tag"
//                case .date: return "calendar"
//            }
//        }
//    }
//
//    enum Layout {
//        case inline
//        case below
//        case belowNoLabel
//    }
//
//
//    let id: UUID
//    let label: String
//    let icon: String
//    let layout: Layout
//    
//    @Published var key: Key
//    @Published var kind: Kind
//
//    init(_ key: Key, kind: Kind, label: String? = nil, icon: String? = nil, layout: Layout = .inline) {
//        self.id = UUID()
//        self.key = key
//        self.kind = kind
//        self.label = label ?? key
//        self.icon = icon ?? kind.defaultIcon
//        self.layout = layout
//    }
//    
//    var kindString: String {
//        get { kind.rawValue }
//        set { kind = Kind(rawValue: newValue) ?? .string }
//    }
//    
//    func text(for record: R, withAppearance appearance: AppearanceController) -> String {
//        switch kind {
//            case .date:
//                if let date = record.date(forKey: key) {
//                    let string = appearance.formatted(date: date)
//                    return string
//                }
//
//            case .number:
//                if let int = record.integer(forKey: key) {
//                    return "\(int)"
//                } else if let double = record.double(forKey: key) {
//                    return "\(double)"
//                } else {
//                    return ""
//                }
//                
//            default:
//                return record.string(forKey: key) ?? ""
//        }
//        
//        return ""
//    }
//
//}
//
//extension Field: Equatable {
//    static func == (lhs: Field, rhs: Field) -> Bool {
//        lhs.id == rhs.id
//    }
//}
//
//extension Field: Hashable {
//    func hash(into hasher: inout Hasher) {
//        id.hash(into: &hasher)
//    }
//}
