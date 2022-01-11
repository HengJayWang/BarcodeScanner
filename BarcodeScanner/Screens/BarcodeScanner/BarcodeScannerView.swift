//
//  ContentView.swift
//  BarcodeScanner
//
//  Created by M100-M1MacMini on 2021/12/30.
//

import SwiftUI

struct BarcodeScannerView: View {
    
    @StateObject private var viewModel = BarcodeScannerViewModel()
    
    var body: some View {
        NavigationView {
            VStack {
                ScannerView(scannedCode: $viewModel.scannedCode,
                            alertItem: $viewModel.alertItem)
                    .frame(maxHeight: 300)
                
                Spacer().frame(height: 60)
                
                Label("Scanned Barcode: ", systemImage: "barcode.viewfinder")
                    .font(.title)
                
                Text(viewModel.statusText)
                    .bold()
                    .font(.largeTitle)
                    .foregroundColor(viewModel.statusColor)
                    .padding()
            }
            .navigationTitle("📸 Barcode Scanner")
            .alert(item: $viewModel.alertItem) { alert in
                Alert(title: alert.title,
                      message: alert.message,
                      dismissButton: alert.dismissButton)
            }
        }
    }
}

struct BarcodeScannerView_Previews: PreviewProvider {
    static var previews: some View {
        BarcodeScannerView()
    }
}
