//
//  ObjectiveList.swift
//  HarghitaCounty
//
//  Created by Alina Teca on 14.04.2024.
//

import SwiftUI

struct ObjectiveList: View {
    var body: some View {
        NavigationSplitView {
            List(objectives, id: \.name) { objective in
                NavigationLink {
                    ObjectiveDetail(objective: objective)
                } label: {
                    ObjectiveRowList(objective: objective)
                }
            }
            .navigationTitle("Turism Harghita")
        } detail: {
            Text("Alege un obiectiv")
        }
    }
}

#Preview {
    ObjectiveList()
}
