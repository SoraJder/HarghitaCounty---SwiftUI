//
//  ObjectiveMoreDetail.swift
//  HarghitaCounty
//
//  Created by Alina Teca on 15.04.2024.
//

import SwiftUI

struct ObjectiveMoreDetails: View {
    var objective: Objectives
    var body: some View {
        NavigationView{
            VStack(alignment: .center) {
                Text(objective.name)
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .multilineTextAlignment(.center)
                    .padding(.top)
                Text(objective.subtitle)
                    .font(.callout)
                    .multilineTextAlignment(.center)
                    .padding()
                ScrollView{
                    Text(objective.longDescription)
                        .font(.body)
                        .padding()
                        .multilineTextAlignment(.center)
                }
                NavigationLink(destination: ObjectiveUIWeb(link: objective.link)){
                    Text("Deschide link")
                }
                Spacer()
            }.padding(16)
        }
    }
}

#Preview {
    ObjectiveMoreDetails(objective: objectives[5])
}
