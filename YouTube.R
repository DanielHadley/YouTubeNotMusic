setwd("/Users/dphnrome/Documents/Git/YouTubeNotMusic")
library(ggplot2)
library(scales)

# Top Youtube
# Data cut and pasted from here 12/6/2014:
# https://www.youtube.com/playlist?list=PLirAqAtl_h2r5g8xGajEwdXd3x1sZh8hC

titles = c("Charlie bit my finger - again !", "Masha and The Bear (Episode 17)", 
           "Evolution of Dance",
           "An experiment", "thigh massage video", 
           "Play Doh Ice cream cupcakes playset...", "BallsCrash", 
           "30 Surprise Eggs!!! Disney CARS MARVEL...", "The Sneezing Baby Panda",
           "Identified music from this advert... Changing Room",
           "20 Surprise Eggs, Kinder Surprise Cars 2...",
           "Masha and The Bear (Episode 18)", "Ultimate Dog Tease", 
           "Susan Boyle - Britains Got Talent", "Best Sex Ever!!!",
           "The Annoying Orange", "The Ultimate Girls Fail Compilation 2012",
           "Lotion in my hat on my hair", "Cavitacion", "Rewind YouTube Style 2012",
           "Barack Obama Hillary Clinton - Umbrella", "Minecraft Parody of Usher's DJ Got Us Fallin' in Love",
           "The Ultimate Fails Compilation", "Thai Hot Stem Massage", 
           "* Got Talent onnie Talbot WOWs Simon Cowell !",
           "Masha and The Bear (Episode 36)", "NEW Play Doh Sparkle Princess Ariel...",
           "80 Surprise eggs ...", "PEOPLE ARE AWESOME 2013", "BED INTRUDER SONG!!!",
           "Tomorrowland 2012 | official aftermovie", "Masha and The Bear (Episode 15)",
           "Girl and Horse - Great Bond")
millionviews=c(805, 339, 288, 274, 270, 254, 246, 229, 215, 210, 201, 183, 163, 161, 160, 158, 156,
               156, 150, 149, 148, 148, 147, 147, 145, 141, 133, 132, 125, 124, 119, 119, 119)

d = data.frame(titles, millionviews)


# Top Reddit Youtube
# Data cut and pasted from here 12/6/2014:
# https://www.youtube.com/playlist?list=PLirAqAtl_h2r5g8xGajEwdXd3x1sZh8hC

titlesR = c("Colburn Idiots Abroad: Day One", "Tech Demo for Pillow Castle's First Person Puzzler",
           "Baby laughing while getting shots", "Gravity Visualized",
           "Does Megalodon still exist? Shark Week debunked",
           "How 2 Barbie", "Rick Astley - Never Gonna Give You Up",
           "Two women caught stealing a canopy on the beach...",
           "First taste of chocolate in Ivory Coast", "Animator vs. Animation IV (original)",
           "How to fool a baboon", "The Faze Clansman", "First-person Hyperlapse Videos",
           "Bare-chested Russian man orders ducks to attention", "Billy Joel - Sings",
           "Long Story Short - I Had a Movie Date", "Space Oddity", 
           "Burn", "Road rage in Russia", "MLG Mario",
           "Helicopter Fishing", "Prescott Highside", "Whale watching from canoe",
           "Wimpy Goat", "Run Walter, RUN!!", "My Life Vs...GoPro", 
           "Race The Tube - Sprint", "I TOWED JOEY GRACEFFA'S CAR",
           "Crazy car vent", "Porsche 911 991 issues")
upvotes=c(12458, 11404, 10947, 9896, 9804, 9459, 9242, 9189, 8862, 8537, 8451, 8356, 8232, 8217, 7964,
          7875, 7828, 7695, 7672, 7609, 7408, 7365, 7352, 7343, 7334, 7255, 7167, 7095, 7042, 6780)

dR = data.frame(titlesR, upvotes)



# Top Reddit Youtube
# Data cut and pasted from here 12/6/2014:
# https://www.youtube.com/playlist?list=PLirAqAtl_h2r5g8xGajEwdXd3x1sZh8hC
# & here http://www.reddit.com/domain/youtu.be/top/
# & here http://www.reddit.com/r/videos/top

titlesRUpdated = c("Wayne County Serves Up Cat Food Like Meals","Preacher Phil Snider gives interesting gay rights speech",
                   "Colburn Idiots Abroad: Day One", "Tech Demo for Pillow Castle's First Person Puzzler",
            "Baby laughing while getting shots","A Conversation With My 12 Year Old Self",
                   "Gravity Visualized",
            "Does Megalodon still exist? Shark Week debunked", "My cousin Oskaar",
            "How 2 Barbie", "Rick Astley - Never Gonna Give You Up",
            "Two women caught stealing a canopy on the beach...",
            "First taste of chocolate in Ivory Coast", "Animator vs. Animation IV (original)",
            "How to fool a baboon", "The Faze Clansman", 
                  "An awesome young man", "Imma Get You Bitch", "First-person Hyperlapse Videos",
            "Bare-chested Russian man orders ducks to attention", "Billy Joel - Sings",
            "Long Story Short - I Had a Movie Date", "Space Oddity", 
            "Burn", "Road rage in Russia","Inglewood Police Chase Jan 13, 2013",  "MLG Mario",
            "Volcano Eruption in Papua New Guinea", "Helicopter Fishing", 
                   "Russians are scary (Dan Soder-Stand Up-01.07.13)")

# , "Prescott Highside", 
#                    "Whale watching from canoe",
#             "Wimpy Goat", "Run Walter, RUN!!", "My Life Vs...GoPro", "Sir Ravi The Juggler",
#             "Race The Tube - Sprint", "Honey Badger Houdini - Honey Badgers: Masters of Mayhem",
#                    "I TOWED JOEY GRACEFFA'S CAR",
#             "Crazy car vent", "Porsche 911 991 issues")

upvotesUpdated=c(17371, 12634, 12458, 11404, 10947, 10523, 9896, 9804, 9796, 9459, 9242, 9189, 8862, 8537, 8451, 8356, 8269, 
                 8256, 8232, 8217, 7964,
          7875, 7828, 7695, 7672, 7653, 7609, 7493, 7474, 7408)

#, 7365, 7352, 7343, 7334, 7255, 7199, 7167, 7014, 7095, 7042, 6780)

dRFixed = data.frame(titlesRUpdated, upvotesUpdated)




my.theme <- 
  theme(#plot.background = element_rect(fill="white"), # Remove background
    panel.grid.major = element_blank(), # Remove gridlines
    # panel.grid.minor = element_blank(), # Remove more gridlines
    # panel.border = element_blank(), # Remove border
    panel.background = element_blank(), # Remove more background
    axis.ticks = element_blank(), # Remove axis ticks
    axis.text=element_text(size=9), # Enlarge axis text font
    axis.title=element_text(size=8), # Enlarge axis title font
    plot.title=element_text(size=12,  hjust=0) # Enlarge, left-align title
    #,axis.text.x = element_text(angle=60, hjust = 1) # Uncomment if X-axis unreadable 
  )


ggplot(d, aes(x=reorder(d$titles, d$millionviews), y=d$millionviews)) + geom_bar(colour="white", fill="red") + 
  my.theme + ggtitle("Top 30 most-viewed non-music YouTube videos") + xlab(NULL) +
  ylab("Views in Millions as of December 2014") + 
  geom_text(aes(label = millionviews), size = 2, color= "grey", hjust = -.25)+
  coord_flip() +
  scale_y_continuous(labels = comma)

ggsave("./YouTube.png", dpi=300, width=7, height=6)
ggsave("./YTTopNonMusic.png", dpi=300, width=7, height=6)



ggplot(dR, aes(x=reorder(dR$titlesR, dR$upvotes), y=dR$upvotes)) + geom_bar(colour="white", fill="red") + 
  my.theme + ggtitle("Top 30 most-viewed YouTube videos on Reddit") + xlab(NULL) +
  ylab("Upvotes as of December 2014") + 
  geom_text(aes(label = upvotes), size = 2, color= "grey", hjust = -.25)+
  coord_flip() +
  scale_y_continuous(labels = comma)

ggsave("./YouTubeR.png", dpi=300, width=7, height=6)
ggsave("./ReYTTop.png", dpi=300, width=7, height=6)



ggplot(dR, aes(x=reorder(dRFixed$titlesR, dRFixed$upvotes), y=dRFixed$upvotes)) + geom_bar(colour="white", fill="red") + 
  my.theme + ggtitle("Top 30 most-viewed YouTube videos on Reddit") + xlab(NULL) +
  ylab("Upvotes as of December 2014") + 
  geom_text(aes(label = upvotes), size = 2, color= "grey", hjust = -.25)+
  coord_flip() +
  scale_y_continuous(labels = comma)

ggsave("./ReYTFixed.png", dpi=300, width=7, height=6)
