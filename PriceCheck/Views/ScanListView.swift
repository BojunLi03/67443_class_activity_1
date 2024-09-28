//
//  LocationView.swift
//  PriceCheck
//
//  Created by stomer10000 on 9/26/24.
//
import SwiftUI

struct ScanListView: View {
    let locationScans: [Location] = Bundle.main.decode([Location].self, from: "scan_api_data.json")

    var body: some View {
        NavigationView {
            List {
                ForEach(locationScans.sorted(by: { $0 < $1 })) { location in
                    LocationView(location: location)
                }
            }
            .navigationBarTitle("Scans")
        }
    }
}

struct ScanListView_Previews: PreviewProvider {
    static var previews: some View {
        ScanListView()
    }
}
