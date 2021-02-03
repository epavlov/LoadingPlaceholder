//
//  Loader.swift
//  LoaderSwiftUI
//
//  Created by Pavlov, Ievgenii (I.) on 2/3/21.
//

import SwiftUI

struct LoadingPlaceholder: View {
    // Color of the animating foreground
    @State var primaryColor: Color = Color(UIColor.lightGray)
    
    // Color of the background
    @State var secondaryColor: Color = Color.gray
    
    @State private var animate = false
    
    var body: some View {
        GeometryReader { geometry in
            ZStack {
                VStack(alignment: .leading){}
                .frame(minWidth: 0,
                       maxWidth: animate ? geometry.size.width : 0,
                       minHeight: 0,
                       maxHeight: .infinity,
                       alignment: .topLeading
                )
                .background(primaryColor)
                .onAppear {
                    let animation = Animation.easeInOut(duration: 2).repeatForever(autoreverses: false)
                    withAnimation(animation) {
                        animate.toggle()
                    }
                }
                
            }
            .frame(minWidth: 0,
                   maxWidth: .infinity,
                   minHeight: 0,
                   maxHeight: .infinity,
                   alignment: .topLeading
                   
            )
            .background(secondaryColor)
        }
    }
}

struct LoadingPlaceholder_Previews: PreviewProvider {
    static var previews: some View {
        LoadingPlaceholder()
    }
}
