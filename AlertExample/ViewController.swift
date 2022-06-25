//
//  ViewController.swift
//  AlertExample
//
//  Created by 김종권 on 2020/11/28.
//

import UIKit
import Photos

class ViewController: UIViewController {
    
    var auth: String?

    override func viewDidLoad() {
        super.viewDidLoad()
        UserDefaults.standard.bool(forKey: "Camera")
        print(UserDefaults.standard.bool(forKey: "Camera"))
        
        
        
    }
    

    @IBAction func btn(_ sender: Any) {
        if(UserDefaults.standard.bool(forKey: "Camera")) == false
        {
        //VZStorage
        AVCaptureDevice.requestAccess(for: .video, completionHandler: { (granted: Bool) in
            if granted {
                print("Camera: 권한 허용")
            } else {
                print("Camera: 권한 거부")
            }
        })
        }
        
        
        
        /*
        PHPhotoLibrary.requestAuthorization( { status in
                    switch status{
                    case .authorized:
                        print("Gallery: 권한 허용")
                    case .denied:
                        print("Gallery: 권한 거부")
                    case .restricted, .notDetermined:
                        print("Gallery: 선택하지 않음")
                    default:
                        break
                    }
                })
          */
        
        
        
        
        /*

        switch auth {
        case "Camera":
            let vc = DialogBuilder.serverErrorDialog()
            present(vc, animated: true)
            
            AVCaptureDevice.requestAccess(for: .video, completionHandler: { (granted: Bool) in
                if granted {
                    //self.auth = "allow";
                    print("Camera: 권한 허용")
                    //self.auth = "Gallery"
                } else {
                    print("Camera: 권한 거부")
                    
                }
            }
            )
            print("Camera: 권한 거부")
            self.auth = "Gallery"
            fallthrough
        case "Gallery":
            let vc = DialogBuilder.serverErrorDialog()
            present(vc, animated: true)
            print("ddd")
            fallthrough

        default:
            break;
            
        }
 */
        
        /*
            switch auth {
            case "Cameara":
                //auth =
                

            case "Gallery":
                */
        /*
        



        
            let vc = DialogBuilder.serverErrorDialog()
            present(vc, animated: true)
            
            }
    */
    }

}
