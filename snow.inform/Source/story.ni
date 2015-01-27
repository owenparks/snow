"A Long Drink" by Owen Parks
[Cover art by Dan Smith
Licensed under Creative Commons By 2.0
Image at: https://flic.kr/p/pPkjHD
License Terms at: https://creativecommons.org/licenses/by/2.0/]

Release along with a website and interpreter and cover art.
The Release number is 1.

The story genre is "Mystery".

Include Basic Screen Effects by Emily Short.
Include Threaded Conversation by Chris Conley.
Include Exit Lister by Gavin Lambert.
Include Menus by Emily Short.
[Include Dialogue Punctuation by Ron Newcomb.]
[TODO: Use default Exit Lister Version 3 and make all modifications here]
[Made with Threaded Conversation Version 2/140602]

[CHANGE THE FOLLOWING LINE FOR DEBUGGING]
Debug_on is a truth state that varies. Debug_on is usually true.
Logging_on is a truth state that varies. Logging_on is usually false.

When play begins:
	now the story viewpoint is first person singular;
	now the story tense is past tense;
	If logging_on is true:
		try switching the story transcript on.

A clue is a kind of thing.

Chapter 2 - Game Scene List

Mountain_Driving is a scene. Mountain_Driving begins when play begins. Mountain_Driving ends when Car_Escape begins.
Car_Escape is a scene. Car_Escape begins when Upturned Car is visited. Car_Escape ends when Bottom of Cliff is visited.
Cliff_Climbing is a scene. Cliff_Climbing begins when Car_Escape ends. Cliff_Climbing ends when Car_Embarking begins.
Car_Embarking is a scene. Car_Embarking begins when Sharp Bend is visited. Car_Embarking ends when Riding_Scene begins.
Riding_Scene is a scene. Riding_Scene begins when the player is in the Valcar_Container for the first time. Riding_Scene ends when Body_Discovery begins.
Body_Discovery is a scene. Body_Discovery begins when the player is in the Driveway for the first time. Body_Discovery ends when the body is examined.
Prearrival is a scene. Prearrival begins when Body_Discovery ends. Prearrival ends when Guest_Arrival begins.
Guest_Arrival is a scene. Guest_Arrival begins when guests arrive. Guest_Arrival ends when first investigation starts.
First_Investigation is a scene. First_Investigation begins when Guest_Arrival ends. First_Investigation ends when PC_Bedroom_Door is open. [TODO: Move Val here after some amount of time]
First_Sleep is a scene. First_Sleep begins when First_Investigation ends. First_Sleep ends when first_slept is true.
Wakeup is a scene. Wakeup begins when First_Sleep ends. Wakeup ends when Interrogation begins.
Interrogation is a scene. Interrogation begins when INTERRO_START is true. Interrogation ends when the player recollects about her husband.[TODO: change me to the last quip in the tree]
Second_Investigation is a scene. Second_Investigation begins when Interrogation ends.

Cliff_Gameover is a scene. Cliff_Gameover begins when the player is in the Precipice for the first time.

[Arrival logic for guests to arrive after body is found]
Prearrival_Counter is a number variable. Prearrival_Counter is usually 0.
Every turn during Prearrival:
	Increase Prearrival_Counter by 1.
		
To decide whether the guests arrive:
	If Prearrival_Counter > 10, yes;
	no.	

[Gives the "you should sleep message]
[TODO: make a table of messages and pick one]
First_Sleepy is a truth state that varies. First_Sleepy is initially false.
To decide whether First_Sleepy:
	If First_Investigation is happening:
		If the Turn Count is greater than 50:
			Decide yes;
		If FoundClues is greater than 4:
			Decide yes;
	Decide no.
	
First_Slept is a truth state that varies. First_Slept is initially false.

Section 1 - Sleep Mechanics

Every turn:
	If First_Sleepy is true:
		say "I was starting to feel tired. Everything that had happened in the past few days was finally starting to take its toll. I thought it might help to find a bedroom and sleep for a few hours."


Chapter 3 - Scene Mountain_Driving

Introcar is a region.

Understand the command drive as something new. Understand "drive" as driving. Driving is an action applying to one visible thing.
	
Before climbing a direction (called D), try going D instead.
Before driving a direction (called D), try going D instead.

Road is a backdrop. Road is in the introcar. The description is " Snow was coming down in great, big flakes, landing right on top of the packed, slippery mess on the road.".
Window is a backdrop. Window is in the introcar.
Introcar_radio is a backdrop. Introcar_radio is in the introcar. The printed name is "radio".
Instead of examining outside when the player is in the introcar:
	Try examining the road.
Instead of examining the window when the player is in the introcar:
	Try examining the road.
	
After reading a command:
	If the player is in the introcar:
		If the player's command matches "go":
			try going north;
			stop the action;
		If the player's command matches "drive":
			try going north;
			stop the action.
		
Mountain_Road is a room in the introcar. The printed name of Mountain_Road is "Mountain Road". The description is "They say you shouldn't drive when you're angry. That was just one of a hundred pieces of good advice I was ignoring as I drove north along the icy road to the chalet, my foot a little heavier on the gas than it needed to be.[paragraph break]I'd had a long, promising career in homicide ahead of me, or so I kept telling myself, and it was all down the drain now. I had planned on a senior detective's desk being in the cards for me, at least. Maybe even quitting and going into private investigations. Well, I guessed I could still do that.[paragraph break]Not six hours earlier, I'd turned in my badge and my gun and walked out, more or less the way I'd seen it in the movies. The captain was yelling his head off, couldn't figure out why a promising young detective like me would just up and quit. I honestly hoped he never did."

Mountain_Pass is a room in the introcar. The printed name of Mountain_Pass is "Mountain Pass". Mountain_Pass is north of the Mountain_Road. The description is "I had the radio on tuned to some news station-- truth be told, I already missed the chatter of the dispatch as I was driving. The traffic report had little bearing on my current locale, but the weather gave me some concern: snowstorm coming up off the Great Lakes, apparently. Spending the weekend with a small crowd I barely knew appealed very little to me. Being cooped up with them the entire time due to weather seemed like a recipe for an epidemic of cabin fever."
Instead of going south when the player is in the Mountain_Pass:
	say "I had somewhere to be. Making a U-turn wasn't going to get me there any faster.";
	stop the action.	

Hairpin_Turn is a room in the introcar. The printed name of Hairpin_Turn is "Hairpin Turn". Hairpin_Turn is north of the Mountain_Pass. The description is "If I'd finished that last thought a few seconds earlier, I might've noticed the caution sign for the sharp turn, barely visible through the snow. The car was going too fast, and the guardrail came out of nowhere."
Instead of driving when the player is in the Hairpin_Turn:
	Try going down.
Instead of going north when the player is in the Hairpin_Turn:
	Try going down.
Instead of going south when the player is in the Hairpin_Turn:
	Try going down.
Carry out going down when the player is in the Hairpin_Turn:
	Say "It's too late to stop, so I don't even bother. Instead, I press my head and back against the seat and put my arms in front of my face.[paragraph break]The back end of the car lost traction and swung out wide, trying vainly to follow the front, just like one of those car commercials. Unfortunately, I was not a professional driver, nor was this a closed course, and the right side of the car went over the edge of the cliff, momentum then taking the rest of the car with it. In shock, my brain couldn't manage to tell my body to do more than grip the wheel uselessly as the car tumbled down the steep incline. I lost count of the rolls after three. The roof hit a tree, and I jerked upward against the seat belt. Snow from the branches fell into a pile onto the passenger window from the impact. I heard a thud, snuffing out the brief glimpse of moonlight.[paragraph break]";
	wait for any key;
	now the player is in the Upturned Car.

After reading a command:
	If the player's command matches "brake" or the player's command matches "stop":
		If the player is in the Hairpin_Turn:
			say "I hit the brakes, but the car kept straight for the guardrail, slamming through, and going over.[paragraph break]The back end of the car lost traction and swung out wide, trying vainly to follow the front, just like one of those car commercials. Unfortunately, I was not a professional driver, nor was this a closed course, and the right side of the car went over the edge of the cliff, momentum then taking the rest of the car with it. In shock, my brain couldn't manage to tell my body to do more than grip the wheel uselessly as the car tumbled down the steep incline. I lost count of the rolls after three. The roof hit a tree, and I was jerked upward against the seat belt. Snow from the branches fell into a pile onto the passenger window from the impact. I heard a thud, snuffing out the brief glimpse of moonlight.[paragraph break]";
			wait for any key;
			now the player is in the Upturned Car;
			stop the action.
	
Chapter 4 - Scene Car_Escape

A room is either strapped or unstrapped. A room is usually unstrapped.
When the Car_Escape begins:
	Now the cell phone is broken.
	
Upturned Car is a strapped room. The description is "I wasn't sure how long I'd been out. Taking stock of my situation, I was surprised to find myself more or less unhurt, save for a dull ache in my left wrist where I'd tried to brace against the door. I took a few deep breaths, and tried to gather myself-- I was still a little mentally a little shocked and unfocused.[paragraph break]The car was presently lying at the bottom of a cliff on its side. Above me, I could see moonlight, dimly mottled by the snow on the passenger side windows. The windshield in front of me showed nothing but evergreen forest, extending into the darkness.[if Upturned Car is strapped][paragraph break]I was still strapped in, the seat belt made sure I stayed put. At least one thing in this car still knew how to do its job right.[end if][if Upturned Car is unstrapped][paragraph break]I crouched at the bottom of the car on the driver door, trying to figure the best way out.[end if]".
[The chest belt had dug into my neck pretty hard, but it hadn't left a bruise.]
The driver door is scenery in the Upturned Car.
Instead of kicking the driver door:
	say "It's down against a foot of packed snow, with the hard earth below that. I try to kick the driver's side door, but don't get further than cracking the window.";
	stop the action.
Instead of punching the driver door:
	say "That wouldn't accomplish much.";
	stop the action.
Instead of attacking the driver door:
	try kicking the driver door.
Instead of opening the driver door:
	say "It's flat on the ground, no way that's happening.";
	stop the action.

The passenger door is scenery in the Upturned Car.
Instead of kicking the passenger door:
	say "It's a little tough for me to kick up there. Even bracing against an armrest, I can't get enough reach and power to open it.";
	stop the action.
Instead of punching the passenger door:
	say "I slam my fists against the window above me, but it doesn't break.";
	stop the action.
Instead of opening the passenger door:
	say "There's too much snow on top. I try to push, but the weight keeps the door from opening.";
	stop the action.

The windshield is scenery in the Upturned Car. The description is "Flecked with snow and road salt, it was already cracked in a spiderweb pattern where it'd collided with a rock.".
Instead of opening the windshield:
	say "That's not something that typically opens on a car, I'll have to use some force.";
	stop the action.
Instead of punching the windshield:
	say "I hit the windshield a few times, and can feel it start to come loose. A good solid kick ought to do it.";
	stop the action.
Instead of attacking the windshield:
	try punching the windshield;
	stop the action.
Instead of kicking the windshield:
	say "Bracing my back against the sideways seat, I gave the windshield a couple of sharp kicks. I felt the seal start to give, and then it dislodged entirely from the frame, making an exit. It fell out onto the snow with a muffled crunch, and the bitter wind started to blow into the old car. I grabbed my bag and stepped out into the forest.[paragraph break]".;
	wait for any key;
	Now the player is in the Bottom of Cliff;
	stop the action.

After reading a command:
	If the player is in the Upturned Car:
		If the player's command matches "look":
			Continue the action;
		If the player's command matches "unbuckle seat belt" or the player's command matches "unbuckle" or the player's command matches "unbuckle me" or the player's command matches "unbuckle myself" or the player's command matches "unstrap" or the player's command matches "unstrap seat belt" or the player's command matches "undo seat belt" or the player's command matches "remove seat belt" or the player's command matches "unbuckle self":
			if the Upturned Car is strapped:
				say "I wrestled with the jammed seat belt for a moment, then managed to undo it, falling a few inches down against the driver door once the chest belt was free.";
				now the Upturned Car is unstrapped;
				stop the action;
			otherwise:
				say "I'd already extricated myself from the restraints.";
				stop the action;
		If the Upturned Car is strapped:
			say "The seat belt held me firmly in place in what was now the bottom of the upturned car. I wasn't going to be able to see or do much of anything until I unbuckled myself.";
			stop the action;

Chapter 5 - Scene Cliff_Climbing

Bottom of Cliff is a room. Bottom of Cliff is below Sharp Bend. The description is "I stood on a  ridge densely packed with trees some ways below the highway. My overturned car sat a few feet away. The ridge extended as far as I could see to the north, going nowhere in particular. To the west I saw the steep incline the car had rolled down, and the path it'd cut through the snow and brush.[paragraph break]I was miles from nowhere[if we have examined the cell phone], and the cherry on top was that my cell phone was broken[end if]. It had stopped snowing for the moment. The night sky was starting to lighten, I figured I had an hour before sunrise.[paragraph break]Fucking swell."
Instead of going west in the Bottom of Cliff:
	try going up.

Chapter 6 - Scene Car_Embarking

Sharp Bend is a room. Sharp Bend is above Bottom of Cliff and north of Hairpin_Turn. The description is "I stood about a hundred feet from the hairpin turn where my car had gone over; I could see the tire tracks and broken guardrail to the south.".

Rule for writing a paragraph about the Valcar_Container:
	say "A Mercedes is quietly idling here, V8 purring.";
	
[TODO: Maybe leaving this in could leave a trail of fixmes]
Rule for writing a paragraph about a person:
	stop;
	
Rule for writing a paragraph about Val:
	If Val is in the Sedan:
		say "Val drove the car, her eyes looking miles beyond the road, the mountains, and the horizon.".
	
Before going south in the Sharp Bend:
	If the scene is Cliff_Climbing:
		say "I'd only known Val a couple of days, but I knew she didn't like to be kept waiting.";
		stop the action.
Before going down in the Sharp Bend:
	If the scene is Cliff_Climbing:
		say "I'd only known Val a couple of days, but I knew she didn't like to be kept waiting.";
		stop the action.

When Car_Embarking begins:
	say "The second I turned my head to look down the lane, I saw a pair of headlights approach. A black Mercedes pulled up and came to a stop just in front of me. The passenger door opened, and I saw Val looking out at me.[paragraph break][quotation mark]Get in,[quotation mark] she said.";
	now the Valcar_Container is in the Sharp Bend.

Chapter 7 - Scene Riding_Scene

When Riding_Scene begins:
	Now the player is in the Sedan.

The Valcar_Container is an enterable container. The printed name is "Mercedes".
[TODO: Can't go down in initial scene, but allow the player to come back here]

Sedan is a room. The description is "The inside of the Mercedes was yards of brushed metal and hand-stitched leather. It still smelled new.[if scene_conversation is exhausted] Having run out of things to talk about, I had nothing to do but wait for us to arrive.[end if]".
[TODO: Move NPCs to their own section?]
[TODO: Add scenery]
Val is a woman. Val is in the Sedan. The description is "The first thing I noticed were the dark green eyes, clear even driving down a street with no lights. She looked to be in her thirties, but she could have been three hundred for all I knew. Her face shone in the moonlight, pale and beautiful and unnatural. She was wearing too-red lipstick, which gave her the look of a Venetian mask. Straight auburn hair framed a face I wouldn't have kicked out of bed for eating crackers.[paragraph break]".

Instead of waiting in the Sedan during Riding_Scene:
	If scene_conversation is exhausted:
		Now the player is in the Driveway;
	Otherwise:
		Continue the action.

Chapter 8 - Scene Cliff_Gameover

Mountain Ridge is north of Bottom of Cliff. The description is "I had a bad feeling as I walked my way along the ridge, trudging a couple of miles through the foot-deep snow. The path didn't seem to be leading anywhere, and the sky kept getting lighter as I went. I still had enough time to turn back, if I wanted."

Dense Forest is north of Mountain Ridge. The description is "I walked for what must have been half an hour through the pines, which kept getting denser. In the light just before dawn, I saw the evergreen foliage come to a sudden stop ahead. I was starting to get seriously worried."

Precipice is north of Dense Forest. The description is "The forest abruptly ended in the edge of a cliff, overlooking a valley and several lakes hundreds of feet below."

When Cliff_Gameover begins:
	end the story saying "The north end of the ridge had a stunning view of the eastern valley, and unfortunately the horizon, too. Through what must have been some quirk of fate, I never made it to the chalet. I smiled sardonically at the sunrise, searing like a fire newly kindled, even on that cold, windswept ridge. I guess I'd been spared what would have no doubt been an interminable weekend.[paragraph break]As far as last sights went, I supposed it could have been worse."

Chapter 9 - Scene Body_Discovery

Val_House is a woman. The printed name is "Val". Understand "Val" as Val_House. The description is "She wore a belted black overcoat with straight shoulders, which covered all of her except for the bottom of a long pencil skirt. She hadn't bothered taking her driving gloves off. I couldn't put my finger on it, but there was something stiffly formal and practised about the way she moved.[if Val_House is in the Reading_Nook][paragraph break]Her eyes rested on what was left of the professor, her expression unreadable.[end if]".

Rule for writing a paragraph about Val_House:
	If Val_House is in the Reading_Nook:
		say "Val stood to my left, looking impassively at the body of Alan Bowden.";
	If the scene is Guest_Arrival:
		say "";

When Body_Discovery begins:
	now Val_House is in the Foyer;
	say "Val got out of the car and took her bag out of the trunk.[paragraph break][quotation mark]Come on, I'll introduce you to Alan,[quotation mark] she said, walking up the drive.".

Driveway is a room. "We stood at the end of a long gravel drive, staring up at a large house with a dark red wood exterior. Steps to the east led to a porch that spanned the facade of the place, wrapping around to a deck in the back that presumably had a great view of the lake and the countryside. It was more ski lodge than cabin, and looked like it could comfortably shelter an entire biathlon team if it had to."
House is scenery in the Driveway. Understand "facade/chalet/lodge" as house. The description is "It seemed oddly imposing for what was just another vacation home in the Adirondacks. From the front, it looked like two or three  spacious floors with high ceilings. The steeply angled roofs were clearly designed to shed the several feet of snow dumped on it by nor'easters every year. ".
Driveway_scenery is scenery in the Driveway. Understand "driveway" as driveway_scenery. The printed name is "the driveway".
[TODO: Cars, killer's car has a cold engine? Or else, owner's car is missing?]

Front_Porch is a room. Front_Porch is east of the Driveway. The printed name is "Front Porch". The description is "Steps led up from the gravel driveway to the porch. Narrow unpainted wood planks extended the length of the house, along with windows that looked into rooms at the front of the house. Through them, I saw blinds, and a glint of something metallic, like a shutter.".
Windows are scenery in the Front_Porch. The description is "I peered at the window next to the door. It looked to be double or triple pane glass. Crouching down slightly, I saw a recessed mechanism for a metal shutter door, almost like a security gate. Presumably, upon activation, it would slam down and block entry.". Understand "shutter" as windows. Understand "blinds" as windows.
[TODO: Ask Val about shutters if they are observed]

the front door is a lockable unlocked door. the front door is open. front door is west of the Foyer and east of the Front_Porch. The description is "A large wooden door, painted white as a preacher's picket fence. It didn't have a window or peephole. Something seemed odd about the lock, like it had been damaged. There was splintered wood on the side of the doorframe where someone had apparently forced the door open." Understand "doorframe" as front door.
Rule for writing a paragraph about the front door:
	say "[if the front door is open]The front door stood open to the porch.[end if] [if the front door is unexamined]I could tell right away that something was wrong, like the door had been damaged somehow.[end if]".
	
The lock is scenery in the Front_Porch. The lock is a clue. The description is "I could see obvious scratch marks at the deadbolt that could've been left by an intruder using a lockpick. Going by the state of the doorframe, the attempt hadn't been successful.";
	
Foyer is a room. The description is "I walked into the spacious foyer, trying not to walk into the large lacquered screens in front of the door. The shiny black wood was decorated with an intricate picture in gold paint, depicting a Chinese court scene. It seemed at odds with the exterior of the house, but matched the rest of the decor; the interior was a mixture of Old World furniture and Asian influences.[if Body_Discovery is happening][paragraph break]A layer of snow had blown in through the open doorway, and was slowly melting into a puddle on the enormous Persian rug.[end if]
[if Guest_Arrival is happening][paragraph break]Three men stood on the rug, their coats and pant cuffs damp with snow. Val made introductions all around, as if nothing was wrong. [paragraph break]I studied their faces carefully. If one of them knew about Alan upstairs, they weren't letting on. The three men were overdressed for vacation, as rich men often are. But somehow, they were oddly mismatched. I doubted that they came here together.[end if]"

Section 1 - Greatroom

Greatroom is a room. Greatroom is east of the Foyer. The description is "The greatroom was clearly where the occupants of the house were meant to spend the majority of their time. Tall, dark wooden rafters criscrossed the high ceiling, the exposed beams clearly meant to evoke a Swiss chalet.
	
A large set of sofas were arranged around a huge rug. A dark [if the stain is examined]wine [end if]stain was conspicuous on the armrest, standing out on the white fabric. Everything in the room faced a gray slate fireplace. [if the fire is lit]A fire roared inside, fresh logs having been added not too long ago.[end if]

A small spiral staircase in the corner led up to a reading nook, which was open to the greatroom, separated by a wooden balustrade.[if the radio is switched on] Coming from somewhere up there I heard [carol title] warbling from what sounded like an old radio.[end if]".
To decide whether the fire is lit:
	If the scene is Body_Discovery, yes;
	If the scene is First_Investigation, yes;
	no.
The stain is scenery in the greatroom. The stain is a clue. The printed name is "stain on Greatroom sofa". The description is "An oblong dark red spot about the size of a pear stood out from the beige couch. From the color, it looked like wine. As I looked at it, I realized something on the floor was reflecting firelight back at me.".;

The sofa is scenery in the greatroom. Understand "couch" as sofa.

After examining the sofa for the first time:
	Now the glass shard is in the greatroom.
	
After examining the stain for the first time:
	Now the glass shard is in the greatroom.
	
After examining the rug for the first time:
	Now the glass shard is in the greatroom.

[Does this work?]
After examining the glass shard for the first time:
	Now the shattered glass is in the greatroom.	

The glass shard is a thing. The glass shard is fixed in place. The description is "A broken shard of glass.[if the shattered glass is examined] It came from a broken wineglass in the greatroom.[end if] The ruined facets of vintage crystal reflected light like a cheap engagement ring.[paragraph break]I crouched down for a closer look and realized it had come from a shattered wineglass,  the pieces obscured by the sofa.".
Instead of taking the glass shard:
	try examining the glass shard.

The shattered glass is a clue. The printed name is "broken wineglass". Understand "broken wineglass" as shattered glass. The description is "The curves of the wineglass were jagged edges now, a heap of shattered crystal under the sofa. It must've fallen from quite a height.".
After taking the shattered glass:
	say "I had enough of a mess on my hands without taking this one with me, but kept it anyway. It told an interesting story.";
	stop the action.
	
[Nonsense scenery]
The rug is scenery in the Greatroom. The description is "I looked at the plush carpet, checking it for footprints. A shoe size can be pretty damn circumstantial, but at this point, I needed every clue I could get.[paragraph break]I didn't see one, it was just as pristine as the drifts of snow in the valley below.[paragraph break]But something caught my eye, something small and sharp, glinting in the light of the room as I walked the perimeter of the rug. A shard of glass by the edge of the sofa.";

The staircase is scenery in the Greatroom.The logs are scenery in the Greatroom.The balustrade is scenery in the Greatroom.The ceiling is scenery in the Greatroom.The rafters are scenery in the Greatroom.The beams are scenery in the Greatroom.

Section 2 - Reading Nook

Reading_Nook is a room. Reading_Nook is above Greatroom. The printed name is "Reading Nook". The description is "I climbed the stairs to the reading nook. Shelves lined the walls of the small room, and a couple of books had been knocked off them onto the floor. A pair of wingback armchairs faced each other with a coffee table in between. A small pool of red liquid lay underneath the table.[if the scene is body_discovery][paragraph break]A man sat in one, slightly paunchy and slightly grey, his eyes and mouth wide open. His glasses were askew. He was wearing a navy blue cardigan, stained all over the front with a dark, almost black liquid. What looked like a small knife was sticking out of his neck, plunged in so far that only the handle was visible.[end if]".
The body is scenery in the reading_nook. Understand "corpse / man" as body. The description is "He looked like he was fifty, but something about his well-preserved look told me that he was probably sixty. It wasn't that he was in good shape-- I doubted he'd seen much real exercise since he was in high school, and maybe not even then. He struck me as a debate team sort of guy.  I could tell he didn't get out much. His fingers were broad, but smooth. His hands had no calluses and no rings, but he wore a Rolex watch. It wasn't fake, and had cost probably three times what my car was worth before I'd driven it off a cliff a few hours ago."[TODO: Master Bedroom closet, one pair of boots, unused]
Instead of taking body:
	say "I didn't want to move him just yet.";
	stop the action.
The knife is scenery in the reading_nook. The knife is a clue. The description is "It looked like a silver carving knife with an ivory handle. A monogram on the end read [quotation mark]AHB[quotation mark]. It didn't look that long or that sharp, but someone had made a pretty clean business of stabbing Bowden with it. Or maybe they'd just gotten lucky. It happens like that sometimes."

the shelves are scenery in the reading_nook. Understand "bookshelves" as shelves. The description is "Mostly non-fiction: scholarly journal archives, collections of essays, and books on literature. A small section appeared to contain first and second editions. The owner seemed to have a bit of a collector's streak.".

the books are scenery in the reading_nook. 
Instead of taking books:
	say "I thought I'd better not disturb the scene. They were just some random books anyhow, not much use to take them with me.";
	stop the action.

[TODO: Remove body once scene ends]

The radio is a device in the reading_nook. The radio is switched on. The description is "It was vintage, maybe 1920 or 1930 if I had to guess, though the polished dark wood didn't look like it'd aged a day.".

the pool of wine is a clue in the reading_nook. It is scenery. The description is "A small pool of red wine had fallen on the rug underneath the table, bleeding out onto the wood floor."

Instead of switching on the radio:
	say "I wasn't really in the mood for more carols.".
Instead of taking the radio:
	say "I didn't see the point in carrying an old-fashioned wood radio with me.".

Rule for writing a paragraph about the radio:
	say "An antique wooden radio sat on the table[if the radio is switched on], playing Christmas carols[end if].".
	
To say carol title:
	Choose a random row from the Table of Christmas Carols;
	Say "[quotation mark]";
	say description entry;
	Say "[quotation mark]".

Table of Christmas Carols
Description
"God Rest Ye Merry, Gentlemen"
"O Come, All Ye Faithful"
"Angels We Have Heard on High"
"Hark, The Herald Angels Sing"
"We Three Kings"

a bottle of wine is in the Reading_Nook. It is a clue. The description is "A Bordeaux from back in 2001, uncorked and almost empty. Expensive bottle to be drinking alone."

a wineglass is in the Reading_Nook. It is a clue. The description is "A crystal wineglass, empty but for a few drops of red wine at the bottom.".

When Body_Discovery ends:
	Now Val_House is in the Reading_Nook;
	say "Val came up the stairs, freezing the second she saw the body. Her eyes narrowed, and I could tell her mind was racing, the first time I'd seen anything but placid boredom on her face. Half of me was relieved to know that there was something in this world that could perturb her. The other half was unnerved by it. She looked away and hitched the poker face back on pretty quick.[paragraph break]Val nodded at the poor stiff and said, [quotation mark]Meet Professor Alan Bowden, our host this weekend.[quotation mark][line break]";
	wait for any key;

Chapter 10 - Scene Prearrival



Chapter 11 - Scene Guest_Arrival

When Guest_Arrival begins:
	say "[if the player is not in the Foyer]I heard the front door open, and the sound of voices from the foyer. It closed a minute later.[end if][if the player is in the Foyer]The front door opened, and three men filed in, a lanky one in designer jeans holding the door for the other two. He closed it behind them, and they stood there looking around and putting snow on the rug, as though they expected a butler to come and announce them.[end if][paragraph break][if the player is in the Reading_Nook]Val and I glanced at each other across the dead man, and she left back down the stairs.[end if][if the player is in the Greatroom]Val came down the stairs, and crossed the room toward the sound of the noise.[end if]";
	wait for any key;
	now Jan_Arrival is in the Foyer;
	now Scott_Arrival is in the Foyer;
	now Nathan_Arrival is in the Foyer;
	now Val_House is in the Foyer;
	now the front door is closed.

When Guest_Arrival ends:
	Remove Jan_Arrival from play;
	Remove Scott_Arrival from play;
	Remove Nathan_Arrival from play;

Jan_Arrival is a man. The printed name is "Jan". The description is "Jan Svennson was a broad-shouldered man with pale blue eyes. He was casually brushing snow off a European performance fleece sweater. Either he liked ice climbing, or he wanted people to think he did. He had the handshake of a salesman and the grin of a frat boy.".
Scott_Arrival is a man. The printed name is "Scott". The description is "Scott Gage, on the other hand, was tall and lanky, and didn't seem at all suited to the cold. He wore a pair of Japanese selvedge jeans with the cuffs turned up to make sure everyone knew it. I'd have guessed he'd picked them up somewhere in SoHo if it weren't for the sweater he was wearing, useless against real cold, as all Californian sweaters are.".
Nathan_Arrival is a man. The printed name is "Nathan". The description is "The sideswept brown locks and pencil mustache were meant to look youthful and sporty, like he'd just stopped playing cricket for teatime. The lines on the face and brow made him look more Vincent Price than Errol Flynn, though. I could tell by the way he stood that he didn't have a care in the world, or at least I wasn't one of them. His half-lidded stare gave him an air of casual arrogance, like he was perpetually waiting for the valet to bring his car around.".

Instead of saying hello to Jan_Arrival:
	say "He didn't seem to be in a talking mood. He kept tapping his foot and looking at the door like he had somewhere to be, even though we both knew he wasn't leaving soon. None of us were.";
	stop the action.
Instead of saying hello to Scott_Arrival:
	say "He was all nerves, maybe he'd never seen a dead man before. He put a cigarette in his mouth, patted a few pockets for a lighter, before apparently thinking better of the whole thing, and putting it away. I thought I'd talk to him later when he was a little less jittery.";
	stop the action.
Instead of saying hello to Nathan_Arrival:
	say "I approached him and got a condescending look for my trouble. He clearly didn't want to speak to me. At least, not until he had a reason to.";
	stop the action.

[LOGIC to change scene conditions from Guest_Arrival to First_Investigation]
Left_Guests is a truth state that varies. Left_Guests is false.

Instead of going west in the Foyer during Guest_Arrival:
		now Left_Guests is true;
Instead of going east in the Foyer during Guest_Arrival:
		now Left_Guests is true;
Instead of saying hello to Val_House in the Foyer during Guest_Arrival:
	now Left_Guests is true;

To decide whether first investigation starts:
	If Left_Guests is true:
		decide yes;
	decide no.

Chapter 12 - Scene First_Investigation



When First_Investigation begins:
	say "Val waited a minute for the conversations the three were having to die down.";
	say "(Press a key)";
	wait for any key;
	[TODO: clear the screen]
	say "She folded her arms across her chest and took a deep breath quiet enough that only I heard it.[paragraph break][quotation mark]Gentlemen, we have a problem. Alan's dead. We found him upstairs, stabbed.[quotation mark][paragraph break]A stunned silence followed. When it was clear no one was going to break it, she went on. [quotation mark]I'm going to call it in to the New York Magistrate's and find out who isn't on vacation that they can send over.[quotation mark] She lifted a hand, exposing her pale wrist enough to read the face of her watch. [quotation mark]It's going to be at least six hours before they can send someone, and they'll have to make it through what's left of the winter storm. Until we can figure out exactly what happened and who's responsible, I suggest we all stay in our rooms. My associate here has some experience with police investigation, he can do the basics until the officials show up.[quotation mark][paragraph break]Nathaniel seemed to bristle at this. [quotation mark]Hang on a minute, wait in our rooms? Am I to take it you're presuming us suspects? How do I know you and your friend didn't just kill Alan?[quotation mark][paragraph break]Val shrugged and pointed at me. [quotation mark]It happens that my friend here is the only one of us with a solid alibi, unless I'm mistaken.[quotation mark][paragraph break]The lack of a response indicated that she wasn't, which bothered me a little. The three picked up their bags and trundled down the hall, varying degrees of insulted, Jan called back in a raised voice. [quotation mark]You're making a big mistake. Don't you remember what happened at Lake Geneva in 1986? I think there's someone out there who got Alan, and now we're sitting ducks.[quotation mark][paragraph break]He said it with false bravado, and I shouldn't have let the idea take root in my mind, but it did.";
	now Nathaniel_Investigation is in the Nathan_Room;
	now Scott_Investigation is in the Scott_Room;
	now Jan_Investigation is in the Jan_Room;
	now the front door is closed;
	now the front door is locked.
	
[LOGIC for when shutters come down]
Shutter_Counter is a number variable. Shutter_Counter is usually 0.
Every turn during First_Investigation:
	Increase Shutter_Counter by 1;
	If Shutter_Counter is 3:
		say "Whisper quiet, shutters slid down on the inside of every window in the house. They looked like opaque fabric window shades, but the heavy sound of the seal told me the core was probably metal. The moonlight went out as suddenly as if someone had thrown a curtain over it.[paragraph break]";
		now SHUTTERS_DOWN is true;
		say "(press any key)";
		wait for any key.
[TODO: make shutters scenery visible from all interior rooms]
		
Scott_Investigation is a man. The description is "He had an unlit cigarette between his lips. They all seemed to smoke. His fingers fumbled with a brushed metal lighter and didn't seem to be making much progress, but he was giving it the old college try. I watched his eyes scan across the walls out of habit, and annoyance flicker briefly in them as he failed to find a TV on any of them."


Jan_Investigation is a man. The printed name is "Jan". Understand "Jan" as Jan_Investigation. The description is "He stood well over six feet tall, but only about as wide as an aircraft carrier. His dirty blonde hair looked windswept, but it probably looked that way when he got out of bed. He wore a sleek gray performance jacket made from some synthetic material. The snow sat on top of it in beads. I didn't recognize the brand, which meant that it had probably cost about three hundred dollars.".
			
			[Even through the thick turtleneck he was wearing, I could tell from his size that his back and forearms got a lot of work. It didn't seem like he needed all that gear, I'd have believed he could claw his way to the top of Everest unaided.[paragraph break]The gray sweater had flecks of dark brown dried on it, only really visible in the light.]
[TODO: move this description to his room when he removes the jacket]

Rule for writing a paragraph about Jan_Investigation:
	say "Jan stood here amid his piles climbing gear, coiling a long length of rope around one of his broad shoulders.";

Nathaniel_Investigation is a man. The printed name is "Nathaniel". The description is "TODO".

Section 1 - Main House

Section 2 - Hallway Downstairs

Hallway_Downstairs is a room. Hallway_Downstairs is east of the Greatroom. The printed name is "Downstairs Hallway". The description is "A long narrow corridor connected the entrance of the house with the bedrooms. Lights were recessed into the ceiling overhead, shining down onto the polished wood floor. Maybe some people liked this sterile modern crap, but it made the place look like an art gallery, as far as I was concerned. A couple of paintings even adorned the walls, so maybe that was the idea, and I was just uncultured."

the painting is scenery in the Hallway_Downstairs. it is a closed openable container. The description is "An oil painting of a crowded scene, bright colors jumping out from shadows and mottled light coming down from above. Everyone in the painting seemed pretty upset, though it wasn't really apparent why. It looked like it was done in the Romantic style, but I'm no art historian. It could just as easily have been the Old Testament as Paradise Lost.".

Carry out opening the painting:
	say "I felt around the edges of the gold-trimmed frame and found a latch. The entire painting swung off the wall smoothly, like the hinges were well oiled. A refrigerated compartment inside leaked cold vapor like an old sci-fi movie used dry ice. It was full of plastic pouches.";
	now the painting is open.

The pouch of liquid is in the painting. The description is "The clear plastic was mostly covered with white labels and barcodes, most of which had been scratched out with a marker. It held a thick, dark liquid I tried not to look too closely at.".

Instead of opening the pouch of liquid:
	say "I was only going to open it for one reason.";
	stop the action.

Instead of drinking the pouch of liquid:
	say "I tried not to look at the viscous contents as I tore off the end of the plastic with my teeth. I closed my eyes and forced myself to keep drinking until it was empty. It warmed me like drinking spiced cider by the fireside. Until that moment, I hadn't realized how cold I'd been.";
	now Blood_status is true;
	remove the pouch from play.

Section 3 - Kitchen
			
Kitchen is a room. Kitchen is east of the Hallway_Downstairs. The description is "I stepped into a kitchen big enough for a game of football. Wooden cabinets and handsome tile in earth tones went from wall to wall. The quaint country look was somewhat ruined by the collection of modern stainless steel kitchen appliances. They were brand new and it looked like not one of them had been used. It figured, this didn't seem like the kind of place that had a cooking staff.".

Section 4 - Office

Office is a room. Office is north of the Hallway_Downstairs. The description is "Of all the rooms I'd seen in the house, this one looked the most lived in. It had the musty smell of old books mixed with stale coffee coming from several cups on the desk.".

cups are scenery in the office. The description is "Mugs of coffee, stone cold. I could see brown stains on the sides of the half-empty cups where the liquid had evaporated. They'd been here a few days, but that didn't indicate a time of death. The kind of man who leaves more than two coffee cups sitting on a desk isn't in a hurry to clean up after himself.".
Instead of taking the cups:
	say "Val asked me to find his killer. I wasn't going to do his dishes.";

the desk is scenery in the office. the desk is a closed openable container. The description is "Unlike most of the other expensive furniture in the house, it looked like the mahogany desk got a lot of use. A computer at least five years old, sat on it, the keyboard mostly buried by papers and books. Worn brass handles barely hung on to a row of drawers along the right side.";

the papers are scenery in the Office.
Instead of examining papers:
	say "I thumbed through the pile on the desk, finding term papers and dissertations, collections of academic journals. Underneath most of it was something that caught my eye, a document with dollar signs on it and more zeroes than I'm used to seeing on paper.";
	Remove the bank statement from play;
	now the bank statement is in the Office.

a bank statement is a clue. it is inside the desk.

Section 5 - Basement

Wine_Cellar is a room. Wine_Cellar is below the Hallway_Downstairs. The printed name is "Wine Cellar". The description is "The second I walked into the dark wine cellar, recessed lights in the ceiling turned on, probably activated by a motion sensor.
[paragraph break]
A wine rack ran the perimeter of the room, holding enough bottles to supply a French restaurant. A few seemed to be missing here and there. A wooden chair sat in the corner."

The wooden chair is scenery in the Wine_Cellar. The description is "A simple chair made from dark wood, appearing to have woven reeds for the seat. It's probably just here to add to the country style decor, I can't imagine anyone sitting in the cellar drinking wine long enough to use it.".

The wine rack is scenery in the Wine_Cellar. The description is "What had to be about a hundred dark green bottles rested in the diamond-crossed wooden cubbyholes, corks facing out.[paragraph break]I took a look at the gaps in the collection. A couple were missing from a section of Californian whites. One was missing from the other end, the hole surrounded by bottles of Burgundy red."

Understand "missing wine" as wine rack.
Understand "missing bottles" as wine rack.

NEED_EMERGENCY_SHUTTER is a truth state that varies. NEED_EMERGENCY_SHUTTER is false.

The fuse box is in the wine cellar. The fuse box is a device.

Section 6 - Upstairs Hallways

Hallway_Upstairs is above the Hallway_Downstairs. The printed name is "Upstairs Hallway".

North_Hallway is north of the Hallway_Upstairs. The printed name is "North Hallway".

East_Hallway is east of the Hallway_Upstairs. The printed name is "East Hallway".

Section 7 - Master Bedroom

master bedroom door is a closed door. it is scenery. it is north of the North_Hallway and south of the Master_Bedroom.

Master_Bedroom is a room. The printed name is "Master Bedroom". The description is "The master suite sat at the north end of the house and [if SHUTTERS_DOWN is true]had the best  view of the valley and the lake for miles [end if][if SHUTTERS_DOWN is false]had a row of floor-to-ceiling paned windows that ran the length of the room, but the shutters were closed, keeping the room dark as night[end if]. A four-poster bed with a thick down comforter looked twice as soft as the dead man's sweater had. Ornate wooden nightstands flanked the bed on either side. One was bare except for a lamp, the other was piled high with what must have been bedtime reading. In the corner of the room, I could see into a spacious closet."

the book is a clue. the book is in the Master_Bedroom. The description is "[italic type]Kokoro[roman type], by Soseki Natsume. The binding looked expensive and uncracked. A post-it note was stuck to the cover. Just two words were written on it: [quotation mark]I'm sorry.[quotation mark][paragraph break]I started to flip through the book and noticed something handwritten on the title page. The cursive looked like it'd been written with a fountain pen.[paragraph break][paragraph break]For Kelly[line break]     Somewhat appropriately, I got this book from my teacher, and now I'd like you to have it. More than whatever literary value it may have, from now on, I'll always remember it as the first book we read together.[paragraph break]Yours,[line break]Alan".
Rule for writing a paragraph about the book:
	say "A book lay on the nightstand.".

Instead of opening the book:
	try examining the book.
Instead of reading the book:
	try examining the book.

Instead of entering the closet:
	try examining the closet.
Instead of going west in the Master_Bedroom:
	try examining the closet.

Walk-in closet is scenery in the master_bedroom. The description is "I walked into the closet and flicked on the light. Three quarters of it was the usual cruft that finds its way to a person's closet and never gets worn.[paragraph break]I looked at the rest of it. A handful of suits that looked like they'd been bought in the 80s, judging by the lapels. Performance fleece and hiking boots, never worn. Velvet smoking jacket, no sweatpants or loungewear. Professor Bowden seemed to have some old-fashioned sensibilities.".

the wall safe is a closed locked container in the Master_Bedroom.

the manila envelope is a closed container in the wall safe.
instead of opening the manila envelope:
	say "I opened the envelope, and took out the contents, a handful of photos";
	now the player has the photos;
	remove the manila envelope from play.

the photos are a clue. The description is "Several photographs of a blonde young man in his early twenties, taken with a telephoto lens. He hadn't spotted the photographer. He's wearing a polo shirt and jeans, so it must have been taken months ago. The man was holding a cup of coffee, and exiting a coffee shop. The daily routine must have made it pretty easy for whoever was tailing him. The height of the shots puts the photographer in a car across the street. The photos looked dim and hazy, even for a black and white shot.".

Section 8 - Guest Bedrooms

Nathan_Room is a room. The printed name is "Oak Room". It is east of the East_Hallway. The description is "The room had a large white rug in the center, and a four-poster bed that looked nice enough that it might have once sat in the master bedroom. An ugly, expensive-looking valise lay on the bed, its weight sinking it a full six inches into the feathertop mattress.".

Scott_Room is a room. The printed name is "Sumac Room". It is south of the East_Hallway.

Jan_Room is a room. The printed name is "Hemlock Room". It is north of the East_Hallway. The description is "The room had an angled ceiling to give the impression of a cozy attic or country cabin, except it was about as big as my entire apartment. Piles of climbing equipment and bunched-up coils of rope were heaped in the corner on top of his luggage. A gray sweater hung on a chair, flecks of dark reddish-brown stains dried on it.".
The sweater is scenery in the Jan_Room. The description is "It was a thick wool turtleneck, so big it looked like a blanket draped over the chair. Around the front and the sleeves, blood stains were visible where some had apparently splashed back onto it."
		
SHUTTERS_DOWN is a truth state that varies. SHUTTERS_DOWN is false.
[TODO move me]

[TODO: If the player is too confused, simply change to an objective, use the "acting confused" cues from EmShort]

Chapter 13 - Scene First Sleep

Section 9 - PC Bedroom

PC_Bedroom_Door is a closed door. The printed name is "bedroom door".
PC_Bedroom_Door is scenery.
PC_Bedroom_Door is west of the North_Hallway and east of the PC_Bedroom.

Rule for writing a paragraph about the PC_Bedroom_Door:
	say "".

Before opening PC_Bedroom_Door for the first time:
	if First_Sleepy is true:
		Continue the action;
	Otherwise:
		say "I reached the room where Val was staying, and supposed it was where I was staying, too. My tired fingers closed tightly around the doorknob like a pitcher throwing his last solid knuckleball in the ninth inning. [paragraph break]I paused for a moment, mentally tallying what I'd put together about what had happened. I figured I ought to make sure I'd found enough clues for the day before I turned in.";
		stop the action.

The PC_Bedroom is a room. The printed name is "Bedroom". The description is "[if the scene is First_Sleep]I checked my watch, it was getting late, almost noon. I had a million things to think about, but figured I should get a few hours of sleep while I still could.[end if]"

Val_Sleep is a woman. The printed name is "Val". Understand "Val" as Val_Sleep. The description is "[if the scene is First_Sleep]Val was lying on top of the covers, facing the window. Her breathing was steady and slow, but I couldn't tell if she was asleep. She wore just a satin pajama shirt. If the cold bothered her, she didn't show it.[end if]"

the bottle of bourbon is in the PC_Bedroom. The description is "A bottle of Woodford Reserve. One of the better ways to pass the time, if I had to choose. It was still half full, if I had to be an optimist about something." ;

instead of drinking the bottle of bourbon for the first time:
	say "I poured out a measure into one of the glasses on the nightstand and drank it slowly, letting it linger on my tongue.[paragraph break]I thought about the idea that someone was just outside the window, peering in, waiting the way a hunter sits in a blind, waiting for ducks. I thought about the three men I'd just met, and how I liked none of them. I thought about the man I'd seen in the chair with his eyes wide open, who didn't seem to mind that I was drinking his bourbon, since he didn't mind much of anything anymore.";
instead of drinking the bottle of bourbon for the second time:
	say "I went back to the bottle and poured again, more generous this time. I listened to the sound of something between snow and frozen rain pattering against the window. I listened to Val's steady breathing. She was either asleep, or thinking just as hard as I was. I stared at her back a long time, trying to decide if I wanted to talk to her.";
	
instead of drinking the bottle of bourbon for the third time:
	try sleeping.

[TODO: Make sure sleeping has a decent message]
[TODO: Make sure drinking bourbon outside the First_Sleep results in good messages]

instead of drinking the bottle of bourbon:
	say "I decided it was time to cut myself off. I'd never found a clue hidden at the bottom of a whiskey bottle.".
	
instead of taking the bottle of bourbon:
	say "Taking the entire bottle with me wouldn't have been a very classy move, but the thought crossed my mind.".

instead of sleeping in the PC_Bedroom during First_Sleep:
	now first_slept is true.

When First_Sleep begins:
	now Val_Sleep is in the PC_Bedroom.
	
When First_Sleep ends:
	say "I changed into my pajamas and got into bed under the covers. I kept a reasonable distance between the two of us on the bed, though she didn't seem the type to get prudish about that kind of thing. I lay there thinking for a long time, trying to put together everything I'd heard into a picture that made sense. After five minutes that took two hours, I fell asleep, and dreamt of nothing.";
	remove Val_Sleep from play;
	say "[paragraph break](press any key)";
	wait for any key.
	
	
The memo is a thing. The description is "Kid,[line break]You'll be hungry soon. Alan used to keep a personal stash behind a painting in the hallway downstairs. [paragraph break]Help yourself, I need you to stay sharp for this one. Or don't, your call.".

Section 1 - Conversation Riding_Scene

Chalet is a subject. Understand "ski chalet/house" as chalet.
Sunrise is a subject. Understand "dawn" as sunrise.
Vals_Car is a subject. Understand "Mercedes" as Vals_Car.

what her car is a repeatable questioning quip.
	The printed name is "about her car". The true-name is "Vals_Car".
	[Understand "Mercedes/car/her car/the car/Mercedes" as what her car.]
	The comment is "'Nice ride,' I said.".
	The reply is "'You should have called,' Val replied, ignoring my comment.".
	It mentions Mercedes.
	The proper scene is Riding_Scene.
what the chalet is a repeatable questioning quip.
	The printed name is "about the chalet". The true-name is "what the chalet".
	It mentions house.
	It mentions ski chalet.
	[Understand "ski chalet/house" as what the chalet.]
	The comment is "Where are we going?".
	The reply is "TODO.".
	The proper scene is Riding_Scene.
what time sunrise is a repeatable questioning quip.
	The printed name is "about sunrise". The true-name is "what time sunrise".
	It mentions dawn.
	The comment is "'Sun goes up at 7:03 today. Always check the time before you leave for the night,' she said.".
	The reply is "I looked out the window, trying not to feel like a kid being lectured by his mom.".
	The proper scene is Riding_Scene.

	[An availability rule for what time sunrise:
		it is off-limits.
		it is available.]

Chapter 15 - Conversations First_Investigation

Section 1 - Val

who alan is a repeatable questioning quip.
	The printed name is "about Alan".
	The comment is "[quotation mark]How well did you know Alan?[quotation mark]".
	The reply is "[quotation mark]I knew him for probably ten years, we were only close for a handful of those. He wasn't perfect, but I knew him well enough that I feel like he deserved better than he got.[quotation mark]".
	It quip-supplies Val_House.
	The proper scene is First_Investigation.

about murder is a repeatable questioning quip.
	The printed name is "about the murder".
	The comment is "Val leaned in close until her face was inches from mine, and lowered her voice, even though no one was around. [quotation mark]Listen, kid. Here's how it's going down. We have a few hours before what passes for the law for our kind shows up and starts stomping its flat feet around. They don't much care if the wrong one of us takes the rap, or if no one does. Alan's nobody to the Circle, I doubt they'd care if this case went stone cold. But he used to be a friend of mine, and this is something I want to do for him.[quotation mark]".
	The reply is "I didn't say anything.".
	It quip-supplies Val_House.
	The proper scene is First_Investigation.

about pouch is a repeatable questioning quip.
	The printed name is "about the pouch".
	The comment is "[quotation mark]So where exactly did you get... Who--[quotation mark] I began.".
	The reply is "[quotation mark]They've got a skim set up with the Red Cross. Like the mafia used to do with the nightly take at casinos. We've got ways to keep anyone from talking about it.[quotation mark][if Blood_status is true][paragraph break]Something inside me rebelled at the thought of it, my stomach churning. [quotation mark]I can't just take it, it could've been used to help someone![quotation mark][paragraph break][quotation mark]It is going to help someone: you. If someone from outside killed Alan, I need to know if he's likely to come back. If it was someone here, I need you on your toes.[end if]".
	It quip-supplies Val_Investigation.
	The proper scene is First_Investigation.

who nathaniel is a repeatable questioning quip.
	The printed name is "about Nathaniel". The true-name is "about Nathaniel".
	The comment is "[quotation mark]This Nathaniel Wyndham, is he old money?[quotation mark] I asked."
	The reply is "[quotation mark]I guess. He made a sizeable fortune selling boots to the Allies during World War I, a real war profiteer. He used it to buy that ridiculous title, a couple of country estates, and even restored an old manor house. But a little time running with the Circle crowd will tell you that [quotation mark]old money[quotation mark] is a relative term.[quotation mark]".
	It quip-supplies Val_House.
	The proper scene of who nathaniel is First_Investigation.
	
what was in it for me is a repeatable questioning quip.
	The printed name is "what was in it for me". The true-name is "what was in it for me".
	The comment is "[quotation mark]Seems like a pretty long way to stick my neck out for you. What's in it for me, exactly?[quotation mark]".
	The reply is "She gave me a sharp look. I could tell it got a lot of use, it was just as practiced as everything else about her. Here was a woman who wasn't afraid to throw her weight around, and made it a bad habit to make her do it.[paragraph break][quotation mark]Think of me as your first client as a private dick. I'm asking you to make this one on the house. You owe me, remember?[quotation mark][paragraph break]She had me there. I didn't know if this was the kind of thing I could pay back, but I didn't like owing that kind of debt.".
	It quip-supplies Val_House.
	The proper scene is First_Investigation.
	
Section 2 - Nathaniel

why nathaniel here is a repeatable questioning quip.
	The printed name is "why Nathaniel came here".
	The comment is "[quotation mark]So, do you come here often? I'm having trouble telling if this is a private party or a resort. Were you good friends with Alan?[quotation mark]".
	The reply is "[quotation mark]He was all right. Really, the house has nice position, and at the height of skiing season, it's hard to beat the crowd.[quotation mark] He gestured vaguely towards the surrounding countryside as though it were a buffet.".
	It quip-supplies Nathaniel_Investigation.
	The proper scene is First_Investigation.

whether he's been here before is a repeatable questioning quip.
	The printed name is "whether he's been here before".
	The comment is "[quotation mark]You've been here before.[quotation mark]".
	The reply is "[quotation mark]Oh, sure. He liked to keep things small, but he always wanted to be the center of attention. He'd do these little get-togethers a few times a season. Here in the winter, and his home in Martha's Vineyard for the summers. There's nothing quite like riding a horse along the beach in the moonlight, is there?[quotation mark]".
	It quip-supplies Nathaniel_Investigation.
	The proper scene is First_Investigation.
	
why isn't nate upset is a a repeatable questioning quip.
	The printed name is "why he isn't especially upset".
	The comment is "[quotation mark]You don't seem all that upset he's dead.[quotation mark]".
	The reply is "[quotation mark]I liked him well enough, but it was really only ever a friendship of convenience. He threw great parties, knew the right people, you know. He raised both eyebrows playfully. You can't possibly still think one of us did it? I think it's pretty clear that it was an outsider who did the killing.[quotation mark]".
	It quip-supplies Nathaniel_Investigation.
	The proper scene is First_Investigation.
an availability rule for why isn't nate upset:
	If the current interlocutor is not Nathaniel_Investigation, it is off-limits;
	if the player recollects why nathaniel here, it is available;
	otherwise it is off-limits.
	
about nates alibi is a repeatable questioning quip.
	The printed name is "about his alibi".
	The comment is "[quotation mark]Where were you last night?[quotation mark]".
	The reply is "His lofty affected manner disappeared the second I asked. His smile was still fixed on his face, but the black eyes were suddenly cold and threatening. I met his gaze, unflinching. It felt like skinny dipping in Lake Ontario.[paragraph break][quotation mark]I don't know what the hell you think you're playing at, but let's get one thing straight. You're nobody, and if you carry on making wild accusations, you're going to make a lot of enemies. Who knows, maybe even one your little girlfriend can't protect you from.[quotation mark]".
	It quip-supplies Nathaniel_Investigation.
	The proper scene is First_Investigation.
an availability rule for about nates alibi:
	If the current interlocutor is not Nathaniel_Investigation, it is off-limits;
	if the player recollects why isn't nate upset, it is available;
	otherwise it is off-limits.

what sanction is a repeatable questioning quip.
	The printed name is "about the Sanction".
	The comment is "[quotation mark]What happens to folks who don't wait their turn?[quotation mark]".
	The reply is "[quotation mark]The Circle only really has a single sanction.[quotation mark][line break]
[quotation mark]What is it?[quotation mark][line break]
He gave me a smile enough like a leer that it made my skin crawl, and looked at me through half-lidded eyes.[line break][quotation mark]What do you think?[quotation mark]".
	It quip-supplies Nathaniel_Investigation.
	The proper scene is First_Investigation.

Section 3 - Scott

about jan svensson is a repeatable questioning quip.
	The printed name is "Jan".
	The comment is "[quotation mark]Have you met Mr. Svensson?[quotation mark] I asked.".
	The reply is "[quotation mark]Jan? Jesus, I can't stand him. He's insufferable at every damn conference I run into him at. Blowhards like him look down their noses at people like you and me, you know? He'll act like he's slumming it investing in startups, then take all the credit when a tech rally helps lift that boat anchor of a fund he runs.[quotation mark]".
	It quip-supplies Scott_Investigation.
	The proper scene is First_Investigation.
	
hedge fund is a repeatable questioning quip.
	The printed name is "about the hedge fund".
	The comment is "[quotation mark]I take it you're not invested in Svensson's financial ventures, then?[quotation mark]".
	The reply is "He gave me a knowing smile that was not at all kind. [quotation mark]Did he already give you the sales pitch? He probably left out the part where he's lost good ten percent more than the indexes. That joke of a fund of his is bleeding money, it's not surprising he's trying to get new clients to keep things solvent.[quotation mark]".
	It quip-supplies Scott_Investigation.
	The proper scene is First_Investigation.
An availability rule for hedge fund:
	If the current interlocutor is not Scott_Investigation, it is off-limits;
	if the player recollects about jan svensson, it is available;
	otherwise it is off-limits.

who scott killer is a repeatable questioning quip.
	The printed name is "who he thinks did it".
	The comment is "'Who you figure got to Bowden before we got here?'".
	The reply is "The second I asked, he started shifting around like something was crawling under his skin. 'There's someone out there, you mark my words. Did you see the door? They knew he lived alone, broke in, and stabbed him, simple as that. You can bet I'm getting the hell out of here the second the sun sets. This is like Geneva all over again, I'm not ending up like those people!' His high voice was a whine now, the shrill panic of a man who didn't deal well with stress.".
	It quip-supplies Scott_Investigation.
	The proper scene is First_Investigation.
	
what happened in Geneva is a repeatable questioning quip.
	The printed name is "what happened in Geneva".
	The comment is "'What happened in Geneva in 1986?'".
	The reply is "'Some fucking do-gooder with a gun and a handful of silver bullets. Our people are connected enough in the media and the government to keep a tight lid on any leaks, but every so often, one person comes along who can slip through the net. He buried himself in the snow and found a vantage point on a house by Lake Geneva, a wealthy Patron was having a party. Anyone who tried to leave the house at night was picked off at fifty paces. Anyone who tried to run during the day... well, you can imagine.[paragraph break]The Inquisition made a big public show of the execution when they caught him. You know how it goes, they had to look like the situation was under control after a colossal security fuckup like that.'".
	It quip-supplies Scott_Investigation.
	The proper scene is First_Investigation.

Section 4 - Jan

jans work is a repeatable questioning quip.
	The printed name is "about his work".
	The comment is "[quotation mark]So what do you do for a living, Mr. Svensson?[quotation mark] I kept my voice light and conversational, like we were at a cocktail party.".
	The reply is "[quotation mark]Hedge funds, mainly. It's a lot of handshaking and time on the golf course, but it pays for the rest of everything.[quotation mark] He gestured vaguely at the gear.".
	It quip-supplies Jan_Investigation.
	The proper scene is First_Investigation.

about climbing is a repeatable questioning quip.
	The printed name is "about climbing".
	The comment is "[quotation mark]Planning on doing some rock climbing?[quotation mark]".
	The reply is "[quotation mark]I was, before all this happened. You can find the best ice climbing on the Eastern seaboard in the Adirondacks, if you ask me.[quotation mark]".
	It quip-supplies Jan_Investigation.
	The proper scene is First_Investigation.

[TODO: Formatting's a mess here]
about business is a repeatable questioning quip.
	The printed name is "about business".
	The comment is "[quotation mark]How are the markets treating you? With everything I hear in the news...[quotation mark] I trailed off, waiting for the self-appointed expert to jump in and correct the ignorant layperson. He didn't disappoint.".
	The reply is "[quotation mark]Oh sure, we took a hit during the downturn, but so did everyone. We'll bounce back, and I'm not worried, nor are our high-profile clients.[quotation mark][paragraph break]It all sounded a little too well-rehearsed. I saw him give me a quick once over, it was almost imperceptible.[paragraph break][quotation mark]Now's the best time to buy in, when you consider the numbers. Do you know someone who'd be interested in an account with us? Your friend, Ms. Carter, perhaps?[quotation mark][line break]I chuckled politely and gave a noncommital shrug.[line break][quotation mark]There'd be a finder's fee in it for you, of course, if things did move to business. Think it over.[quotation mark]".
	It quip-supplies Jan_Investigation.
	The proper scene is First_Investigation.

about val jan is a repeatable questioning quip.
The printed name is "about Val".
	The comment is "'You've met Val?'".
	The reply is "He looked surprised. 'Sure. Everybody knows Val. For someone who's been around as long as her, I'm surprised she hasn't tried her hand at politics. Just about all the other elders love their little backroom deals and power plays. She hasn't been very interestd in becoming a Patron either. I think you're her first.'".
	It quip-supplies Jan_Investigation.
	The proper scene is First_Investigation.

about patron is a repeatable questioning quip.
	The printed name is "about Patronage".
	The comment is "'Patron?'".
	The reply is "He gave a hearty laugh that didn't endear me any more to him. 'Wow, I guess she's as tight-lipped as they say. Patronage is the flowery little euphemism for the way we expand our little Circle. I was told the term came from the aristocrats in the old days. You know, bring in an artist or a mathematician, someone of value, and preserve their genius for all time. And of course, the prestige that comes from having such a stable. A little trophy case to show off in front of the other elders.' He gave me a grin that made him look like an overgrown schoolboy. 'Well, that was the idea, anyway. In reality, Patrons have needs like anyone else. They'll bring in someone who can bring something practical to the table. Unique skills, money... love.' His grin was starting to look more like a leer.".
	It quip-supplies Jan_Investigation.
	The proper scene is First_Investigation.
		
an availability rule for about patron:
	if the current interlocutor is not Jan_Investigation, it is off-limits;
	if the player recollects about val jan, it is available;
	otherwise it is off-limits.


Section 5 - Val_Sleep

how long she'd known Bowden is a repeatable questioning quip.
	The comment is "[quotation mark]How well did you know Alan?[quotation mark]".
	The reply is "[quotation mark]I suppose we've spent a lot of time together over the years at little soirées like this one. But not well, no.[if BLACKMAIL_KNOWN is true][paragraph break]'Well enough that he'd ask you for help with a blackmailer?'[paragraph break]I listened hard, straining to hear anything against the silence. For what, I wasn't sure. Certainly not a gasp of surprise. I couldn't even hear her blinking.[end if][quotation mark]".
	It quip-supplies Val_Sleep.
	The proper scene is First_Sleep.
	
Chapter 16 - Scene Wakeup

When Wakeup begins:
	now the memo is in the PC_Bedroom;
	now SHUTTERS_DOWN is false;
	now Adrian_Investigation is in the North_Hallway;
	say "I awoke to an empty room, bathed in the silver moonlight. She hadn't made a sound when she'd left. It took a second for me to realize that the shutters had gone back up. Through the window, I could see that lights were starting to come on in the distant houses dotted across the mountainside.[paragraph break]I wasn't sure how long I'd slept, but it must have been about eight o'clock.".

When Wakeup ends:
	remove Adrian_Investigation from play;
	say "TODO";

Section 1 - Adrian_Investigation

Adrian_Investigation is a man. The printed name is "Adrian". Understand "Adrian" as Adrian_Investigation. The description is "He stood well over six feet with a build that belonged on the inside of a steel cage. The designer charcoal suit he wore hadn’t quite been successfully altered to his wide frame. A deep purple tie sat at his neck in a fat knot Donald Trump would have approved of. The dark hair atop his head was neatly parted at the side, and slicked back almost flat to his head. His eyes were gray, and there was something baleful deep in them, peering out.  His size and heavy brow made him look like a gorilla in Prada.[if Wakeup is happening][paragraph break]He introduced himself as 'Adrian Castillo, Deputy to the Warden of the Peace, appointed to serve at the pleasure of the Honorable Countess of Westchester.' I didn't know what most of that meant, but I knew his suit was a little too nice for a cop entirely on the level. I wondered if that all fit on his business card.".

[He was thirty-five and yet not.. He had the look of an old man bitter at the world and the look of a young man pulling the wings off a butterfly. Here was someone who enjoyed pushing people with impunity, I'd bet money on it.]

INTERRO_START is a truth state that varies. INTERRO_START is initially false.

Instead of going south in the North_Hallway during Wakeup:
	now INTERRO_START is true.

about questioning me is a repeatable questioning quip.
	The printed name is "about questioning me".
	The comment is "[quotation mark]So am I a suspect here?[quotation mark]".
	The reply is "'Nah. I'm just going through the formalities, just in case. I just wanted to talk to everyone who had a personal connection with the guy. That leaves you off the hook. Not to mention the the alibi you left, according to your girlfriend.[line break]'Oh?'[line break]'Yeah, that twisted junk heap at the bottom of a cliff. They'll have a heck of a time towing that up. Anyway, if you were wandering out there a couple of hours ago, then there's no way you could get here at the time of death. But hey, if the lady turns out to have done it, maybe I can pin you with accessory to murder if you smile at me real nice.'".
	It quip-supplies Adrian_Investigation.
	The proper scene is Wakeup.

about questioning val is a repeatable questioning quip. It indirectly-follows about questioning me.
	The printed name is "about questioning val".
	The comment is "'I'm going to need you to come with me downstairs. I've got to ask Ms. Carter a few questions, and she asked you be present.' That confused me a bit. I wasn't entirely certain what Val and I were to each other, but I sure as hell wasn't her lawyer.".
	The reply is "".
	It quip-supplies Adrian_Investigation.
	The proper scene is Wakeup.

[TODO: add him calling my name to the intro scene of going in the hallway]

how he knew my name is a repeatable questioning quip.
	The printed name is "how he knew my name".
	The comment is "'Did Val tell you about me?'".
	The reply is "'Nah, you I remember. I couldn't tell you much about these old timers, but your paperwork went through the office just the other day. We like to keep tabs on the newcomers. Your file said you used to work in homicide, huh.' It wasn't a question.".
	It quip-supplies Adrian_Investigation.
	The proper scene is Wakeup.

about my file adrian is a repeatable questioning quip. It indirectly-follows how he knew my name.
	The printed name is "about my file".
	The comment is "'I've only been one of you people for 48 hours, and I already have a file?'".
	The reply is "'You've had a file for three weeks now.' I didn't like that. I didn't like it so much I could hardly think of a cute comeback to make. He seemed to enjoy lording over me the fact that he knew something that I didn't. It was probably a feeling he didn't get to enjoy very often.".
	It quip-supplies Adrian_Investigation.
	The proper scene is Wakeup.
				
[An availability rule for about questioning val:
	If the current interlocutor is not Adrian_Investigation, it is off-limits;
	If the player recollects about questioning me, it is available;
	Otherwise it is off-limits.]

about anyone outside is a repeatable questioning quip. It indirectly-follows about questioning val.
	The printed name is "about anyone outside".
	The comment is "'See anyone on your way in? A couple of guests seemed pretty spooked about the idea that the killer would come back, something about Lake Geneva.' I kept my voice smooth and casual, like I wasn't at all nervous about the idea of being game in somebody else's pheasant hunt.".
	The reply is "'Nope, all quiet out there.' Something in my face must've shown my silent vote of no confidence, since he tried to follow it up. 'Listen, punk. I've been in this business twice as long as you've been alive. If I don't see nobody out there, there ain't nobody.' I didn't tell him that that meant exactly jack and shit in my book. One look at him told me he didn't have an eye for detail. There's people on every force who can't think their way out of a wet paper bag, and I'd have bet my weight in cake donuts that Detective Castillo here was one of them.".
	It quip-supplies Adrian_Investigation.
	The proper scene is Wakeup.


Chapter Scene Interrogation

When Interrogation begins:
	say "TODO[paragraph break]";
	now the player is in the Office;
	now Adrian_Interrogation is in the Office;
	now the quip-suggestion-phrase is "He [could] ";
	now Val_Interrogation is in the Office.

When Interrogation ends:
	say "Val put her cigarette out and got up. Her expression was stony, the businesslike demeanor she'd started with was gone now. Castillo got up, too, but stopped himself from saying anything. He didn't strike me as the sharpest tool in the shed, but he'd clearly learned where the line was. Staying in the good graces of his employer meant staying within the level of harassment his job warranted, and not ruffling the feathers of anyone too important in the Circle.[paragraph break]'You'll let me know if there's anything else I can do to help, Deputy?' she said icily. She hadn't bothered looking at him as she said, it. She gave me a look full of meaning and left the room in the direction of the foyer and closing the door behind her. Castillo suddenly seemed very small standing behind the desk. He must have felt it, too, because he got up and left without another word to me.";
	remove Val_Interrogation from play;
	now Adrian_Interrogation is in the Hallway_Downstairs;
	now Val_SecondInv is in the Foyer;

Section 1 - Val_SecondInv
	
Val_SecondInv is a woman. The printed name is "Val". Understand "Val" as Val_SecondInv.

about my file val is a repeatable questioning quip. It indirectly-follows about my file adrian.
	The printed name is "about my file".
	The comment is "I put on my tough detective voice to try and take some of the surprise out of it. I had an image to maintain. 'I heard about my file from Castillo. You've been stalking me for weeks now?'[line break]'I wouldn't put it like that.'[line break]'How would you put it then? I got the go ahead for a Patron application I put in a while back. That sort of opportunity doesn't come every day, so I scouted for a recruit. And then I made you an offer.'".
	The reply is "".
	It quip-supplies Val_SecondInv.
	The proper scene is Second_Investigation.
	
about our first meeting is a repeatable questioning quip. It indirectly-follows about my file val.
	The printed name is "about our first meeting".
	The comment is "'So the first time we met, that wasn't a coincidence, was it?'[line break]'Would you have chosen differently if you'd known?'[line break]'No.'[line break]'Then what the hell are you sore about?' She was starting to sound impatient again.".
	The reply is "".
	It quip-supplies Val_SecondInv.
	The proper scene is Second_Investigation.

what she wanted to see me about is a repeatable questioning quip.
	The printed name is "what she wanted to see me about".
	The comment is "She lowered her voiceTODO".
	The reply is "".
	It quip-supplies Val_SecondInv.
	The proper scene is Second_Investigation.

Section 2 - Adrian_Interrogation

Adrian_Interrogation is a man. The printed name is "Adrian". Understand "Adrian" as Adrian_Interrogation.

Section 3 - Val_Interrogation

Val_Interrogation is a woman. The printed name is "Val". Understand "Val" as Val_Interrogation.

Section 4 Val_Interrogation

about herself interro is a repeatable questioning quip.
	The printed name is "about herself".
	The comment is "Castillo took an official sort of bearing, or the nearest he could manage to one. 'Please state your name for the record.'".
	The reply is "'Valentine Elizabeth Carter.'[paragraph break]'Any aliases or other names you've used before?'[paragraph break]'Elizabeth Deverell, but not recently.'".
	It quip-supplies val_interrogation.
	The proper scene is interrogation.

about her family interro is a repeatable questioning quip.
	The printed name is "about her family".
	The comment is "'Any family?'[line break]'None living.'[line break]'Married?'[line break]'Widowed.'".
	The reply is "".
	It quip-supplies val_interrogation.
	The proper scene is interrogation.

about her husband interro is a repeatable questioning quip. it indirectly-follows about her family.
	The printed name is "about her husband".
	The comment is "'And what was your late husband's name?'[paragraph break]'Emil. But seeing as he's been dead fifty years, how about we leave him out of this?'".
	The reply is "Castillo didn't pursue it any further after hearing her tone. He probably could have, but didn't want to push things into open antagonism without a reason. I wouldn't have, in his place.'".
	It quip-supplies val_interrogation.
	The proper scene is interrogation.

Chapter 17 - Game Mechanics

Section 1 - Global Variables

BLACKMAIL_KNOWN is a truth state that varies. BLACKMAIL_KNOWN is initially false.

This is the make blackmail known rule:
	if BLACKMAIL_KNOWN is false:
		now BLACKMAIL_KNOWN is true.

Section 2 - Command Overrides

Understand the command "read" as something new. Reading is an action applying to one thing. Understand "read [something]" as reading.

Understand the command kick as something new. Kicking is an action applying to one thing. Understand "kick [something]" as kicking. 
Instead of kicking a person:
	say "In my experience, detective work required far less kicking than 70s cop shows had led me to believe."

Understand the command punch as something new. Punching is an action applying to one thing. Understand "punch [something]" as punching.
Instead of punching a person:
	say "Might be hard to believe from the way I look, but I always thought of my investigative methods as more Hercule Poirot than Dick Tracy.".
Instead of punching something:
	say "I had an Everlast heavy bag for that sort of thing.".
[TODO: Give useful error message for unpunchable things]

Understand the command hit as something new. Hitting is an action applying to one thing. Understand "hit [something]" as attacking.

After reading a command:
	If the player's command matches "ask", replace the player's command with "topics".
	
Section 3 - Conversation Tweaks

[The standard listing subject changes rule is not listed in any rulebook.
The standard report other subjects rule is not listed in any rulebook.]

Listing repeatable quips is an activity.

Rule for listing repeatable quips (this is the standard listing repeatable subject changes rule):
    prepare a list of repeatable quips which are available;
    say "[quip-suggestion-phrase][the prepared list delimited in disjunctive style]." (A).

Check changing the subject (this is the subject change revised rule):
	if the number of repeatable quips is 0:
		say "[We] [can think] of no valid changes of subject right [now]." (A) instead.

The subject change revised rule substitutes for the subject change default rule.

Carry out changing the subject (this is the revised report other subjects rule):
	Carry out the listing repeatable quips activity.
	
The revised report other subjects rule substitutes for the standard report other subjects rule.

When play begins:
		now the quip-suggestion-phrase is "[We] [could] asked ".
[TODO: This needs fixing]

To decide whether scene_conversation is exhausted:
	decide on whether or not the number of available quips which are not recollected by someone is 0.

To decide whether interro_conversation is exhausted:
	decide on whether or not the number of available quips which are not recollected by Val_Interrogation is 0.

[Understand "remember [any subject]" or "remember [something]" as remembering. Remembering is an action applying to one visible thing.]
[Check remembering:
if the number of quips which are recollected by someone is 0, say "You have not yet had any conversations to remember." instead.
    
    Carry out remembering:
        let N be 0;
        repeat with item running through quips which mention the noun:
            if someone recollects the item:
                say "You have discussed '[the item]' with [the list of other people who recollect the item].";
                increment N;
        if N is 0, say "You haven't discussed [the noun] with anyone yet."]

Section 4 - Clues and Hints

A thing can be examined or unexamined. A thing is usually unexamined.

Before examining a noun:
	If the noun is unexamined:
		Now the noun is examined;
		If the noun is a clue:
			Increment FoundClues;

FoundClues is a number variable.[ FoundClues is 0.]
When play begins:
	Let FoundClues be 0;

Section 5 - Debugging

Every turn:
	if Debug_on is true:
		say "Turn Count: [Turn Count][line break]";
		say "FoundClues: [FoundClues]";


Understand the command "clues" as something new. Understand "clues" as asking for clues. Asking for clues is an action out of world.

Carry out asking for clues:
	say "[bold type]Clues[roman type][paragraph break]";
	repeat through the Table of NotAloneClues:
		if the clue entry is examined:
			say "[clue entry][line break]";		
	say "[line break]"; 
	repeat through the Table of StruggleClues:
		if the clue entry is examined:
			say "[clue entry][line break]";
	say "[line break]";
	repeat through the Table of CrimeofPassionClues:
		if the clue entry is examined:
			say "[clue entry][line break]";
	say "[line break]";
	repeat through the Table of BlackmailClues:
		if the clue entry is examined:
			say "[clue entry][line break]";
	[TODO: paragraph break between tables]

Table of NotAloneClues
clue
the shattered glass
bottle of wine

Table of StruggleClues
clue
the stain
pool of wine
wineglass

Table of CrimeofPassionClues
clue
knife
lock

Table of BlackmailClues
clue
book
bank statement

Understand the command "hint" as something new. Understand "hint" as asking for a hint. Asking for a hint is an action out of world. Instead of thinking, try asking for a hint.
Carry out asking for a hint:
	say "[bold type]Objective[roman type][paragraph break]";
	Try asking for clues.

Understand the command "help" as something new. Understand "help" as asking for a hint.

Section 6 - Inventory and Mechanics

A room can be indoors or outdoors. A room is usually indoors.

Doors are usually closed.

A thing can be either broken or unbroken. A thing is usually unbroken.

The player is carrying a cell phone.

Blood_status is a truth state that varies. Blood_status is usually false.

[TODO: Make the cell phone break when the player enters the Bottom of Cliff by whatever method]

Section 7 - Tests

Test firstconvo with "drive/drive/brake/look/unbuckle seat belt/kick windshield/any key/up/get in"

Test sunrise_lose with "drive/drive/brake/look/unbuckle seat belt/kick windshield/n/n/n"

Test discover with "test firstconvo/talk to val/ask about sunrise/ask about house/ask about car/wait"

Test body with "test discover/e/e/e/u"

Test arrival with "test body/x body/x body/d/e/w/e/w/e/w/e/w/e/w/w/w/talk to val"

Test myclues with "test arrival/e/anykey/x stain/x shard/x broken wineglass/u/x bottle/x knife/x wineglass/d/e/n"

Test valinvest with "test arrival/ask about Alan/ask about murder/ask about nathaniel/ask what was in it for me";

Test janinv with "test valinvest/e/e/u/e/n/talk to jan/ask about work/ask about business/ask about climbing";

Test master with "test arrival/e/e/u/n/";
	
Test computer with "test myclues"
	
Test bedtime with "test myclues/s/u/w/n/w/w/x val/drink bourbon/drink bourbon/drink bourbon"

Test vdet with "test bedtime / e / s / d"

Test me with "test janinv/s/w/d/open painting/take all/x pouch/drink pouch";

Section 8 - Computer

The computer is a device in the Office. The computer is switched off.

Instead of switching on the computer:
	say "I booted up Alan's computer to see what I could find. There were barely any house phones, and I hadn't found his cell phone yet. That meant his e-mail and web browser were probably his main points of contact.[line break](Type 'email' to access e-mail, 'history' for search engine autocomplete history)";

Understand the command "history" as something new. Understand "history" as historying. Historying is an action applying to a topic. Understand "history [text]" as historying.

Carry out historying a topic:
	say "Searching webhistory for [The topic understood]...[line break]";
	repeat through the Table of BrowserHistory:
		If the link entry matches the regular expression "^[The topic understood]":
			say "[link entry][line break]";

After reading a command:
	If the player's command matches "history":
		replace the player's command with "history null".

[Rule for supplying a missing second noun while historying the topic understood (this is the avoid empty history rule):
	now the text is "asdf".]

Table of BrowserHistory
link
"blackmail"
"how to hire a private detective"
"new york private detectives"
"blackmail felony"
"transfer money"
"cayman bank"
"asian literature"
"chinese literature journal"
"japanese medieval literature"
"medieval japanese literature"
"premodern japanese literature"
"swiss bank"
"bank transfer"
"kokoro first edition"
"kokoro natsume soseki"
"tales of the water margin"
"journey to the west"
"all men are brothers"
"new york blackmail law"
"japanese language and literature"
"new york extortion law"
"extortion felony"
"hiring a private detective"
"private detective agencies"
"academic literature journals"
"jstor"
"chinese language and literature"
"american historical review"
"detective agencies in new york"
"barnett college"
"barnett faculty portal"
"atm maximum withdrawal limit"
"withdrawal limit bank"
"bank account withdrawal limit"
"detective agency"
"literature review"
"tale of genji"
"journal of east asian literature"
"asian language and literature"
"literature of chinese diaspora"

Understand "email" as using the computer.
Understand "e-mail" as using the computer.

Using the computer is an action out of world.

Carry out using the computer:
	Now the current menu is the Table of Emails;
	carry out the displaying activity;
	clear the screen;
	try looking.

tab is some text that varies. tab is usually "     ".

Table of Emails
title	subtable	description	toggle
"Inbox"	Table of InboxEmails	--	--
"Sent"	Table of SentEmails	--	--
	
Table of InboxEmails
title	subtable	description	toggle
"Date[tab]From[tab][tab]Subject"	--	"Make a selection"	--
"Dec 20"	--	"Stuff"	--
"Dec 18"	--	"Stuff"	--
"Dec 12"	--	"Stuff"	--
"Dec 10"	--	"Stuff"	--
"Dec 06"	--	"Stuff"	--
"Nov 24[tab]JBates@Barnett.edu[tab][tab]Out of Office until 12/01 Autoreply"	--	"I am out of the office today, 11/24 and will respond to your message on Monday, 12/01."	--
"Sep 02[tab]PStillman@barnett.edu[tab][tab]Final Exam"	--	"Hi Professor I was just wondering when the final exam was because I have a lot of classes and think one of them might conflict with another class I'm taking thanks"	--
"Sep 02[tab]TDeavers@barnett.edu[tab][tab]Final"	--	"Professor Bowden,[line break]When is the final exam?"	--
"Sep 02[tab]MChung@barnett.edu[tab][tab]Registration[tab]"	--	"Professor,[line break]When I got to the registration system it said the class was full, even though there appear to be slots open in the listing. I wasn't able to contact anyone at the registrar's office, can you help me? I need to take this class for my major.[line break]Thanks,[line break]Melissa Chung"	--


Table of SentEmails
title	subtable	description	toggle
"Nov 12[tab]To: valcarter7@beyondcoast.org"	--	"TODO"	make blackmail known rule
"Nov 29[tab]To: Cassie Detra[tab]Quick question"	--	"Hi Cassie,[line break]I haven't seen Kelly in class recently, have the two of you had any contact? Just thought I'd ask.[line break][line break]Hope all's well,[EmailSignature]"	--
"Nov 20[tab]To: AsianStudies201@barnett.edu[tab][tab]Thanksgiving Holiday"	--	"All,[line break]I'd like to wish everyone a Happy Thanksgiving, please take some time off to relax and spend it with family. For those of you who are traveling home,  have a safe journey. For those of you who are not able to, I'm hosting Thanksgiving dinner at my home, and all are welcome to attend. There's a great view of the lake, and I promise excellent food, drink, and company.[line break]Happy Holidays,[EmailSignature]"	--
"Nov 12[tab]To: "	--	"TODO"	--
"Nov 11[tab]"	--	"TODO"	--
"Nov 10[tab]"	--	"TODO"	--
"Nov 01[tab]To: registrar@barnett.edu[tab]Late registration"	--	"Hi Linda,[line break]A couple of students in my class were trying to register past the add deadline, and said there was an error accessing the online system, is this indeed the case? Let me know if you anticipate any problems doing a manual add.[line break]Thanks,[EmailSignature]"	--
"Sep 18[tab]To: A"	--	"TODO"	--
"Sep 03[tab]To: AsianStudies201@barnett.edu[tab]Course Syllabus"	--	"Class,[line break]I've already received several questions about the homework and date of the final exam, which as I've already stated, is in the course syllabus, which is available at the intranet link I mentioned in class. The syllabus already has the date of the midterm and final exam, as well as the grading policy for the entire semester listed in detail. I regret that I will not be able to answer any further questions to which the answers are already available.[line break]Regards,[EmailSignature]"	--
"Sep 02[tab]To: AsianStudies201@barnett.edu[tab]Welcome to another semester"	--	"Class,[line break]As you may have heard, my name is Mark Bowden, and I'll be teaching Intro to Asian Literature 201, as I do every fall. Even after so many years of teaching in this field, I love seeing a class of fresh new faces, and the enthusiasm and ideas with which you tackle this material. More than just having you read journals and criticism, my goal this semester is to teach you to think critically, and how to hone your own ideas about some of the world's oldest classics. For some of you, this will be a time to get your feet wet in a different literary tradition than you're used to. I look forward to an enjoyable semester together! For your reference, the syllabus may be found at the following intranet link.[line break]Regards,[EmailSignature]"	--



EmailSignature is some text that varies. EmailSignature is "[line break]--[line break]Mark Bowden[line break]Asian Studies Department[line break]Barnett College, NY[line break]mbowden@barnett.edu"

[TODO: computer cannot be used during Interrogation]

[They sent a constable, low level]
[He was putting on a good show, but I could tell he didn't seem to have any interest in finding out who did it. That, or some brass had told him not to.]

[No shit.]
[Val didn't tell anyone, expecting the blackmail to resolve peacefully]
[foreshadow shutters as soon as the player enters chalet]
[tell the truth rather than lying in interrogation]

[Redherring: Isn't it suspicious that Svensson canceled, and then this happened?
Gage suggests maybe he's making a political move, and/or wants to buy Gage's company]

[Redherring: Suggests that Val did it before she went to pick up the MC]
[Redherring: Doubt in the player's mind if she can glamor him]

[Clue: Discovery of cut brakes reveal it was premeditated]
[Clue: Destruction of shutters to kill constable]

[Clue: No signs of forced entry at gate]
[Clue: One set of beds isn't made, Gage wasn't expected]

[Val says to get the blood from hidden door, Bowden sometimes brought regular students up here]

[Once player drinks blood, someone complains to Val "Don't tell me you're forcing him to eat those disgusting leftovers from the fridge! It's terrible about poor Alan and all, but there's no reason we can't go out for food, right?"

I told myself it was just tomato juice]

[speakeasy; "They pass the Volstead Act again when I wasn't looking?"]
[It's near to a full moon]

[V has deliberately asked for MC to be in the room when she's interrogated to get him a trail of bread crumbs]
["Why didn't you just tell me?" "Because I need you to find something I missed. You're a fresh set of eyes, and I don't want to bias what you see."]
[Carter died some 70 years ago. Cases was stone cold. And the fact that Val was bothering to throw me at it meant that she thought the killer was still alive.][You have to wait to sire, Val waited 50 years]
[Someone opens the curtains to a room, auto shutter controls, player must escape]
[V. Detective is dirty cop? Hence why the real killer isn't worried?]
[V. Det. is more interested in favors from old money than actual cash payoffs]
[After my car got wrecked in that accident / You still think that was an accident?]
[V. Det. fastropes in?]
[Deader than McKinley]
[Lots of people in the Red Cross]
[Snobbish vam prefer the lodge to inferior skiing towns, but would love]


[V.Det: What are bad pennies made of?]

[Rich investor apparenty cancelled, imply maybe had something to do with the situation, knew there was going to be an attacker]
[Turns out was a crime where startup owner realized there wasn't going to be an investment, got angry
That lazy piece of shit? He never worked a day in his life. Born with a silver spoon in his mouth, ran a factory or two during the war, and reinvented himself as some scholar? What a fucking joke. He sits in this house drinking thousand dollar bottles of wine and fucking undergrads.]

