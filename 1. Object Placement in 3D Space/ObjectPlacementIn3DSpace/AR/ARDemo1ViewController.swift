//
//  ARDemo1ViewController.swift
//  ObjectPlacementin3DSpace
//
//  Created by Kushal Rajbhandari on 11/29/17.
//  Copyright © 2017 Kushal Rajbhandari. All rights reserved.
//

import UIKit
import ARKit
import SceneKit

class ARDemo1ViewController: UIViewController,ARSCNViewDelegate {
    
    var object = "text"

    @IBOutlet weak var sceneView: ARSCNView!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "AR using 3D Text"
            // Set the view's delegate
            sceneView.delegate = self
            
            let textToDisplay = SCNText(string: "Kushal Rajbhandari", extrusionDepth: 2)
            
            let textMaterial = SCNMaterial()
            textMaterial.diffuse.contents = #colorLiteral(red: 0.1327495873, green: 0.4650404453, blue: 0.7308306098, alpha: 1)
            textToDisplay.materials = [textMaterial]
            
            let textNode = SCNNode()
            textNode.position = SCNVector3(x:-0.05, y:-0.05, z:-0.5)
            textNode.scale = SCNVector3(x:0.01, y:0.01, z:0.01)
            textNode.geometry = textToDisplay
            
            sceneView.scene.rootNode.addChildNode(textNode)
            sceneView.autoenablesDefaultLighting = true
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("View will appear reached")
        // Create a session configuration
        let configuration = ARWorldTrackingConfiguration()
        
        // Run the view's session
        sceneView.session.run(configuration)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
        // Pause the view's session
        sceneView.session.pause()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Release any cached data, images, etc that aren't in use.
    }
    
    // MARK: - ARSCNViewDelegate
    
    /*
     // Override to create and configure nodes for anchors added to the view's session.
     func renderer(_ renderer: SCNSceneRenderer, nodeFor anchor: ARAnchor) -> SCNNode? {
     let node = SCNNode()
     
     return node
     }
     */
    
    func session(_ session: ARSession, didFailWithError error: Error) {
        // Present an error message to the user
        
    }
    
    func sessionWasInterrupted(_ session: ARSession) {
        // Inform the user that the session has been interrupted, for example, by presenting an overlay
        
    }
    
    func sessionInterruptionEnded(_ session: ARSession) {
        // Reset tracking and/or remove existing anchors if consistent tracking is required
        
    }

    
}
