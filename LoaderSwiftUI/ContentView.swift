//
//  ContentView.swift
//  LoaderSwiftUI
//
//  Created by Pavlov, Ievgenii (I.) on 2/3/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("Loading articles...")
            LoadingPlaceholder(animationDuration: 1)
                .frame(width: 150, height: 25)
            LoadingPlaceholder()
                .frame(width: 300, height: 50)
            LoadingPlaceholder()
                .frame(width: 300, height: 50)
            LoadingPlaceholder()
                .frame(width: 300, height: 50)
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
