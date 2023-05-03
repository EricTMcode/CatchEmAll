//
//  CreaturesListView.swift
//  CatchEmAll
//
//  Created by Eric on 03/05/2023.
//

import SwiftUI

struct CreaturesListView: View {
    let creatures = ["Pikachu", "Squirtle", "Charzard", "Snorlax"]
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(creatures, id: \.self) { creature in
                    Text(creature)
                }
            }
            .listStyle(.plain)
            .navigationTitle("Pokemon")
        }
    }
}

struct CreaturesListView_Previews: PreviewProvider {
    static var previews: some View {
        CreaturesListView()
    }
}
