//
//  ProgressBarViewController.swift
//  ProgressBar
//
//  Created by Pawan  on 18/11/2020.
//

import UIKit

class ProgressBarViewController: UIViewController, UIScrollViewDelegate {

    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var image: UIImageView!
    
    
   @IBOutlet weak var pBar: UIProgressView!
    var value : Float = 0.0
    var timer : Timer!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        scrollView.delegate = self
        scrollView.minimumZoomScale = 1.0
        scrollView.maximumZoomScale = 5.0
        
    }
    
    func viewForZooming(in scrollView: UIScrollView) -> UIView? {
        return image
    }
    
    @objc func updateBar() {
        value = value + 0.01
        pBar.setProgress(value, animated: true)
    }
    
    @objc func resetBar() {
        value =  0.01
        pBar.setProgress(value, animated: true)
    }
    
    @IBAction func gifTappedButton(_ sender: UIButton) {
        timer = Timer.scheduledTimer(timeInterval: 0.01, target: self, selector: #selector(updateBar), userInfo: nil, repeats: true)
    }
    
    @IBAction func resetTappedButton(_ sender: UIButton) {
        timer = Timer.scheduledTimer(timeInterval: 0.01, target: self, selector: #selector(resetBar), userInfo: nil, repeats: true)
    }
}
