//
//  WebView.swift
//  TravelApp
//
//  Created by Giorgi Samkharadze on 24.11.22.
//

import Foundation
import UIKit
import SwiftUI
import WebKit

struct WebView: UIViewRepresentable {
    
    typealias UIViewType = UIView
    
    func makeUIView(context: Context) -> UIView {
        let view = UIView()
        
        let webView = WKWebView()
        view.addSubview(webView)
        
        webView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            webView.widthAnchor.constraint(equalTo: view.widthAnchor),
            webView.heightAnchor.constraint(equalTo: view.heightAnchor),
            webView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            webView.centerYAnchor.constraint(equalTo: view.centerYAnchor)
            
        ])
        
        return view
    }
    
    func updateUIView(_ uiView: UIView, context: Context) {
        
    }
    
    
    
    
    let url = "https://www.viator.com/tours/Tbilisi/2-Days-Trip-to-West-Georgia-Caves-Canyons-Waterfalls/d22516-72451P6"
}
