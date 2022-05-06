//
//  GifImage.swift
//  Audio
//
//  Created by Philip Lee on 2022/4/22.
//

import SwiftUI
import WebKit

class FullScreenWKWebView: WKWebView {
    override var safeAreaInsets: UIEdgeInsets {
        return UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
    }
}

struct GifImage: UIViewRepresentable {
    private let name: String
    
    init(_ name: String) {
        self.name = name
    }
    
    func makeUIView(context: Context) -> WKWebView {
//        let webView = WKWebView()
        let webView = FullScreenWKWebView()
        let url = Bundle.main.url(forResource: name, withExtension: "gif")!
        let data = try! Data(contentsOf: url)
        
        webView.load(data, mimeType: "image/gif", characterEncodingName: "UTF-8", baseURL: url.deletingLastPathComponent())
        
        webView.scrollView.isScrollEnabled = false
        webView.backgroundColor = .clear
        webView.isOpaque = false
        
        return webView
    }
    func updateUIView(_ uiView: WKWebView, context: Context) {
        uiView.reload()
    }
    
    
}

struct GifImage_Previews: PreviewProvider {
    static var previews: some View {
        GifImage("M-gif2")
    }
}
