//
//  ContentView.swift
//  TextViewSample
//
//  Created by ZZJ on 2019/12/31.
//  Copyright © 2019 Peking University. All rights reserved.
//

import SwiftUI
import TextView

struct ContentView: View {
    @State var title: String = ""
    @State var text: String = ""
    @State var isEditing: Bool = false
    
    var body: some View {
        Form {
            TextField("Title", text: $title)
            TextView(text: $text, isEditing: $isEditing, contentType: nil, autocorrection: TextView.Autocorrection.no, autocapitalization: TextView.Autocapitalization.none, isSecure: false, isEditable: true, isSelectable: true, isScrollingEnabled: true, isUserInteractionEnabled: true)
                .frame(height: 100)
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
