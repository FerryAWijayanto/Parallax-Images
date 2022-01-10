//
//  ParallaxCell.swift
//  Parallax Images
//
//  Created by Ferry Adi Wijayanto on 10/01/22.
//

import UIKit

class ParallaxCell: UITableViewCell {
    
    @IBOutlet weak var itemImageView: UIImageView!
    @IBOutlet weak var descriptionLabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        
        setupParallax()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func configure(image: ImageItem) {
        itemImageView.image = UIImage(named: image.imageName)!
        descriptionLabel.text = image.description
    }
    
    private func setupParallax() {
        let min = CGFloat(-30)
        let max = CGFloat(30)
        
        let xMotion = UIInterpolatingMotionEffect(keyPath: "layer.transform.translation.x", type: .tiltAlongHorizontalAxis)
        xMotion.minimumRelativeValue = min
        xMotion.maximumRelativeValue = max
        
        let yMotion = UIInterpolatingMotionEffect(keyPath: "layer.transform.translation.y", type: .tiltAlongHorizontalAxis)
        yMotion.minimumRelativeValue = min
        yMotion.maximumRelativeValue = max
        
        let effectGroup = UIMotionEffectGroup()
        effectGroup.motionEffects = [xMotion, yMotion]
        
        itemImageView.addMotionEffect(effectGroup)
    }

}
