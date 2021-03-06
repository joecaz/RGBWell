//
//  MainWindowController.swift
//  RGBWell
//
//  Created by joecaz on 6/1/17.
//  Copyright © 2017 Coyote Creek Software. All rights reserved.
//

import Cocoa

class MainWindowController: NSWindowController {
    
    var r = 0.0
    var g = 0.0
    var b = 0.0
    let a = 1.0
    
    @IBOutlet weak var rSlider: NSSlider!
    @IBOutlet weak var gSlider: NSSlider!
    @IBOutlet weak var bSlider: NSSlider!
    @IBOutlet weak var colorWell: NSColorWell!
    
    override var windowNibName: String? {
        return "MainWindowController"
    }
    
    override func windowDidLoad() {
        super.windowDidLoad()
        rSlider.doubleValue = r
        gSlider.doubleValue = g
        bSlider.doubleValue = b
        updateColor()
    }
    
    @IBAction func adjustRed(sender: NSSlider) {
        print("R slider value is \(sender.floatValue)")
        r = sender.doubleValue
        updateColor()
    }
    
    @IBAction func adjustGreen(sender: NSSlider) {
        print("G slider value is \(sender.floatValue)")
        g = sender.doubleValue
        updateColor()
   }
    
    @IBAction func adjustBlue(sender: NSSlider) {
        print("B slider value is \(sender.floatValue)")
        b = sender.doubleValue
        updateColor()
    }
    
    func updateColor() {
        let newColor = NSColor(calibratedRed: CGFloat(r),
                                       green: CGFloat(g),
                                        blue: CGFloat(b),
                                       alpha: CGFloat(a))
        
        colorWell.color = newColor
    }
}
