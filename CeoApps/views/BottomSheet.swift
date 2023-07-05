//
//  BottomSheet.swift
//  CeoApps
//
//  Created by Karan Doshi on 7/4/23.
//

import SwiftUI

struct BottomSheet: View {
    
    var selectedPerson: Person?
    var isScrollDisabled: Bool = true
    
    var body: some View {
        ZStack {
            if self.selectedPerson != nil {
                VStack(spacing: 0) {
                    Rectangle().fill(Color.gray.opacity(0.4))
                        .frame(width: 40, height: 4)
                        .cornerRadius(5)
                    
                    Text(self.selectedPerson?.name ?? "")
                        .font(.system(size: 30, weight: .semibold))
                        .padding()
                    
                    Divider()
                    
                    ScrollView(showsIndicators: false) {
                        Text(self.selectedPerson?.description ?? "")
                            .padding()
                        
                        if self.selectedPerson?.sections != nil {
                            Divider()
                            ForEach(self.selectedPerson!.sections!) { section in
                                SectionCarousel(section: section)
                            }
                            .frame(maxWidth: .infinity, alignment: .leading)
                        }
                    }
                    .disabled(self.isScrollDisabled)
                }
                .multilineTextAlignment(.leading)
            }
        }
        .background(Color.white)
        .foregroundColor(Color.black)
    }
}

struct BottomSheet_Previews: PreviewProvider {
    static var previews: some View {
        BottomSheet(selectedPerson: Person.stubbed.first, isScrollDisabled: false)
    }
}
