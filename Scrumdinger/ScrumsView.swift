//
//  ScrumsView.swift
//  Scrumdinger
//
//  Created by TUANLE5 on 18/07/2022.
//

import SwiftUI

struct ScrumsView: View {
    let scrums: [DailyScrum]
    var body: some View {
        List {
            ForEach(scrums, id: \.title) {
                scrums in CardView(scrum: scrums).listRowBackground(scrums.theme.mainColor)
            }
        }
    }
}

struct ScrumsView_Previews: PreviewProvider {
    static var previews: some View {
        ScrumsView(scrums: DailyScrum.sampleData)
    }
}
