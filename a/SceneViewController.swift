//
//  SceneViewController.swift
//  a
//
//  Created by Matthew Hammond on 06/11/2017.
//  Copyright © 2017 Matthew Hammond. All rights reserved.
//

import Foundation
import UIKit
import SceneKit

class SceneViewController: UIViewController {
    
    @IBOutlet weak var sceneView: SCNView!
    weak var cameraNode: SCNNode?
    
    var arController = ARController?
    
    
    
    var trackableNodes = [SCNNode]()
    var contextWidth: Int = 0
    var contextHeight: Int = 0
    var contextRotate90: Bool = true
    var contextFlipH: Bool = true
    var contextFlipV: Bool = true
    var contextWasUpdated: Bool = true
    var viewport = [__int32_t](repeating: __int32_t(), count: 4)
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.sceneView.delegate = self
        self.sceneView.scene = createScene()
        self.sceneView.rendersContinuously = true
        
        self.setupAR()
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        contextWidth = Int(UIScreen.main.nativeBounds.width)
        contextHeight = Int(UIScreen.main.nativeBounds.height)
        
        switch UIApplication.shared.statusBarOrientation {
        case .landscapeLeft:
            contextRotate90 = false
            contextFlipH = true
            contextFlipV = true
        case .portraitUpsideDown:
            contextRotate90 = true
            contextFlipH = true
            contextFlipV = true
        case .landscapeRight:
            contextRotate90 = false
            contextFlipH = false
            contextFlipV = false
        case .portrait, .unknown:
            fallthrough
        default:
            contextRotate90 = true
            contextFlipH = false
            contextFlipV = false
        }
        contextWasUpdated = true
    }

    func setupTrackable() {
        // Here we will add all of the trackables
    }
    
    func createScene() -> SCNScene {
        let scene = SCNScene()
        let cameraNode = SCNNode()
        
        cameraNode.camera = SCNCamera()
        cameraNode.position = SCNVector3Make(0, 0, 10)
        scene.rootNode.addChildNode(cameraNode)
        
        self.cameraNode = cameraNode
        self.trackableNodes = []
        
        return SCNScene()
    }
    
    func setupAR() {
        let vconf = "-preset=720p"

        EAGLContext.setCurrent(sceneView.eaglContext)

//        arController = new; ARController()
//
//        if !arController.initialiseBase() {
//            ARLOGe("Error initialising ARController.")
//            return
//        }
//        if SO_DEBUG {
//            var buf = [Character](repeating: 0, count: Int(MAXPATHLEN))
//            ARLOGe("CWD is '%s'.", getcwd(buf, MemoryLayout<buf>.size))
//        }
    }
        
    func setupTrackables() {
//        Start tracking.
//        arController.startRunning()(vconf, nil, nil, 0)
    }
    
    func tearDownAR() {
//        if arController {
//            arController.displayFrameFinal(0)
//            arController.shutdown()
//            arController = delete()
//        }
    }
    

}

extension SceneViewController: SCNSceneRendererDelegate {
//    var arController = ARController?
    
}
