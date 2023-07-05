//
//  SectionCarousel.swift
//  CeoApps
//
//  Created by Karan Doshi on 7/4/23.
//

import SwiftUI

struct SectionCarousel: View {
    
    let section: PersonSection
    
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            Text(section.name)
                .font(.system(size: 20, weight: .regular))
                .padding(.horizontal)
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 15) {
                    ForEach(section.picturesImageName, id: \.self) { name in
                        Image(name)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(height: 200)
                            .cornerRadius(10)
                            .shadow(radius: 5)
                    }
                }
//                .background(Color.green)
                .padding(.horizontal)
                .padding(.vertical)
            }
        }
//        .background(Color.pink)
        .padding(.bottom)
    }
}

struct SectionCarousel_Previews: PreviewProvider {
    static var previews: some View {
        SectionCarousel(section: Person.stubbed[0].sections![2])
    }
}
