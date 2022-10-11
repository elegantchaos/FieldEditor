// -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
//  Created by Sam Deane on 11/10/22.
//  All code (c) 2022 - present day, Elegant Chaos Limited.
// -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-

import FieldEditor
import SwiftUI

struct ContentView: View {
    let controller = SimpleTemplateController()
    let template: Template
    
    init() {
        let template = Template()
        template.addField(controller.newField())
        
        self.template = template
    }

    var body: some View {
        VStack {
            TemplateEditorView(controller: controller, template: template)
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
