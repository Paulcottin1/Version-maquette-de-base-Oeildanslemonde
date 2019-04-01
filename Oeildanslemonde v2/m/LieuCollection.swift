//
//  LieuCollection.swift
//  Oeildanslemonde v2
//
//  Created by Paul Cottin on 14/03/2019.
//  Copyright © 2019 Paul Cottin. All rights reserved.
//

import UIKit

class LieuCollection {
    
    
    func all() -> [Lieu]{
        var Lieus: [Lieu] = []
        
        Lieus.append(Lieu(nom: "La Perla, San Juan, Porto Rico", desc: "Derrière ces superbes couleurs, La Perla garde un passé douloureux. C'est un ancien bidonville historique qui s'étend sur environ 600 m le long de la côte rocheuse de l’Atlantique.La Perla est née à la fin du 19ème siècle. À l'origine, la zone était le site d'un abattoir. Peu après, La Perla voit naitre les maisons d'anciens esclaves et de serviteurs non blancs sans abri car la loi leur imposai d'être installés hors des murs de la ville. Quelque temps après, des fermiers et des ouvriers ont commencé à vivre autour de l'abattoir et y ont bientôt installé leurs maisons..png", image: UIImage(named: "La Perla, San Juan, Porto Rico") ?? UIImage(), latitude: 18.468679, longitude: -66.115668 ))
        
        Lieus.append(Lieu(nom: "Le Mont Bromo au couché de soleil, Indonésie", desc: "Le mont Bromo, est un volcan en activité qui culmine à 2329m d'altitude. Ce volcan est situé au milieu d'une plaine appelée mer de sable, une réserve naturelle protégée depuis 1919. Il est possible de visiter le mont Bromo ! Le plus simple ? du village de montagne voisin de Cemoro Lawang.⠀", image: UIImage(named: "Le Mont Bromo au couché de soleil, Indonésie.png") ?? UIImage(), latitude: -7.940892, longitude: 112.949896))
        
        Lieus.append(Lieu(nom: "Les chutes de Ban Gioc, Chine  et Viêt Nam ", desc: "Les chutes de Ban Gioc sont les plus grandes chutes d'eau du Viêt Nam. 💦⠀D'une largeur de 100m, l'eau tombe d'une hauteur de 30m.⠀Et oui, Chine 🇨🇳 et Viêt Nam 🇨🇳! La frontière entre les deux pays passe au milieu de ces chutes et au milieu de la rivière. Curieusement, les chinois sont autorisés à traverser la rivière en barque pour se promener du côté vietnamien, mais les vietnamiens n'ont pas le droit de faire le contraire.⠀", image: UIImage(named: "Les chutes de Ban Gioc, Chine  et Viêt Nam .png") ?? UIImage(), latitude: 22.855636, longitude: 106.722582))
        
        
        Lieus.append(Lieu(nom: "Les Chutes de Dudhsagar, Inde", desc: "Une des cascades les plus pittoresques* du monde! Les Chutes de Dudhsagar, situées sur la côte Ouest de l'Inde, sont hautes 310 mètres, ceux sont les chutes d'eau les plus hautes en Inde.⠀", image: UIImage(named: "Les Chutes de Dudhsagar, Inde") ?? UIImage(), latitude: 15.314800, longitude: 74.314286))
        
        Lieus.append(Lieu(nom: "Ville côtière de Riomaggiore, Italie", desc: "Riaomaggiore est une superbe ville côtière dans le nord de l'italie 🇮🇹Connue pour ses maisons aux multiples couleurs, elle fait le bonheur des peintres qui ne cessent de la reproduire sur leurs toiles.", image: UIImage(named: "Ville côtière de Riomaggiore, Italie") ?? UIImage(), latitude: 44.098625, longitude: 9.737667))
        
        Lieus.append(Lieu(nom: "La cascade Háifoss, Islande", desc: "La cascade Háifoss est située au sud de l'Islande. La rivière Fossá, tombe d'une hauteur de 122 mètres, faisant de cette cascade la deuxième plus haute d'Islande.", image: UIImage(named: "La cascade Háifoss, Islande") ?? UIImage(), latitude: 64.208042, longitude: -19.686821))
        
        Lieus.append(Lieu(nom: "Le Mont Elbrouz", desc: "Situé dans le nord du Caucase, en Russie, Le Mont Elbrouz est le point culminant de cette chaîne de montagnes ; avec ses 5 642 mètres, il est le plus haut sommet de l'Europe. Il s'agit d'un volcan ayant connu des éruptions jusqu'au début de notre ère. Il est recouvert de nombreux glaciers. La faune et la flore étant relativement riches est protégées par un parc national depuis 1986.⠀", image: UIImage(named: "Le Mont Elbrouz") ?? UIImage(), latitude: 43.350311, longitude: 42.445330))
        
        Lieus.append(Lieu(nom: "Île de Flores, Indonésie ", desc: "L’île de Flores fait partie d’un archipel appelé « Petites Îles de la Sondes ». Son nom vient du portugais Flores qui signifie en français « Fleurs ». En effet, l’îles de Flores, longue de 360km de long, abrite une nature luxuriante.", image: UIImage(named: "Île de Flores, Indonésie ") ?? UIImage(), latitude: -8.507512, longitude: 121.100182))
        
        Lieus.append(Lieu(nom: "Ville de Göreme, Cappadoce, Turquie ", desc: "En 1985, l'UNESCO l'inscrit sur la liste des sites protégés du patrimoine de l'humanité.⠀Göreme, située parmi les formations rocheuses de cheminée de fée en Turquie, est une ville de la Cappadoce.⠀La Cappadoce est une région semi-aride du centre de la Turquie. Elle est réputée pour ses cheminées de fées caractéristiques, grandes formations rocheuses en forme de cônes⠀", image: UIImage(named: "Ville de Göreme, Cappadoce, Turquie ") ?? UIImage(), latitude: 38.645200, longitude: 34.832408))
        
        Lieus.append(Lieu(nom: "La cascade des 7 soeurs, Norvège", desc: "il s’agit de pas moins de sept chutes d’eau qui se précipitent en grondant.⠀L’eau, qui tombe de 250m de hauteur en moyenne, offre un spectacle impressionnant lorsque le débit est à son maximum, c’est-à-dire en mai-juin, à la période de la fonte des neiges.⠀", image: UIImage(named: "La cascade des 7 soeurs, Norvège") ?? UIImage(), latitude: 65.944759, longitude: 12.575426))
        
        
        return Lieus
        
        
    }
    
}

