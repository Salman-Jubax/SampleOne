//
//  ViewController.swift
//  Trustly Demo
//
//  Created by M Salman Khan on 14/02/2021.
//

import UIKit
import TrustlyIosSdk
import WebKit

class ViewController: UIViewController
{
    var webView: WKWebView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
        // --- Multi-line string literal Mutation ---
         
        // Creating Substring
//        var mutableMultiLineString = """
//                                     # FaceTec Mobile SDK license
//                                     appId      = com.premier.*
//                                     expiryDate = 2021-04-10
//                                     key        = 003046022100fff3171ff23bd7bec34087390178ac6104e4af70415f253e885c5959e20bee1c022100d7667796eaf9d5cf29f5d87d6bbe180ec94c3330e380376c1a88fca3d6d02128
//                                     """
//
//        print(" \(mutableMultiLineString)")
        
        var mutableMultiLineString = """
                                     Hello AgnosticDev!
                                     I really enjoy tutorials.
                                     Especially Swift Tutorials!
                                     """
         
        let nonEqualMultiLineString = """
                                      Hello AgnosticDev!
                                      I really enjoy tutorials. Especially Swift Tutorials!
                                      """
        if mutableMultiLineString == nonEqualMultiLineString {
            print("Multi-line strings are equal!")
        } else
        {
            print("No, these are not equal strings because of the missing newline, even though both strings have the same length.")
            print("Length of mutableMultiLineString: \(mutableMultiLineString.count)")
            print("Length of nonEqualMultiLineString: \(nonEqualMultiLineString.count)")
        }
        
        let mainView = TrustlyWKWebView(checkoutUrl:
                "https://test.trustly.com/api/1", frame: self.view.bounds)

                self.view = mainView
    }


}

