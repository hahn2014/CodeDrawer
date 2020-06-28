//
//  HeaderView.swift
//  Code Drawer
//
//  Created by Bryce Hahn on 6/28/20.
//

import SwiftUI

struct HeaderView: View {
    var body: some View {
        HStack(alignment: .lastTextBaseline) {
            Image("AppIcon")
                .frame(width: 50.0, height: 50.0, alignment: .leading)
                .background(Color.red)
            Text("Code Drawer")
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(Color.black)
        }
        .frame(maxWidth: .infinity, minHeight: 50)
        .background(Color.blue)
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView()
    }
}
