//
//  CardView.swift
//  CeoApps
//
//  Created by Karan Doshi on 7/3/23.
//

import SwiftUI

struct CardView: View {
    
    var person: Person
    
    var body: some View {
        VStack {
            ZStack(alignment: .bottom) {
                Image(person.imageName)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                
                Text(person.shortDescription)
                    .font(.body)
                    .foregroundColor(.white)
                    .lineSpacing(5)
                    .lineLimit(4)
                    .padding()
                    .frame(width: screen.bounds.width * 0.8)
                    .background(Color.black.opacity(0.5))
            }
            .frame(width: screen.bounds.width * 0.75, height: screen.bounds.height * 0.60)
            .cornerRadius(15)
            .shadow(radius: 10)

            Text(person.name)
                .font(.system(size: 30, weight: .semibold))
        }
    }
}
struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(person: Person.stubbed[8])
    }
}
