//
//  NavigationMenu.swift
//  Code Drawer
//
//  Created by Bryce Hahn on 6/28/20.
//

import SwiftUI

struct NavigationMenu: View {
    var body: some View {
        NavigationView {
            HStack {
                VStack(spacing: 5) {
                    NavigationLink(destination: CodeView(viewType: .function)) {
                        Text("Test Link")
                    }
                    .frame(maxWidth: .infinity)
                    .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/, /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                    .background(Color.red)
                }
                .frame(minWidth: 200, maxHeight: .infinity)
                .background(Color.green)
            }
        }
    }
}

#if DEBUG
struct NavigationMenu_Previews: PreviewProvider {
    static var previews: some View {
        NavigationMenu()
    }
}
#endif
