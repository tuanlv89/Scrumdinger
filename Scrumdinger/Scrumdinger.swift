//
//  ContentView.swift
//  Scrumdinger
//
//  Created by TUANLE5 on 18/07/2022.
//

import SwiftUI

struct Scrumdinger: View {
    var body: some View {
        VStack {
            ProgressView(value: 5, total: 15)
            HStack {
                VStack(alignment: .leading) {
                    Text("Seconds Elapsed")
                    Label("300", systemImage: "hourglass.bottomhalf.fill")
                }
                Spacer()
                VStack(alignment: .trailing) {
                    Text("Seconds Remaining")
                    Label("600",systemImage: "hourglass.tophalf.fill")
                }
            }.accessibilityElement(children: .ignore).accessibilityLabel("Time remaining").accessibilityValue("10 minutes")
            Circle().strokeBorder(lineWidth: 24)
            HStack {
                Text("Speaker 1 of 3")
                Spacer()
                Button(action: {}) {
                    Image(systemName: "forward.fill")
                }
                .accessibilityLabel("Next speaker")
            }
        }
        .padding(.all)
    }
}

struct Scrumdinger_Previews: PreviewProvider {
    static var previews: some View {
        Scrumdinger()
    }
}
