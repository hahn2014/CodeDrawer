//
//  ContentView.swift
//  Code Drawer
//
//  Created by Bryce Hahn on 6/28/20.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            HeaderView()
            HStack { //this horizontal Stack consists of the nav menu, and the code editor
                NavigationMenu()
                    .frame(maxWidth: 200)
                CodeView(viewType: .function)
            }
        }
    }
}

#if DEBUG
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .frame(width: 800, height: 600, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
    }
}
#endif
