//
//  ObjectiveRowList.swift
//  HarghitaCounty
//
//  Created by Alina Teca on 14.04.2024.
//

import SwiftUI

struct ObjectiveRowList: View {
    var objective: Objectives
    var body: some View {
        HStack() {
            Image(objective.icon)
                .resizable()
                .scaledToFit()
                .frame(width: 40, height: 40)
                .padding(8)
            
            VStack(alignment: .leading, spacing: 8) {
                Text(objective.name)
                    .font(.headline)
                Text(objective.subtitle)
                    .font(.subheadline)
            }
            Spacer()
            
        }.padding(8)
    }
}

#Preview {
    ObjectiveRowList(objective: objectives[0])
}
