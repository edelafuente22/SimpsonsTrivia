//
//  QuestionBank.swift
//  Simpsons Trivia
//
//  Created by Edward de la Fuente on 1/13/18.
//  Copyright © 2018 Edward de la Fuente. All rights reserved.
//

import Foundation

class QuestionBank{
    var qList = [Question]()
    
    init() {
        qList.append(Question(image: "steelmill.jpg", questionText: "What is the name of the club that the Ajax Steel Mill converts to at quitting time?", choiceA: "The Anvil", choiceB: "Mo's", choiceC: "The League Of Extra-Horny Gentlemen", choiceD: "Jax Steel Mill", answer: 1))
        qList.append(Question(image: "nelsonhuckleberries.jpg", questionText: "What is Nelson's suggestion for how to handle huckleberries that are too tart?", choiceA: "Drizzle honey on them", choiceB: "Mix in chocolate sprinkles", choiceC: "Dust them with confectioner's sugar", choiceD: "Huck them at cars", answer: 3))
        qList.append(Question(image: "crackerfactory.jpg", questionText: "What is the slogan of Southern Cracker, the factory that Kirk Van Houten used to work at?", choiceA: "The secret ingredient is salt", choiceB: "Deliciously dry", choiceC: "The dryyyyyy cracker", choiceD: "You CAN eat just one", answer: 3))
        qList.append(Question(image: "misshoover.jpg", questionText: "What is the first name of Miss Hoover, Lisa's teacher at Springfield Elementary?", choiceA: "Jane", choiceB: "Elizabeth", choiceC: "Edna", choiceD: "Agnes", answer: 2))
        qList.append(Question(image: "nachosflanders.jpg", questionText: "What ingredients does Ned Flanders use in his version of nachos?", choiceA: "Potato chips with Velveeta", choiceB: "Broccoli with salt", choiceC: "Crackers with tomatoes", choiceD: "Cucumbers with cottage cheese", answer: 4))
        qList.append(Question(image: "cult.jpg", questionText: "The Movementarians, the cult that the Simpsons join, aim to settle on which planet?", choiceA: "Euphoriana", choiceB: "Blisstonia", choiceC: "Equalia", choiceD: "Pluto", answer: 2))
        qList.append(Question(image: "lisaprez.jpg", questionText: "\"The President Wore Pearls,\" in which Lisa becomes class president, is a parody of which Broadway musical?", choiceA: "Evita", choiceB: "Chicago", choiceC: "The Music Man", choiceD: "Phantom of the Opera", answer: 1))
        qList.append(Question(image: "malibustacy.jpg", questionText: "What is the name of the doll Lisa designs to compete with Malibu Stacy?", choiceA: "Lisa the Brain", choiceB: "Lovely Lisa", choiceC: "Lisa Lionheart", choiceD: "Malibu Lisa", answer: 3))
        qList.append(Question(image: "musicbox.jpg", questionText: "What is the name of the ancient Egyptian artifact that Lisa and Homer discover to be a music box?", choiceA: "King Tut's Chest", choiceB: "The Sphere of Cairo", choiceC: "Egyptian Disco Ball", choiceD: "The Orb of Isis", answer: 4))
        qList.append(Question(image: "tonyhawk.jpg", questionText: "When an emancipated Bart moves to an urban loft, he discovers which punk band playing on the floor above him?", choiceA: "Social Distortion", choiceB: "NOFX", choiceC: "Pennywise", choiceD: "Blink-182", answer: 4))
        qList.append(Question(image: "sarasloane.jpg", questionText: "Sara Sloane, the Hollywood celebrity who becomes a love interest of Ned, is voiced by which Oscar-winning actress?", choiceA: "Marisa Tomei", choiceB: "Meryl Streep", choiceC: "Jodie Foster", choiceD: "Jennifer Lawrence", answer: 1))
        qList.append(Question(image: "lylelanley.jpg", questionText: "Monorail shyster Lyle Lanley gets his comeuppance after his flight to Tahiti makes a stop in which city?", choiceA: "Ogdenville", choiceB: "North Haverbrook", choiceC: "Brockway", choiceD: "Shelbyville", answer: 2))
        qList.append(Question(image: "cypresscreek.jpg", questionText: "When the Simpsons relocate to Cypress Creek, they move into a house on which street?", choiceA: "Globex Boulevard", choiceB: "Avenida de Elm", choiceC: "Maple Systems Road", choiceD: "Hank Scorpio Way", answer: 3))
        qList.append(Question(image: "luciusmoe.jpg", questionText: "How many rounds does Moe, as Homer's boxing manager, guarantee in Homer's bout against Drederick Tatum?", choiceA: "1", choiceB: "2", choiceC: "3", choiceD: "10", answer: 3))
        qList.append(Question(image: "secondhoneymoon.jpg", questionText: "What is the name of the airline Homer and Marge board for a flight to Miami and an impromptu second honeymoon?", choiceA: "Crazy Clown Airlines", choiceB: "Budget SkyBus", choiceC: "Suntan Airlines", choiceD: "United Airlines", answer: 3))
        qList.append(Question(image: "familyfeedbag.jpg", questionText: "When Moe decides to turn his bar into a family restaurant, he consults a book written by who?", choiceA: "T.G.I. Friday", choiceB: "Bennigan and Fuddrucker", choiceC: "Denny and Mimi", choiceD: "Ronald McDonald", answer: 2))
        qList.append(Question(image: "maisonderriere.jpg", questionText: "What is the name of the emcee Bart is asked to fill in for while working at the Maison Derriere?", choiceA: "Max Power", choiceB: "Trent Steele", choiceC: "Mel Zett", choiceD: "Hans Moleman", answer: 3))
        qList.append(Question(image: "lifelongdream.jpg", questionText: "Which of these is NOT a lifelong dream that Homer has achieved (and Marge has reminded him about)?", choiceA: "Run onto the field during a baseball game", choiceB: "Own the Denver Broncos", choiceC: "Eat the world's biggest hoagie", choiceD: "Appear on \"The Gong Show\"", answer: 2))
        qList.append(Question(image: "homerlurleen.jpg", questionText: "What is the name of the bar in which Homer meets aspiring country singer Lurleen Lumpkin?", choiceA: "Moe's Tavern", choiceB: "The Redneck Riviera", choiceC: "The Little Black Box", choiceD: "The Beer 'n' Brawl", answer: 4))
        qList.append(Question(image: "burnsbio.jpg", questionText: "What is the title of Mr. Burns' biography?", choiceA: "A Man And A Nuclear Plant", choiceB: "Bobo and Me", choiceC: "Will There Ever Be A Rainbow?", choiceD: "The Rich Man Cometh", answer: 3))
        qList.append(Question(image: "grammarrobot.jpg", questionText: "What is the name Lisa gives to the grammar robot she builds for her school science fair?", choiceA: "Linguo", choiceB: "The Oxford Comma", choiceC: "LanguageBot", choiceD: "Speak 'n' Say", answer: 1))
        qList.append(Question(image: "plowking.jpg", questionText: "Which musician does Barney team up with to record a commercial and jingle for the Plow King?", choiceA: "Carole King", choiceB: "Bette Midler", choiceC: "David Crosby", choiceD: "Linda Ronstadt", answer: 4))
        qList.append(Question(image: "trynsave.jpg", questionText: "What is the title of the video game that Bart steals from the Try-N-Save?", choiceA: "Lee Carvallo's Putting Challenge", choiceB: "Bonestorm", choiceC: "Bloodstorm", choiceD: "Bonesquad", answer: 2))
        qList.append(Question(image: "coreyhotline.jpg", questionText: "Which of these is NOT cited on teen heartthrob Corey's hotline as a word that rhymes with his name?", choiceA: "Story", choiceB: "Hunky-Dory", choiceC: "Allegory", choiceD: "Montessori", answer: 2))
        qList.append(Question(image: "partyposse.jpg", questionText: "Which of these is NOT a song sung by the Party Posse, Bart's boy band?", choiceA: "You're My Special Girl", choiceB: "Drop Da Bomb", choiceC: "No Strings Attached", choiceD: "Let's Re-Up Tonight", answer: 3))
        qList.append(Question(image: "sanitation.jpg", questionText: "During his campaign for sanitation commissioner, Homer crashes a concert by which band?", choiceA: "Pearl Jam", choiceB: "U2", choiceC: "R.E.M.", choiceD: "Smashing Pumpkins", answer: 2))
        qList.append(Question(image: "happysmile.jpg", questionText: "What is the name of the host of the game show the Simpsons appear on during their trip to Japan?", choiceA: "Skip", choiceB: "Wink", choiceC: "Chuck", choiceD: "Bob", answer: 2))
        qList.append(Question(image: "curfew.jpg", questionText: "What is the name of the movie the kids of Springfield sneak off to see during a city-wide curfew?", choiceA: "The Shinning", choiceB: "Honk If You're Horny", choiceC: "The Bus That Wouldn't Slow Down", choiceD: "The Bloodening", answer: 4))
        qList.append(Question(image: "nessie.jpg", questionText: "Which character does NOT accompany Mr. Burns on his quest to capture the Loch Ness Monster?", choiceA: "Homer", choiceB: "Groundskeeper Willie", choiceC: "Smithers", choiceD: "Professor Frink", answer: 3))
    }
    
}
