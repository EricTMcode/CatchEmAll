//
//  DetailView.swift
//  CatchEmAll
//
//  Created by Eric on 03/05/2023.
//

import SwiftUI

struct DetailView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 3) {
            Text("Poke Name")
                .font(Font.custom("Avenir Next Condensed", size: 60))
                .bold()
                .minimumScaleFactor(0.5)
                .lineLimit(1)
            
            Rectangle()
                .frame(height: 1)
                .foregroundColor(.gray)
                .padding(.bottom)
            
            HStack {
                Image(systemName: "figure.run.circle")
                    .resizable()
                    .scaledToFit()
                    .backgroundStyle(.white)
                    .frame(maxHeight: 96)
                    .cornerRadius(16)
                    .shadow(radius: 8, x: 5, y: 5)
                    .overlay {
                        RoundedRectangle(cornerRadius: 16)
                            .stroke(.gray.opacity(0.5), lineWidth: 1)
                    }
                    .padding(.trailing)
                
                VStack {
                    HStack(alignment: . top) {
                        Text("Height")
                            .font(.title2)
                            .bold()
                            .foregroundColor(.red)
                        
                        Text("999.9")
                            .font(.largeTitle)
                            .bold()
                    }
                    HStack(alignment: . top) {
                        Text("Weight")
                            .font(.title2)
                            .bold()
                            .foregroundColor(.red)
                        
                        Text("999.9")
                            .font(.largeTitle)
                            .bold()
                    }
                }
            }
            Spacer()
        }
        .padding()
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView()
    }
}
