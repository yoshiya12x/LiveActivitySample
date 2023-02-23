//
//  ContentView.swift
//  LiveActivitySample
//
//  Created by 前田欣耶 on 2023/02/06.
//

import SwiftUI
import ActivityKit
import PagerTabStripView

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Button {
                do {
                    let attributes = LiveActivityWidgetAttributes(name: "TestName")
                    let contentState = LiveActivityWidgetAttributes.ContentState(value: 1)
                    _ = try Activity.request(attributes: attributes, contentState: contentState)
                } catch (let error) {
                    print("Error requesting Live Activity \(error.localizedDescription).")
                }
            } label: {
                Text("Start")
            }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
