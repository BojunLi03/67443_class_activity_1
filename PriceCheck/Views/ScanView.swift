//
//  ScanView.swift
//  PriceCheck
//
//  Created by stomer10000 on 9/26/24.
//

import Foundation
import SwiftUI

struct ScanView: View {
    let scan: PriceScan

    var body: some View {
            HStack {
                VStack(alignment: .leading) {
                    Text(scan.item)
                        .font(.largeTitle)
                        .padding(.bottom, 10)
                    
                }
                Spacer()
                Text(String(format: "$%.2f", scan.price))
                    .fontWeight(.bold)
            }
            .padding()
            
        }
}
