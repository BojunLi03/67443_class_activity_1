//
//  LocationView.swift
//  PriceCheck
//
//  Created by stomer10000 on 9/26/24.
//

import Foundation
import SwiftUI

struct LocationView: View {
    let location: Location

    var body: some View {
        Section(header: Text(location.name)) {
            ForEach(location.scans.sorted(by: { $0 < $1 })) { scan in
                NavigationLink(destination: ScanView(scan: scan)) {
                    Text(scan.item)
                }
            }
        }
    }
}

