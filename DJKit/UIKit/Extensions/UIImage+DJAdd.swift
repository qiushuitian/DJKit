//
//  UIImage+DJAdd.swift
//  Alamofire
//
//  Created by qiushuitian on 2018/9/19.
//

import UIKit

extension UIImage {
    public func dj_compress(with maxLength:Int = (250 * 1024)) -> Data {
        var compression:CGFloat = 1
        var data = UIImageJPEGRepresentation(self, compression)!
        
        if data.count < maxLength {
            return data
        }
        
        var max:CGFloat = 1
        var min:CGFloat = 0
        for var i in 0 ..< 6 {
            compression = (max + min) / 2
            data = UIImageJPEGRepresentation(self, compression)!
            if Double(data.count) < (Double(maxLength) * 0.9) {
                min = compression
            }else if data.count > maxLength {
                max = compression
            }else {
                break
            }
            i = i + 1
        }
        if data.count < maxLength {
            return data
        }

        var resultImage = UIImage(data: data)!
        var lastDataLength = 0
        while data.count > maxLength && data.count != lastDataLength {
            lastDataLength = data.count
            let ratio = CGFloat(maxLength) / CGFloat(data.count)
            let size = CGSize(width: resultImage.size.width * CGFloat(sqrtf(Float(ratio))),
                              height: resultImage.size.height * CGFloat(sqrtf(Float(ratio))))
            UIGraphicsBeginImageContext(size)
            resultImage.draw(in:CGRect(origin: CGPoint(x: 0, y: 0), size: size))
            resultImage = UIGraphicsGetImageFromCurrentImageContext()!
            UIGraphicsEndImageContext()
            data = UIImageJPEGRepresentation(resultImage, compression)!
        }
        return data
    
    }
}
