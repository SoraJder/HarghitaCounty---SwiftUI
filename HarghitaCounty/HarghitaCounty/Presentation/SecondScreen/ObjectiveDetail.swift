//
//  ObjectiveDetail.swift
//  HarghitaCounty
//
//  Created by Alina Teca on 14.04.2024.
//

import SwiftUI

struct ObjectiveDetail: View {
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
                Image(objective.image)
                    .resizable()
                    .scaledToFit()
                Text(objective.shortDescription)
                    .font(.body)
                    .padding()
                    .multilineTextAlignment(.center)
                NavigationLink(destination: ObjectiveMoreDetails(objective: objective)){
                    Text("Citeste mai multe aici")
                }
                Spacer()
            }.padding(16)
        }
    }
}

#Preview {
    ObjectiveDetail(objective: objectives[11])
}
