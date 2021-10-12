//
//  ViewController.swift
//  CoreGraphicsPractice2
//
//  Created by Caroline LaDouce on 10/5/21.
//

import UIKit
import CoreMotion

class ViewController: UIViewController {
    
    let shape1 = Shape1()
    let shape2 = Shape2()
    
    // Acceleration & rotation variables:
    var xAcceleration: Double = 0.0
    var yAcceleration: Double = 0.0
    var zAcceleration: Double = 0.0
    var xRotation: Double = 0.0
    var yRotation: Double = 0.0
    var zRotation: Double = 0.0
    
    let motionManager = CMMotionManager()
    
    // Display labels:
    var xAccelerationLabel = UILabel()
    var yAccelerationLabel = UILabel()
    var zAccelerationLabel = UILabel()
    var xRotationLabel = UILabel()
    var yRotationLabel = UILabel()
    var zRotationLabel = UILabel()
    
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let view = UIView()
        view.backgroundColor = UIColor.orange
        
        view.addSubview(xAccelerationLabel)
        xAccelerationLabel.text = "X Acceleration: \(xAcceleration)"
        xAccelerationLabel.translatesAutoresizingMaskIntoConstraints = false
        xAccelerationLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        xAccelerationLabel.topAnchor.constraint(equalTo: view.centerYAnchor, constant: -300).isActive = true
        
        view.addSubview(yAccelerationLabel)
        yAccelerationLabel.text = "Y Acceleration: \(yAcceleration)"
        yAccelerationLabel.translatesAutoresizingMaskIntoConstraints = false
        yAccelerationLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        yAccelerationLabel.topAnchor.constraint(equalTo: view.centerYAnchor, constant: -200).isActive = true
        
        view.addSubview(zAccelerationLabel)
        zAccelerationLabel.text = "Z Acceleration: \(zAcceleration)"
        zAccelerationLabel.translatesAutoresizingMaskIntoConstraints = false
        zAccelerationLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        zAccelerationLabel.topAnchor.constraint(equalTo: view.centerYAnchor, constant: -100).isActive = true
        
        view.addSubview(xRotationLabel)
        xRotationLabel.text = "X Rotation: \(xRotation)"
        xRotationLabel.translatesAutoresizingMaskIntoConstraints = false
        xRotationLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        xRotationLabel.topAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        
        view.addSubview(yRotationLabel)
        yRotationLabel.text = "Y Rotation: \(yRotation)"
        yRotationLabel.translatesAutoresizingMaskIntoConstraints = false
        yRotationLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        yRotationLabel.topAnchor.constraint(equalTo: view.centerYAnchor, constant: 100).isActive = true
        
        view.addSubview(zRotationLabel)
        zRotationLabel.text = "Z Rotation: \(zRotation)"
        zRotationLabel.translatesAutoresizingMaskIntoConstraints = false
        zRotationLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        zRotationLabel.topAnchor.constraint(equalTo: view.centerYAnchor, constant: 200).isActive = true
        
        
        
        // Set motion manager properties
        motionManager.accelerometerUpdateInterval = 1
        motionManager.gyroUpdateInterval = 1
        
        motionManager.startAccelerometerUpdates()
        motionManager.startGyroUpdates()
        
        Timer.scheduledTimer(withTimeInterval: 1, repeats: true) { _ in
            if let data = self.motionManager.accelerometerData {
                self.xAcceleration = data.acceleration.x
                self.yAcceleration = data.acceleration.y
                self.zAcceleration = data.acceleration.z
                
                self.xAccelerationLabel.text = "X Acceleration: \(self.xAcceleration)"
                self.yAccelerationLabel.text = "Y Acceleration: \(self.yAcceleration)"
                self.zAccelerationLabel.text = "Z Acceleration: \(self.zAcceleration)"
            }
            
            if let gyroData = self.motionManager.gyroData {
                self.xRotation = gyroData.rotationRate.x
                self.yRotation = gyroData.rotationRate.y
                self.zRotation = gyroData.rotationRate.z
                
                self.xRotationLabel.text = "X Rotation: \(self.xRotation)"
                self.yRotationLabel.text = "Y Rotation: \(self.yRotation)"
                self.zRotationLabel.text = "Z Rotation: \(self.zRotation)"
            }
            
        }
        
        
        //        // Setup shape1
        //        view.addSubview(shape1)
        //        shape1.backgroundColor = UIColor.clear
        //        shape1.translatesAutoresizingMaskIntoConstraints = false
        //
        //        // Constraints
        //        shape1.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        //        shape1.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        //        shape1.widthAnchor.constraint(equalToConstant: 100).isActive = true
        //        shape1.heightAnchor.constraint(equalToConstant: 200).isActive = true
        
        
        //        // Setup shape2
        //        view.addSubview(shape2)
        //        shape2.showShape2(show: true)
        //        //shape2.backgroundColor = UIColor.clear
        //        shape2.translatesAutoresizingMaskIntoConstraints = false
        //
        //        // Constraints
        //        shape2.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        //        shape2.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        //        //        shape2.bottomAnchor.constraint(equalTo: shape1.topAnchor, constant: 50).isActive = true
        //        shape2.widthAnchor.constraint(equalToConstant: 100).isActive = true
        //        shape2.heightAnchor.constraint(equalToConstant: 200).isActive = true
        //        shape2.contentMode = .scaleAspectFit
        //
        
        self.view = view
    } // End viewDidLoad
    
    
    func updateLabels() {
        
    }
    
    
    
}

