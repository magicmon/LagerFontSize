//
//  TestUILabelViewController.swift
//  LagerFontSize
//
//  Created by Taewoo Kang on 05/11/2019.
//  Copyright © 2019 magicmon. All rights reserved.
//

import UIKit

class TestUILabelViewController: UIViewController {

    @IBOutlet private weak var title1Label: UILabel!
    @IBOutlet private weak var headlineLabel: UILabel!
    @IBOutlet private weak var bodyLabel: UILabel!
    @IBOutlet private weak var footnoteLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title1Label.adjustsFontForContentSizeCategory = true
        headlineLabel.adjustsFontForContentSizeCategory = true
        bodyLabel.adjustsFontForContentSizeCategory = true
        footnoteLabel.adjustsFontForContentSizeCategory = true
        
        configureFonts()
    }
    
    override func traitCollectionDidChange(_ previousTraitCollection: UITraitCollection?) {
        configureFonts()
    }
    
    func configureFonts() {
        title1Label.font = UIFont.preferredFont(forTextStyle: .title1)
        headlineLabel.font = UIFont.preferredFont(forTextStyle: .headline)
        bodyLabel.font = UIFont.preferredFont(forTextStyle: .body)
        footnoteLabel.font = UIFont.preferredFont(forTextStyle: .footnote)
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        title1Label.text = "title1 \(title1Label.font.pointSize)"
        headlineLabel.text = "headline \(headlineLabel.font.pointSize)"
        bodyLabel.text = "body \(bodyLabel.font.pointSize)"
        footnoteLabel.text = "footnote \(footnoteLabel.font.pointSize)"
    }
}
