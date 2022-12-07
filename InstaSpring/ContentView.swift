//
//  ContentView.swift
//  InstaSpring
//
//  Created by Hariz Shirazi on 2022-12-07.
//

import SwiftUI

struct ContentView: View {
    @Binding var triggerRespring: Bool
    let bg = Color(red: 0, green: 0, blue: 0)
    var body: some View {
        ZStack {
            
        }
        .onAppear{
            respring()

        }
        .drawingGroup(opaque: false, colorMode: .linear)
                .background(
                    Rectangle()
                        .foregroundColor(bg))
                .ignoresSafeArea()
        }
    func respring() {
        withAnimation(.easeInOut) {
            print("respringing right about now")
            triggerRespring = true
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(triggerRespring: .constant(false))
    }
}
