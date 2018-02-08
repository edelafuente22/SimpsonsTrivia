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
        // GENERAL
        qList.append(Question(image: "misshoover.jpg", questionText: "What is the first name of Miss Hoover, Lisa's teacher at Springfield Elementary?", choiceA: "Jane", choiceB: "Elizabeth", choiceC: "Edna", choiceD: "Agnes", answer: 2))
        qList.append(Question(image: "lifelongdream.jpg", questionText: "Which of these is NOT a lifelong dream that Homer has achieved (and Marge has reminded him about)?", choiceA: "Run onto the field during a baseball game", choiceB: "Own the Denver Broncos", choiceC: "Eat the world's biggest hoagie", choiceD: "Appear on \"The Gong Show\"", answer: 2))
        qList.append(Question(image: "fattony.jpg", questionText: "Fat Tony is voiced by which actor?", choiceA: "Al Pacino", choiceB: "Joe Mantegna", choiceC: "Andy Garcia", choiceD: "Benicio del Toro", answer: 2))
        qList.append(Question(image: "troymcclure.jpg", questionText: "Which of these is NOT a movie Troy McClure has starred in?", choiceA: "The Greatest Story Ever Hula-ed", choiceB: "The Verdict Was Mail Fraud", choiceC: "Dial M For Murderousness", choiceD: "McBain 4: Fatal Discharge", answer: 4))
        qList.append(Question(image: "margeruth.jpg", questionText: "Which of these activities has Marge NOT done with neighbor Ruth Powers?", choiceA: "Watch a demolition derby", choiceB: "Shoot guns", choiceC: "Enter a bodybuilding contest", choiceD: "Attend an opera", answer: 1))
        qList.append(Question(image: "sherriterri.jpg", questionText: "What is the last name of twin sisters Sherri and Terri?", choiceA: "Mackleberry", choiceB: "Boberry", choiceC: "McErrey", choiceD: "Gary", answer: 1))
        qList.append(Question(image: "documentarian.jpg", questionText: "What is the name of the film director who has made documentaries about Springfield's residents?", choiceA: "Blair Rottenberry", choiceB: "Nigel Pennyfeather", choiceC: "Declan Desmond", choiceD: "Desmond Kensington", answer: 3))
        qList.append(Question(image: "jaysherman.jpg", questionText: "Which of these characters is NOT voiced by Jon Lovitz?", choiceA: "Jay Sherman", choiceB: "Garth Motherloving", choiceC: "Llewelyn Sinclair", choiceD: "Artie Ziff", answer: 2))
        qList.append(Question(image: "sideshowmel.jpg", questionText: "Which Ivy League school did Sideshow Mel attend?", choiceA: "Cornell", choiceB: "Harvard", choiceC: "Brown", choiceD: "Dartmouth", answer: 1))
        qList.append(Question(image: "judgeharm.jpg", questionText: "Judge Constance Harm is voiced by which actress?", choiceA: "Glenn Close", choiceB: "Patricia Heaton", choiceC: "Jane Kaczmarek", choiceD: "Jane Krakowski", answer: 3))
        qList.append(Question(image: "hsprincipal.jpg", questionText: "What is the last name of Springfield High School's principal during the period that Homer and Marge were students?", choiceA: "Peterson", choiceB: "Dondelinger", choiceC: "Chalmers", choiceD: "Pennyfeather", answer: 2))
        qList.append(Question(image: "carlcarlson.jpg", questionText: "Carl Carlson spent his childhood in which European country?", choiceA: "Ireland", choiceB: "Iceland", choiceC: "Albania", choiceD: "Luxembourg", answer: 2))
        qList.append(Question(image: "krabappel.jpg", questionText: "Which of these characters has Edna Krabappel NOT dated?", choiceA: "Comic Book Guy", choiceB: "Superintendent Chalmers", choiceC: "Ned Flanders", choiceD: "Principal Skinner", answer: 2))
        qList.append(Question(image: "author.jpg", questionText: "Which famous author has made several \"Simpsons\" appearances, always depicted with a bag on his head?", choiceA: "Thomas Pynchon", choiceB: "J.D. Salinger", choiceC: "Tom Wolfe", choiceD: "Michael Crichton", answer: 1))
        qList.append(Question(image: "wiggumwife.jpg", questionText: "What is the first name of Chief Wiggum's wife?", choiceA: "Sarah", choiceB: "Selma", choiceC: "Helen", choiceD: "Jane", answer: 1))
        
        // SEASON 2
        qList.append(Question(image: "hooverlyme.jpg", questionText: "Lisa's teacher, Miss Hoover, took an extended leave of absence because she thought she had which ailment?", choiceA: "Lyme disease", choiceB: "Flesh-eating bacteria", choiceC: "Severe butt-rot", choiceD: "Ebola virus", answer: 1))
        
        // SEASON 3
        qList.append(Question(image: "homerlurleen.jpg", questionText: "What is the name of the bar in which Homer meets aspiring country singer Lurleen Lumpkin?", choiceA: "Moe's Tavern", choiceB: "The Redneck Riviera", choiceC: "The Little Black Box", choiceD: "The Beer 'n' Brawl", answer: 4))
        qList.append(Question(image: "michaeljackson.jpg", questionText: "Michael Jackson was credited for his guest appearance in \"Stark Raving Dad\" under which pseudonym?", choiceA: "Jack Michaels", choiceB: "Alan Smithee", choiceC: "John Jay Smith", choiceD: "John Doe", answer: 3))
        qList.append(Question(image: "softball.jpg", questionText: "Which Major League Baseball player was NOT a member of Mr. Burns' power plant softball team?", choiceA: "Darryl Strawberry", choiceB: "Eddie Murray", choiceC: "Steve Sax", choiceD: "Mike Scioscia", answer: 2))
        
        // SEASON 4
        qList.append(Question(image: "lylelanley.jpg", questionText: "Monorail shyster Lyle Lanley gets his comeuppance after his flight to Tahiti makes a stop in which city?", choiceA: "Ogdenville", choiceB: "North Haverbrook", choiceC: "Brockway", choiceD: "Shelbyville", answer: 2))
        qList.append(Question(image: "plowking.jpg", questionText: "Which musician does Barney team up with to record a commercial and jingle for the Plow King?", choiceA: "Carole King", choiceB: "Bette Midler", choiceC: "David Crosby", choiceD: "Linda Ronstadt", answer: 4))
        qList.append(Question(image: "coreyhotline.jpg", questionText: "Which of these is NOT cited on teen heartthrob Corey's hotline as a word that rhymes with his name?", choiceA: "Story", choiceB: "Hunky-Dory", choiceC: "Allegory", choiceD: "Montessori", answer: 2))
        qList.append(Question(image: "britishsmiles.jpg", questionText: "Which of Springfield's children is subjected to reading \"The Big Book of British Smiles\"?", choiceA: "Lisa", choiceB: "Ralph", choiceC: "Martin", choiceD: "Nelson", answer: 2))
        qList.append(Question(image: "drnick.jpg", questionText: "Dr. Nick Riviera advertises that he can perform any surgery for what price?", choiceA: "$5", choiceB: "$99.99", choiceC: "$129.95", choiceD: "$2,000", answer: 3))
        qList.append(Question(image: "mediocrepresidents.jpg", questionText: "When Springfield Elementary hosts a Presidents Day pageant, what part does Milhouse play?", choiceA: "George Washington", choiceB: "Abraham Lincoln", choiceC: "John Wilkes Booth", choiceD: "William Henry Harrison", answer: 2))
        qList.append(Question(image: "kampkrusty.jpg", questionText: "Where does Krusty take the kids of Kamp Krusty to make up for the poor conditions they endured?", choiceA: "Disneyland", choiceB: "San Francisco", choiceC: "Tijuana, Mexico", choiceD: "Cape Canaveral", answer: 3))
        qList.append(Question(image: "littlemissspringfield.jpg", questionText: "Lisa finishes as runner-up in the Little Miss Springfield pageant to whom?", choiceA: "Amber Dempsey", choiceB: "Jessica Lovejoy", choiceC: "Allison Taylor", choiceD: "Greta Wolfcastle", answer: 1))
        qList.append(Question(image: "eurocartoon.jpg", questionText: "What is the name of the replacement cartoon that Krusty airs after \"Itchy and Scratchy\" moved to the Gabbo Show?", choiceA: "\"Vlad and Stumpy\"", choiceB: "\"Yuri and the Cat\"", choiceC: "\"Worker and Parasite\"", choiceD: "\"Three from Prostokvashino\"", answer: 3))
        qList.append(Question(image: "margestatue.jpg", questionText: "When Springfield unveils a statue of Marge, it is a repurposed statue of which president?", choiceA: "Ronald Reagan", choiceB: "Gerald Ford", choiceC: "George H.W. Bush", choiceD: "Jimmy Carter", answer: 4))
        qList.append(Question(image: "selmachild.jpg", questionText: "Selma decides she wants a child after seeing the video will of which deceased relative?", choiceA: "Grandma Bouvier", choiceB: "Great Aunt Gladys", choiceC: "Cousin Hortense", choiceD: "Aunt Marjorina", answer: 2))
        qList.append(Question(image: "moonwaffles.jpg", questionText: "Which of these ingredients was NOT in Homer's \"patented space-age moon waffles\"?", choiceA: "Waffle batter", choiceB: "Chocolate chips", choiceC: "Caramels", choiceD: "Liquid smoke", answer: 2))
        qList.append(Question(image: "nedstreetcar.jpg", questionText: "Which character did Ned play in the production \"Oh, Streetcar!\"?", choiceA: "Steve", choiceB: "Stanley", choiceC: "Mitch", choiceD: "Pablo", answer: 2))
        qList.append(Question(image: "johnwilkesbooth.jpg", questionText: "Which character says the line, \"Do you want to play John Wilkes Booth or do you want to act like a maniac?\"?", choiceA: "Principal Skinner", choiceB: "Mrs. Krabappel", choiceC: "Miss Hoover", choiceD: "Marge", answer: 3))
        qList.append(Question(image: "whackingday.jpg", questionText: "Which singer is invited to open Springfield's Whacking Day festivities, but leaves in disgust?", choiceA: "Barry White", choiceB: "Isaac Hayes", choiceC: "Elton John", choiceD: "James Brown", answer: 1))
        qList.append(Question(image: "margejob.jpg", questionText: "What household issue prompts Marge to get a job at the Springfield Nuclear Power Plant?", choiceA: "Flooded basement", choiceB: "Hole in the roof", choiceC: "Unhinged garage door", choiceD: "Sinking foundation", answer: 4))
        qList.append(Question(image: "quimbynimoy.jpg", questionText: "Mayor Quimby mistakenly believed that Leonard Nimoy was a star on which program?", choiceA: "The Little Rascals", choiceB: "The Three Stooges", choiceC: "Gunsmoke", choiceD: "Doctor Who", answer: 1))
        
        // SEASON 5
        qList.append(Question(image: "malibustacy.jpg", questionText: "What is the name of the doll Lisa designs to compete with Malibu Stacy?", choiceA: "Lisa the Brain", choiceB: "Lovely Lisa", choiceC: "Lisa Lionheart", choiceD: "Malibu Lisa", answer: 3))
        qList.append(Question(image: "bartkrusty.jpg", questionText: "What type of pastry does Bart steal from Kent Brockman to give to Krusty?", choiceA: "Donut", choiceB: "Scone", choiceC: "Danish", choiceD: "Pound Cake", answer: 3))
        qList.append(Question(image: "molloy.jpg", questionText: "Which actor provides the voice of Molloy, the charming burglar in the episode \"Homer The Vigilante\"?", choiceA: "Liam Neeson", choiceB: "Sam Neill", choiceC: "Kelsey Grammer", choiceD: "Gary Oldman", answer: 2))
        qList.append(Question(image: "besharps.jpg", questionText: "What is the name of the real-life barbershop quartet that provides the singing voices of the Be Sharps?", choiceA: "The Cee Sharps", choiceB: "The Dapper Dans", choiceC: "The In-Tune Quartet", choiceD: "Men At Work", answer: 2))
        qList.append(Question(image: "nerds.jpg", questionText: "Which of these is NOT the name of one of the \"nerds\" who tutor Homer in college?", choiceA: "Benjamin", choiceB: "Doug", choiceC: "Gene", choiceD: "Gary", answer: 3))
        qList.append(Question(image: "burnsbirthday.jpg", questionText: "Which country's citizens spell Mr. Burns' name with candles for his birthday?", choiceA: "Canada", choiceB: "France", choiceC: "Russia", choiceD: "Australia", answer: 4))
        qList.append(Question(image: "homergambling.jpg", questionText: "Homer gets a job at Mr. Burns' casino as a dealer for which game?", choiceA: "Roulette", choiceB: "Blackjack", choiceC: "Poker", choiceD: "Craps", answer: 2))
        qList.append(Question(image: "apufired.jpg", questionText: "Which actor is hired to work at the Kwik-E-Mart after Apu is fired?", choiceA: "Jeff Goldblum", choiceB: "James Woods", choiceC: "Michael Caine", choiceD: "James Caan", answer: 2))
        qList.append(Question(image: "smithersstacy.jpg", questionText: "At which hotel was the Malibu Stacy convention \"StacyCon '94\" held, according to Waylon Smithers?", choiceA: "Westin Bonaventure", choiceB: "Green Bay Motel 6", choiceC: "The Waldorf Astoria", choiceD: "San Diego Airport Hilton", answer: 4))
        qList.append(Question(image: "homerspace.jpg", questionText: "Which musician sings over the radio to Homer and his fellow astronauts during their space mission?", choiceA: "James Taylor", choiceB: "Paul Simon", choiceC: "David Bowie", choiceD: "Paul McCartney", answer: 1))
        qList.append(Question(image: "bartkbbl.jpg", questionText: "How much prize money does Bart turn down in favor of an elephant after winning a KBBL contest?", choiceA: "100", choiceB: "1,000", choiceC: "$10,000", choiceD: "$1 million", answer: 3))
        qList.append(Question(image: "nedqb.jpg", questionText: "What is the name of the quarterback of the Springfield Atoms who is friends with Ned Flanders?", choiceA: "Buck Mitchell", choiceB: "Troy Brady", choiceC: "Rodney Johnson", choiceD: "Stan Taylor", answer: 4))
        qList.append(Question(image: "lennyteacher.jpg", questionText: "What is the name of the course Lenny teaches at the Adult Education Annex?", choiceA: "Turn A Woman Into Putty In Your Hands", choiceB: "How To Chew Tobacco", choiceC: "Funk Dancing For Self-Defense", choiceD: "Basketball-Playing Tips", answer: 2))
        
        // SEASON 6
        qList.append(Question(image: "treehouse5.jpg", questionText: "In \"Treehouse of Horror V\", which character is killed in every segment?", choiceA: "Principal Skinner", choiceB: "Groundskeeper Willie", choiceC: "Hans Moleman", choiceD: "Jimbo Jones", answer: 2))
        qList.append(Question(image: "collectcall.jpg", questionText: "What is the name of the Australian boy who answers a collect phone call from Bart?", choiceA: "Tobias", choiceB: "Jackson", choiceC: "Ethan", choiceD: "Andy", answer: 1))
        qList.append(Question(image: "manfootball.jpg", questionText: "Which actor starred in the Oscar-winning remake of Hans Moleman's \"Man Getting Hit By Football\"?", choiceA: "Charles Bronson", choiceB: "Charlton Heston", choiceC: "Jimmy Stewart", choiceD: "George C. Scott", answer: 4))
        qList.append(Question(image: "moejukebox.jpg", questionText: "What is Homer's favorite song (which Moe angrily removes from the jukebox at his bar)?", choiceA: "\"Jingle Bells\"", choiceB: "\"It's Raining Men\"", choiceC: "\"I Touch Myself\"", choiceD: "\"Owner Of A Lonely Heart\"", answer: 2))
        qList.append(Question(image: "algore.jpg", questionText: "What is the title of the book by Al Gore that Lisa purchases?", choiceA: "Me The Veep", choiceB: "The Assault On Reason", choiceC: "Sane Planning, Sensible Tomorrow", choiceD: "An Incorrigible Truth", answer: 3))
        qList.append(Question(image: "fearofflying.jpg", questionText: "What is the last name of the psychiatrist that helps Marge overcome her fear of flying?", choiceA: "Zweig", choiceB: "Lowenstein", choiceC: "Bancroft", choiceD: "Waxler", answer: 1))
        qList.append(Question(image: "barthockey.jpg", questionText: "What is the name of the peewee hockey team Bart plays on?", choiceA: "Kwik-E-Mart Gougers", choiceB: "Ice-Kickers", choiceC: "Springfield Wildcats", choiceD: "The Mighty Pigs", answer: 4))
        qList.append(Question(image: "homerinterview.jpg", questionText: "What news show does Homer appear on to defend himself against a sexual harassment claim?", choiceA: "Smartline", choiceB: "Rock Bottom", choiceC: "A Current Affair", choiceD: "Eyewitness Copy", answer: 2))
        
        // SEASON 7
        qList.append(Question(image: "moerascals.jpg", questionText: "As a child, Moe performed with the Little Rascals under what stage name?", choiceA: "Smelly", choiceB: "Dopey", choiceC: "Chubby", choiceD: "Alfalfa", answer: 1))
        qList.append(Question(image: "nachosflanders.jpg", questionText: "What ingredients does Ned Flanders use in his version of nachos?", choiceA: "Potato chips with Velveeta", choiceB: "Broccoli with salt", choiceC: "Crackers with tomatoes", choiceD: "Cucumbers with cottage cheese", answer: 4))
        qList.append(Question(image: "lisavegetarian.jpg", questionText: "Lisa is teased for her vegetarianism by being asked if she will marry which vegetable?", choiceA: "Beet", choiceB: "Celery", choiceC: "Turnip", choiceD: "Carrot", answer: 4))
        qList.append(Question(image: "familyfeedbag.jpg", questionText: "When Moe decides to turn his bar into a family restaurant, he consults a book written by whom?", choiceA: "T.G.I. Friday", choiceB: "Bennigan and Fuddrucker", choiceC: "Denny and Mimi", choiceD: "Ronald McDonald", answer: 2))
        qList.append(Question(image: "trynsave.jpg", questionText: "What is the title of the video game that Bart steals from the Try-N-Save?", choiceA: "Lee Carvallo's Putting Challenge", choiceB: "Bonestorm", choiceC: "Bloodstorm", choiceD: "Bonesquad", answer: 2))
        qList.append(Question(image: "martinfutures.jpg", questionText: "What crop future did Martin trade to make $1 million (before losing all but $600)?", choiceA: "Soy", choiceB: "Corn", choiceC: "Cotton", choiceD: "Wheat", answer: 1))
        qList.append(Question(image: "steamedhams.jpg", questionText: "Principal Skinner claims the term \"steamed hams\" is part of the dialect of which New York city?", choiceA: "Utica", choiceB: "Albany", choiceC: "Binghamton", choiceD: "Syracuse", answer: 2))
        qList.append(Question(image: "immigrants.jpg", questionText: "What is the name of the ballot initiative Springfield passed that required all illegal immigrants to be deported?", choiceA: "Proposition 187", choiceB: "Measure A", choiceC: "Apu's Law", choiceD: "Proposition 24", answer: 4))
        qList.append(Question(image: "knoxville.jpg", questionText: "After Bart rents a car, he, Milhouse, Martin and Nelson agree to drive to Knoxville, Tennessee over which destination?", choiceA: "The White House", choiceB: "Disney World", choiceC: "Branson, Missouri", choiceD: "Knott's Berry Farm", answer: 2))
        
        // SEASON 8
        qList.append(Question(image: "steelmill.jpg", questionText: "What is the name of the club that the Ajax Steel Mill converts to at quitting time?", choiceA: "The Anvil", choiceB: "Mo's", choiceC: "The League Of Extra-Horny Gentlemen", choiceD: "Jax Steel Mill", answer: 1))
        qList.append(Question(image: "gladiator.jpg", questionText: "Which American Gladiator does Luann Van Houten date after breaking up with husband Kirk?", choiceA: "Pyro", choiceB: "Gyro", choiceC: "Golden", choiceD: "Blaze", answer: 1))
        qList.append(Question(image: "crackerfactory.jpg", questionText: "What is the slogan of Southern Cracker, the factory that Kirk Van Houten used to work at?", choiceA: "The secret ingredient is salt", choiceB: "Deliciously dry", choiceC: "The dryyyyyy cracker", choiceD: "You CAN eat just one", answer: 3))
        qList.append(Question(image: "cypresscreek.jpg", questionText: "When the Simpsons relocate to Cypress Creek, they move into a house on which street?", choiceA: "Globex Boulevard", choiceB: "Avenida de Elm", choiceC: "Maple Systems Road", choiceD: "Hank Scorpio Way", answer: 3))
        qList.append(Question(image: "luciusmoe.jpg", questionText: "How many rounds does Moe, as Homer's boxing manager, guarantee in Homer's bout against Drederick Tatum?", choiceA: "1", choiceB: "2", choiceC: "3", choiceD: "10", answer: 3))
        qList.append(Question(image: "maisonderriere.jpg", questionText: "What is the name of the emcee Bart is asked to fill in for while working at the Maison Derriere?", choiceA: "Max Power", choiceB: "Trent Steele", choiceC: "Mel Zett", choiceD: "Hans Moleman", answer: 3))
        qList.append(Question(image: "burnsbio.jpg", questionText: "What is the title of Mr. Burns' biography?", choiceA: "A Man And A Nuclear Plant", choiceB: "Bobo and Me", choiceC: "Will There Ever Be A Rainbow?", choiceD: "The Rich Man Cometh", answer: 3))
        qList.append(Question(image: "spinoff.jpg", questionText: "Which of these is NOT the title of a show presented during the \"Simpsons Spin-Off Showcase\"?", choiceA: "\"The Simpson Family Smile-Time Variety Hour\"", choiceB: "\"Chief Wiggum, P.I.\"", choiceC: "\"Knight-Boat\"", choiceD: "\"The Love-Matic Grandpa\"", answer: 3))
        qList.append(Question(image: "hurricane.jpg", questionText: "In what year did the Springfield Hall of Records mysteriously blow away, according to Lisa?", choiceA: "1958", choiceB: "1968", choiceC: "1978", choiceD: "1987", answer: 3))
        qList.append(Question(image: "itchyvoice.jpg", questionText: "What is the name of the actress that provides the voices of Itchy and Scratchy?", choiceA: "Jane Cleaver", choiceB: "June Foray", choiceC: "June Bellamy", choiceD: "Barbara Billingsley", answer: 3))
        qList.append(Question(image: "mrsparkle.jpg", questionText: "In which Japanese city is the Mr. Sparkle manufacturing plant located?", choiceA: "Tokyo", choiceB: "Hokkaido", choiceC: "Sapporo", choiceD: "Yokohama", answer: 2))
        
        // SEASON 9
        qList.append(Question(image: "broadway.jpg", questionText: "Which Broadway musical do Marge, Lisa and Bart watch during their visit to New York?", choiceA: "Checkin' In", choiceB: "Kickin' It", choiceC: "The Itchy and Scratchy Musical", choiceD: "Planet of the Apes", answer: 2))
        qList.append(Question(image: "cult.jpg", questionText: "The Movementarians, the cult that the Simpsons join, aim to settle on which planet?", choiceA: "Euphoriana", choiceB: "Blisstonia", choiceC: "Equalia", choiceD: "Pluto", answer: 2))
        qList.append(Question(image: "musicbox.jpg", questionText: "What is the name of the ancient Egyptian artifact that Lisa and Homer discover to be a music box?", choiceA: "King Tut's Chest", choiceB: "The Sphere of Cairo", choiceC: "Egyptian Disco Ball", choiceD: "The Orb of Isis", answer: 4))
        qList.append(Question(image: "jeopardy.jpg", questionText: "When Marge appears on \"Jeopardy!\", what is her money total at the end of the game?", choiceA: "$10,999", choiceB: "$ -5200", choiceC: "$ -1", choiceD: "$0", answer: 2))
        qList.append(Question(image: "sanitation.jpg", questionText: "During his campaign for sanitation commissioner, Homer crashes a concert by which band?", choiceA: "Pearl Jam", choiceB: "U2", choiceC: "R.E.M.", choiceD: "Smashing Pumpkins", answer: 2))
        qList.append(Question(image: "kidznewz.jpg", questionText: "When Lisa becomes the anchor of a kids' news program, what name does the show's producer mistakenly call her?", choiceA: "Julie", choiceB: "Mary Ann", choiceC: "Terrylynne", choiceD: "Liz", answer: 2))
        qList.append(Question(image: "murderhorn.jpg", questionText: "What is the name of the nutritional bar company that sponsors Homer on his expedition to climb the Murderhorn?", choiceA: "PowerSauce", choiceB: "Vita-Peach Health Log", choiceC: "PowerBar", choiceD: "The Complete Cookie", answer: 1))
        
        // SEASON 10
        qList.append(Question(image: "nelsonhuckleberries.jpg", questionText: "What is Nelson's suggestion for how to handle huckleberries that are too tart?", choiceA: "Drizzle honey on them", choiceB: "Mix in chocolate sprinkles", choiceC: "Dust them with confectioner's sugar", choiceD: "Huck them at cars", answer: 3))
        qList.append(Question(image: "superbowl.jpg", questionText: "Which teams played in the Super Bowl that preceded the premiere airing of the episode \"Sunday, Cruddy Sunday\"?", choiceA: "New England Patriots and St. Louis Rams", choiceB: "Denver Broncos and Seattle Seahawks", choiceC: "Denver Broncos and Atlanta Falcons", choiceD: "Green Bay Packers and New England Patriots", answer: 3))
        qList.append(Question(image: "celltower.jpg", questionText: "What is the name of the company that installs a cell phone tower on the Simpsons' roof?", choiceA: "Qualbiz", choiceB: "OmniTouch", choiceC: "AirTouch", choiceD: "AT&T", answer: 2))
        qList.append(Question(image: "curfew.jpg", questionText: "What is the name of the movie the kids of Springfield sneak off to see during a city-wide curfew?", choiceA: "The Shinning", choiceB: "Honk If You're Horny", choiceC: "The Bus That Wouldn't Slow Down", choiceD: "The Bloodening", answer: 4))
        qList.append(Question(image: "nessie.jpg", questionText: "Which character does NOT accompany Mr. Burns on his quest to capture the Loch Ness Monster?", choiceA: "Homer", choiceB: "Groundskeeper Willie", choiceC: "Smithers", choiceD: "Professor Frink", answer: 3))
        qList.append(Question(image: "williescotland.jpg", questionText: "What type of furniture does Groundskeeper Willie say he was \"conceived, born and educated\" on?", choiceA: "Ottoman", choiceB: "Credenza", choiceC: "Pool table", choiceD: "Kitchen counter", answer: 3))
        qList.append(Question(image: "slaughterhouse.jpg", questionText: "Besides trucker Red Barclay, who is the only person to have beaten the \"Sir Loin-A-Lot\" challenge at the Slaughterhouse?", choiceA: "Tony Randall", choiceB: "Jack Klugman", choiceC: "Adam Richman", choiceD: "Betty White", answer: 1))
        qList.append(Question(image: "mensa.jpg", questionText: "Which character is NOT a member of Springfield's Mensa chapter?", choiceA: "Dr. Hibbert", choiceB: "Lindsey Naegle", choiceC: "Martin Prince", choiceD: "Comic Book Guy", answer: 3))
        qList.append(Question(image: "happysmile.jpg", questionText: "What is the name of the host of the game show the Simpsons appear on during their trip to Japan?", choiceA: "Skip", choiceB: "Wink", choiceC: "Chuck", choiceD: "Bob", answer: 2))
        
        // SEASON 11
        qList.append(Question(image: "maudedeath.jpg", questionText: "How did Maude Flanders die?", choiceA: "Run over by Homer's car", choiceB: "Fell into Springfield Gorge", choiceC: "Struck by lightning while praying", choiceD: "Struck by barrage of T-shirts", answer: 4))
        qList.append(Question(image: "springfieldu.jpg", questionText: "What is the nickname of the football team at Spingfield University?", choiceA: "Wildcats", choiceB: "Roughriders", choiceC: "Snortin' Swine", choiceD: "Nittany Tide", answer: 4))
        qList.append(Question(image: "pbsshow.jpg", questionText: "What is the name of the British sitcom Homer discovers on PBS?", choiceA: "\"Absolutely Crapulous\"", choiceB: "\"Do Shut Up\"", choiceC: "\"Shut Your Gob\"", choiceD: "\"Fawlty Towers\"", answer: 2))
        qList.append(Question(image: "margebrokenleg.jpg", questionText: "When the Simpsons visit a ski resort, how does Marge break her leg?", choiceA: "Falling off a ski lift", choiceB: "Colliding with Ned Flanders", choiceC: "Being hit by a clock that fell off a wall", choiceD: "Tripping over a search and rescue dog", answer: 3))
        qList.append(Question(image: "tango.jpg", questionText: "What is the name of the movie that inspires Lisa to enroll in dancing lessons?", choiceA: "\"The Dance of Death\"", choiceB: "\"Tango de la Muerte\"", choiceC: "\"Baila!\"", choiceD: "\"Lisabella the Ballerina\"", answer: 2))
        
        // SEASON 12
        qList.append(Question(image: "activist.jpg", questionText: "What is the name of the environmental activist that Lisa develops a crush on?", choiceA: "Jesse Grass", choiceB: "Jimmy Rainforest", choiceC: "Johnny Wilderness", choiceD: "Jack Elmtree", answer: 1))
        qList.append(Question(image: "grammarrobot.jpg", questionText: "What is the name Lisa gives to the grammar robot she builds for her school science fair?", choiceA: "Linguo", choiceB: "The Oxford Comma", choiceC: "LanguageBot", choiceD: "Speak 'n' Say", answer: 1))
        qList.append(Question(image: "partyposse.jpg", questionText: "Which of these is NOT a song sung by the Party Posse, Bart's boy band?", choiceA: "You're My Special Girl", choiceB: "Drop Da Bomb", choiceC: "No Strings Attached", choiceD: "Let's Re-Up Tonight", answer: 3))
        qList.append(Question(image: "duffstadium.jpg", questionText: "Which real-life minor-league baseball team has a name inspired by the episode \"Hungry, Hungry Homer\"?", choiceA: "Springfield Wildcats", choiceB: "Albuquerque Isotopes", choiceC: "Jacksonville Atoms", choiceD: "Illinois Bartmen", answer: 2))
        qList.append(Question(image: "specialblend.jpg", questionText: "Which spice does Homer detect in Groundskeeper Willie's \"special blend\" of sawdust?", choiceA: "Allspice", choiceB: "Cloves", choiceC: "Cinnamon", choiceD: "Paprika", answer: 3))
        qList.append(Question(image: "tennismenace.jpg", questionText: "Which of these tennis stars did NOT appear in the episode \"Tennis the Menace\"?", choiceA: "Andre Agassi", choiceB: "Serena Williams", choiceC: "Steffi Graf", choiceD: "Pete Sampras", answer: 3))
        qList.append(Question(image: "sophie.jpg", questionText: "Sophie, Krusty's estranged daughter, is voiced by which actress?", choiceA: "Zooey Deschanel", choiceB: "Natalie Portman", choiceC: "Reese Witherspoon", choiceD: "Drew Barrymore", answer: 4))
        
        // SEASON 13
        qList.append(Question(image: "gloria.jpg", questionText: "Who was the ex-boyfriend of Gloria, Mr. Burns' love interest in \"A Hunka Hunka Burns In Love\"?", choiceA: "Moe", choiceB: "Snake", choiceC: "Barney", choiceD: "Lenny", answer: 2))
        qList.append(Question(image: "ultrahouse.jpg", questionText: "Who provides the voice of the UltraHouse seen in \"Treehouse of Horror XII\"?", choiceA: "Sean Connery", choiceB: "Liam Neeson", choiceC: "Daniel Craig", choiceD: "Pierce Brosnan", answer: 4))
        qList.append(Question(image: "bartbubble.jpg", questionText: "What virus forces Bart to live temporarily in a plastic bubble?", choiceA: "Hanta virus", choiceB: "Panda virus", choiceC: "The blue plague", choiceD: "Ebola virus", answer: 2))
        
        // SEASON 14
        qList.append(Question(image: "fantasycamp.jpg", questionText: "Which of these musicians was NOT an instructor at the rock 'n' roll fantasy camp Homer attends?", choiceA: "Dave Grohl", choiceB: "Lenny Kravitz", choiceC: "Tom Petty", choiceD: "Brian Setzer", answer: 1))
        qList.append(Question(image: "tonyhawk.jpg", questionText: "When an emancipated Bart moves to an urban loft, he discovers which punk band playing on the floor above him?", choiceA: "Social Distortion", choiceB: "NOFX", choiceC: "Pennywise", choiceD: "Blink-182", answer: 4))
        qList.append(Question(image: "sarasloane.jpg", questionText: "Sara Sloane, the Hollywood celebrity who becomes a love interest of Ned, is voiced by which Oscar-winning actress?", choiceA: "Marisa Tomei", choiceB: "Meryl Streep", choiceC: "Jodie Foster", choiceD: "Jennifer Lawrence", answer: 1))
        qList.append(Question(image: "thirdgrade.jpg", questionText: "What is the name of Springfield Elementary's third-grade teacher?", choiceA: "Audrey McConnell", choiceB: "Chloe Talbot", choiceC: "Hans Moleman", choiceD: "Edna Krabappel", answer: 1))
        qList.append(Question(image: "spellympics.jpg", questionText: "Which famous writer appeared in \"I'm Spelling As Fast As I Can\" as the host of the Spellympics?", choiceA: "Doris Kearns Goodwin", choiceB: "David Halberstam", choiceC: "George Plimpton", choiceD: "Jimmy Breslin", answer: 3))
        qList.append(Question(image: "hatesflanders.jpg", questionText: "Which musician does Homer team up with to produce a song called \"Everybody Hates Ned Flanders\"?", choiceA: "Peter Gabriel", choiceB: "David Byrne", choiceC: "Phil Collins", choiceD: "David Bowie", answer: 2))
        
        // SEASON 15
        qList.append(Question(image: "lisaprez.jpg", questionText: "The episode \"The President Wore Pearls,\" in which Lisa becomes class president, is a parody of which Broadway musical?", choiceA: "Evita", choiceB: "Chicago", choiceC: "The Music Man", choiceD: "Phantom of the Opera", answer: 1))
        qList.append(Question(image: "secondhoneymoon.jpg", questionText: "What is the name of the airline Homer and Marge board for a flight to Miami and an impromptu second honeymoon?", choiceA: "Crazy Clown Airlines", choiceB: "Budget SkyBus", choiceC: "Suntan Airlines", choiceD: "United Airlines", answer: 3))
        
        // SEASON 16
        qList.append(Question(image: "homerathletes.jpg", questionText: "Which of these athletes did NOT attend Homer's Showboating Academy?", choiceA: "Tom Brady", choiceB: "LeBron James", choiceC: "Stephen Curry", choiceD: "Michelle Kwan", answer: 3))
        qList.append(Question(image: "comicbookguy.jpg", questionText: "What is Comic Book Guy's real name?", choiceA: "Langdon Alger", choiceB: "Louis Lane", choiceC: "Jeff Albertson", choiceD: "Armin Tamzarian", answer: 3))
        qList.append(Question(image: "nedmove.jpg", questionText: "When Ned Flanders gets fed up with Homer and moves away, which town does he relocate to?", choiceA: "Humbleton, Pennsylvania", choiceB: "Flanders, Illinois", choiceC: "Okilly, Oklahoma", choiceD: "Hollywood, California", answer: 1))
        
        // SEASON 17
        qList.append(Question(image: "bartchimp.jpg", questionText: "What is the name of the chimpanzee that kidnaps Bart?", choiceA: "Jub-Jub", choiceB: "Wimpy", choiceC: "Toot-Toot", choiceD: "Mrs. Teeny", answer: 3))
        qList.append(Question(image: "lisaboy.jpg", questionText: "When Springfield Elementary is divided by gender, Lisa adopts which pseudonym in order to attend the boys' school?", choiceA: "Jimmy Toilet", choiceB: "Jake Boyman", choiceC: "Rembrant Q. Einstein", choiceD: "Johnny Rainbow", answer: 2))
        
        
        // UNSORTED
        
    }
    
}
