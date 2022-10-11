// -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
//  Created by Sam Deane on 11/10/22.
//  All code (c) 2022 - present day, Elegant Chaos Limited.
// -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-

import SwiftUI

struct LabelWithFixedWidthIcon: View {
    let label: LocalizedStringKey
    let systemImage: String

    public init(_ label: LocalizedStringKey, systemImage: String) {
        self.label = label
        self.systemImage = systemImage
    }

    var body: some View {
        Label {
            Text(label)
        } icon: {
            HStack {
                Spacer()
                Image(systemName: systemImage)
            }
            .frame(width: .labelIconWidth)
        }
    }
}

extension CGFloat {
    static let labelIconWidth = 24.0
}
