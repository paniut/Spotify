//
//  ViewController.swift
//  Spotify Playback
//
//  Created by Szczepan Podulka on 20/04/2023.
//

import UIKit

class ViewController: UIViewController {
    
    let margin: CGFloat = 20
    let spacing: CGFloat = 32

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .black
        setupNavigationBar()
        setupViews()
    }

    func setupNavigationBar() {
        navigationItem.title = "Playback"
    }
    
    func setupViews() {
        
        let offlineLabel = makeLabel(withText: "Offline")
        let descriptionLabel = makeLabel(withText: "When you go offline, you'll only be able to play the music and podcasts you've downloaded")
        let crossFadeLabel = makeLabel(withText: "Crossfade")
    
        let minCrossFadeLabel = makeLabel(withText: "0s")
        let crossFadeProgressView = makeView(color: .yellow)
        let maxCrossFadeLabel = makeLabel(withText: "12s")
        
        let gaplessPlayback = makeLabel(withText: "Gapless Playback")
        let hideSongs = makeLabel(withText: "Hide Unplayable Songs")
        let enableAudio = makeLabel(withText: "Enable Audio Normalization")
        
        let firstButton = makeButton(withText: "1")
        let secondButton = makeButton(withText: "2")
        let thirdButton = makeButton(withText: "3")
        let fourthButton = makeButton(withText: "4")
        
        
    
        view.addSubview(offlineLabel)
        view.addSubview(descriptionLabel)
        view.addSubview(crossFadeLabel)
        view.addSubview(minCrossFadeLabel)
        view.addSubview(crossFadeProgressView)
        view.addSubview(maxCrossFadeLabel)
        view.addSubview(gaplessPlayback)
        view.addSubview(hideSongs)
        view.addSubview(enableAudio)
        view.addSubview(firstButton)
        view.addSubview(secondButton)
        view.addSubview(thirdButton)
        view.addSubview(fourthButton)
        
        NSLayoutConstraint.activate([
            
            offlineLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: margin),
            offlineLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: margin),
            
            firstButton.centerYAnchor.constraint(equalTo: offlineLabel.centerYAnchor),
            firstButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -margin),
            
            descriptionLabel.topAnchor.constraint(equalTo: offlineLabel.bottomAnchor, constant: margin),
            descriptionLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: margin),
            descriptionLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -margin),
            
            crossFadeLabel.topAnchor.constraint(equalTo: descriptionLabel.bottomAnchor, constant: spacing),
            crossFadeLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            
            minCrossFadeLabel.topAnchor.constraint(equalTo: crossFadeLabel.bottomAnchor, constant: spacing),
            minCrossFadeLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: margin),
            
            crossFadeProgressView.centerYAnchor.constraint(equalTo: minCrossFadeLabel.centerYAnchor),
            crossFadeProgressView.leadingAnchor.constraint(equalTo: minCrossFadeLabel.trailingAnchor, constant: 4),
            crossFadeProgressView.trailingAnchor.constraint(equalTo: minCrossFadeLabel.leadingAnchor, constant: -4),
            
            maxCrossFadeLabel.topAnchor.constraint(equalTo: crossFadeLabel.bottomAnchor, constant: spacing),
            maxCrossFadeLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -margin),
            
            gaplessPlayback.topAnchor.constraint(equalTo: minCrossFadeLabel.bottomAnchor, constant: spacing),
            gaplessPlayback.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: margin),
            
            secondButton.topAnchor.constraint(equalTo: gaplessPlayback.topAnchor),
            secondButton.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -margin),
            
            hideSongs.topAnchor.constraint(equalTo: gaplessPlayback.bottomAnchor, constant: spacing),
            hideSongs.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: margin),
            
            thirdButton.topAnchor.constraint(equalTo: hideSongs.topAnchor),
            thirdButton.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -margin),
            
            enableAudio.topAnchor.constraint(equalTo: hideSongs.bottomAnchor, constant: spacing),
            enableAudio.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: margin),
            
            fourthButton.topAnchor.constraint(equalTo: enableAudio.topAnchor),
            fourthButton.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -margin)
        ])

        }
    
    func makeLabel(withText text: String) -> UILabel {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = text
        label.textColor = .white
        
        return label
        
    }
    
    func makeButton(withText text: String) -> UIButton {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle(text, for: .normal)
        button.backgroundColor = .blue
        
        return button
    }

    func makeView(color: UIColor) -> UIView {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .red
        
        return view
    }
}

