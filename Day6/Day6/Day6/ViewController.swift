//
//  ViewController.swift
//  Day6
//
//  Created by Hongdonghyun on 2019/10/19.
//  Copyright © 2019 hongdonghyun. All rights reserved.
//

import UIKit
import WebKit
import AVFoundation

class ViewController: UIViewController {

    @IBOutlet weak var webview: WKWebView!
    var captureSession = AVCaptureSession()
    let photoOutput = AVCapturePhotoOutput()
    
    func setupSession() {
        captureSession.beginConfiguration()
        let videoDevice = AVCaptureDevice.default(.builtInWideAngleCamera,
                                                  for: .video, position: .back)
        guard let videoDeviceInput = try? AVCaptureDeviceInput(device: videoDevice!),
            captureSession.canAddInput(videoDeviceInput)
            else { return }
        captureSession.addInput(videoDeviceInput)
        guard captureSession.canAddOutput(photoOutput) else { return }
        captureSession.sessionPreset = .high
        captureSession.addOutput(photoOutput)
        captureSession.commitConfiguration()
    }
    override func viewDidLoad() {
        super.viewDidLoad()
    }


}

