//
//  CodeView.swift
//  Code Drawer
//
//  Created by Bryce Hahn on 6/28/20.
//

import SwiftUI

struct CodeView: View {
    var viewType: NavMenuItems
    @State private var testText: String = "this is a placeholder"
    
    var body: some View {
        HStack {
            VStack {
                Text("1")
                Text("2")
                Text("3")
                Text("4")
            }
            .frame(maxWidth: 12, maxHeight: .infinity)
            .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
            
            VStack {
                MultilineTextView(text: $testText)
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color.purple)
        }
    }
}

struct MultilineTextView: NSViewRepresentable {
    typealias NSViewType = NSTextView

    @Binding var text: String

    func makeNSView(context: Self.Context) -> Self.NSViewType{
        let view = NSTextView()
        view.isEditable = true
        view.isRulerVisible = true
        return view
    }

    func updateNSView(_ nsView: Self.NSViewType, context: Self.Context) {
        nsView.string = text
    }
}





enum NavMenuItems: Int, CaseIterable, Identifiable {
    var id: Int {
        return self.rawValue
    }
    
    case function, algorithm, project, settings
}

#if DEBUG
struct CodeView_Previews: PreviewProvider {
    static var previews: some View {
        CodeView(viewType: .function)
    }
}
#endif
