//
//  CreaturesListView.swift
//  CatchEmAll
//
//  Created by Eric on 03/05/2023.
//

import SwiftUI

struct CreaturesListView: View {
    @StateObject var creaturesVM = CreaturesViewModel()
    
    var body: some View {
        NavigationStack {
            List(creaturesVM.creaturesArray, id: \.self) { creature in
                NavigationLink {
                    DetailView(creature: creature)
                } label: {
                    Text(creature.name.capitalized)
                        .font(.title2)
                }
            }
            .listStyle(.plain)
            .navigationTitle("Pokemon")
        }
        .task {
            await creaturesVM.getData()
        }
    }
}

struct CreaturesListView_Previews: PreviewProvider {
    static var previews: some View {
        CreaturesListView()
    }
}
