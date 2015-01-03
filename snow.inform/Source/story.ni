"Blood on the Snow" by PN
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
[Include Dialogue Punctuation by Ron Newcomb.]
[TODO: Use default Exit Lister Version 3 and make all modifications here]
[Made with Threaded Conversation Version 2/140602]

[CHANGE THE FOLLOWING LINE FOR DEBUGGING]
Debug_on is a truth state that varies. Debug_on is usually false.

When play begins:
	now the story viewpoint is first person singular;
	now the story tense is past tense;
	If debug_on is true:
		try switching the story transcript on.

A clue is a kind of thing.
		
Section 1 - Game Scene List

Mountain_Driving is a scene. Mountain_Driving begins when play begins. Mountain_Driving ends when Car_Escape begins.
Car_Escape is a scene. Car_Escape begins when Upturned Car is visited. Car_Escape ends when Bottom of Cliff is visited.
Cliff_Climbing is a scene. Cliff_Climbing begins when Car_Escape ends. Cliff_Climbing ends when Car_Embarking begins.
Car_Embarking is a scene. Car_Embarking begins when Sharp Bend is visited. Car_Embarking ends when Riding_Scene begins.
Riding_Scene is a scene. Riding_Scene begins when the player is in the Valcar_Container for the first time. Riding_Scene ends when Body_Discovery begins.
Body_Discovery is a scene. Body_Discovery begins when the player is in the Driveway for the first time. Body_Discovery ends when the body is examined.
Prearrival is a scene. Prearrival begins when Body_Discovery ends. Prearrival ends when Guest_Arrival begins.
Guest_Arrival is a scene. Guest_Arrival begins when guests arrive. Guest_Arrival ends when first investigation starts.
First_Investigation is a scene. First_Investigation begins when Guest_Arrival ends. First_Investigation ends when PC_Bedroom_Door is open. [TODO: Move Val here after some amount of time]
First_Sleep is a scene. First_Sleep begins when First_Investigation ends.

Cliff_Gameover is a scene. Cliff_Gameover begins when the player is in the Precipice for the first time.

Section 2 - Scene Mountain_Driving

Introcar is a region.

Understand the command drive as something new. Understand "drive" as driving. Driving is an action applying to one visible thing.
[Carry out driving:
	Try going the noun.]
[Carry out driving in a direction:
	Try going in the direction.]
	
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
	Continue the action.

After reading a command:
	If the player's command matches "brake" or the player's command matches "stop":
		If the player is in the Hairpin_Turn:
			say "I hit the brakes, but the car kept straight for the guardrail, slamming through, and going over.[paragraph break]The back end of the car lost traction and swung out wide, trying vainly to follow the front, just like one of those car commercials. Unfortunately, I was not a professional driver, nor was this a closed course, and the right side of the car went over the edge of the cliff, momentum then taking the rest of the car with it. In shock, my brain couldn't manage to tell my body to do more than grip the wheel uselessly as the car tumbled down the steep incline. I lost count of the rolls after three. The roof hit a tree, and I was jerked upward against the seat belt. Snow from the branches fell into a pile onto the passenger window from the impact. I heard a thud, snuffing out the brief glimpse of moonlight.[paragraph break]";
			wait for any key;
			now the player is in the Upturned Car;
			stop the action.
	
Section 3 - Scene Car_Escape

A room is either strapped or unstrapped. A room is usually unstrapped.
When the Car_Escape begins:
	Now the cell phone is broken.
	
Upturned Car is a strapped room. Upturned Car is below the Hairpin_Turn. The description is "I wasn't sure how long I'd been out. Taking stock of my situation, I was surprised to find myself more or less unhurt, save for a dull ache in my left wrist where I'd tried to brace against the door. I took a few deep breaths, and tried to gather myself-- I was still a little mentally a little shocked and unfocused.[paragraph break]The car was presently lying at the bottom of a cliff on its side. Above me, I could see moonlight, dimly mottled by the snow on the passenger side windows. The windshield in front of me showed nothing but evergreen forest, extending into the darkness.[if Upturned Car is strapped][paragraph break]I was still strapped in, the seat belt made sure I stayed put. At least one thing in this car still knew how to do its job right.[end if][if Upturned Car is unstrapped][paragraph break]I crouched at the bottom of the car on the driver door, trying to figure the best way out.[end if]".
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

Section 4 - Scene Cliff_Climbing

Bottom of Cliff is a room. Bottom of Cliff is below Sharp Bend. The description is "I stood on a  ridge densely packed with trees some ways below the highway. My overturned car sat a few feet away. The ridge extended as far as I could see to the north, going nowhere in particular. To the west I saw the steep incline the car had rolled down, and the path it'd cut through the snow and brush.[paragraph break]I was miles from nowhere[if we have examined the cell phone], and the cherry on top was that my cell phone was broken[end if]. It had stopped snowing for the moment. The night sky was starting to lighten, I figured I had an hour before sunrise.[paragraph break]Fucking swell."
Instead of going west in the Bottom of Cliff:
	try going up.

Section 5 - Scene Car_Embarking

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


Section 6 - Scene Riding_Scene

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

Section 7 - Scene Cliff_Gameover

Mountain Ridge is north of Bottom of Cliff. The description is "I had a bad feeling as I walked my way along the ridge, trudging a couple of miles through the foot-deep snow. The path didn't seem to be leading anywhere, and the sky kept getting lighter as I went. I still had enough time to turn back, if I wanted."

Dense Forest is north of Mountain Ridge. The description is "I walked for what must have been half an hour through the pines, which kept getting denser. In the light just before dawn, I saw the evergreen foliage come to a sudden stop ahead. I was starting to get seriously worried."

Precipice is north of Dense Forest. The description is "The forest abruptly ended in the edge of a cliff, overlooking a valley and several lakes hundreds of feet below."

When Cliff_Gameover begins:
	end the story saying "The north end of the ridge had a stunning view of the eastern valley, and unfortunately the horizon, too. Through what must have been some quirk of fate, I never made it to the chalet. I smiled sardonically at the sunrise, searing like a fire newly kindled, even on that cold, windswept ridge. I guess I'd been spared what would have no doubt been an interminable weekend.[paragraph break]As far as last sights went, I supposed it could have been worse."

Section 8 - Scene Body_Discovery

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
[TODO: end scene when player leaves the room, or talks to Val]


Greatroom is a room. Greatroom is east of the Foyer. The description is "The greatroom was clearly where the occupants of the house were meant to spend the majority of their time. Tall dark rafters criscrossed the high ceiling, the exposed beams clearly meant to evoke a Swiss chalet.
	
A large set of sofas were arranged around a huge rug. A dark [if the stain is examined]wine [end if]stain was conspicuous on the armrest, standing out on the white fabric. Everything in the room faced a gray slate fireplace. [if the fire is lit]A fire roared inside, fresh logs having been added not too long ago.[end if]

A small spiral staircase in the corner led up to a reading nook, which was open to the greatroom, separated by a wooden balustrade.[if the radio is switched on] Coming from somewhere up there I heard [carol title] warbling from what sounded like an old radio.[end if]".
To decide whether the fire is lit:
	If the scene is Body_Discovery, yes;
	If the scene is First_Investigation, yes;
	no.
The stain is scenery in the greatroom. The stain is a clue. The description is "An oblong dark red spot about the size of a pear stood out from the beige couch. From the color, it looked like wine. As I was looking at it, I realized something on the floor was reflecting firelight back at me.".;

The sofa is scenery in the greatroom. Understand "couch" as sofa.

After examining the sofa for the first time:
	Now the glass shard is in the greatroom.
	
After examining the stain for the first time:
	Now the glass shard is in the greatroom.

After examining the glass shard for the first time:
	Remove the glass shard from play;
	Now the shattered wineglass is in the greatroom.	

The glass shard is a thing. The glass shard is fixed in place. The description is "A broken shard of glass.[if the shattered wineglass is examined] It came from a broken wineglass in the greatroom.[end if] The ruined facets of vintage crystal reflected light like a cheap engagement ring.[paragraph break]I crouched down for a closer look and realized it had come from a shattered wineglass,  the pieces obscured by the sofa".
Instead of taking the glass shard:
	try examining the glass shard.

The shattered wineglass is a clue. The printed name is "broken wineglass". Understand "broken wineglass" as shattered wineglass. The description is "The curves of the wineglass were jagged edges now, a heap of shattered crystal under the sofa. It must've fallen from quite a height.".
After taking the shattered wineglass:
	say "I had enough of a mess on my hands without taking this one with me, but kept it anyway. It told an interesting story.";
	stop the action.

Reading_Nook is a room. Reading_Nook is above Greatroom. The printed name is "Reading Nook". The description is "I climbed the stairs to the reading nook. Shelves lined the walls of the small room, and a couple of books had been knocked off them onto the floor. A pair of wingback armchairs faced each other with a coffee table in between.[if the scene is body_discovery][paragraph break]A man sat in one, slightly paunchy and slightly grey, his eyes and mouth wide open. His glasses were askew. He was wearing a navy blue cardigan, stained on the front with a dark, almost black liquid. What looked like a small knife was sticking out of his neck, plunged in so far that only the handle was visible.[end if]".
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

a bottle of wine is in the Reading_Nook. The description is "A Bordeaux from back in 2001, uncorked and almost empty. Expensive bottle to be drinking alone."

When Body_Discovery ends:
	Now Val_House is in the Reading_Nook;
	say "Val came up the stairs, freezing the second she saw the body. Her eyes narrowed, and I could tell her mind was racing, the first time I'd seen anything but placid boredom on her face. Half of me was relieved to know that there was something in this world that could perturb her. The other half was unnerved by it. She looked away and hitched the poker face back on pretty quick.[paragraph break]Val nodded at the poor stiff and said, [quotation mark]Meet Professor Alan Bowden, our host this weekend.[quotation mark][line break]";
	[end the story saying "THE END - VERSION 1".]
	[TODO: This is just for testing the first act REMOVE ME]

Section PreArrival

Prearrival_Counter is a number variable. Prearrival_Counter is usually 0.
Every turn during Prearrival:
	Increase Prearrival_Counter by 1.
		
To decide whether the guests arrive:
	If Prearrival_Counter > 10, yes;
	no.

Section 9 - Scene Guest_Arrival

When Guest_Arrival begins:
	say "[if the player is not in the Foyer]I heard the front door open, and the sound of voices from the foyer. It closed a minute later.[end if][if the player is in the Foyer]The front door opened, and three men filed in, a lanky one in designer jeans holding the door for the other two. He closed it behind them, and they stood there looking around and putting snow on the rug, as though they expected a butler to come and announce them.[end if][paragraph break][if the player is in the Reading_Nook]Val and I glanced at each other across the dead man, and she left back down the stairs.[end if][if the player is in the Greatroom]Val came down the stairs, and crossed the room toward the sound of the noise.[end if]";
	now Jan_Arrival is in the Foyer;
	now Scott_Arrival is in the Foyer;
	now Nathan_Arrival is in the Foyer;
	now Val_House is in the Foyer;
	now the front door is closed.

Jan_Arrival is a man. The printed name is "Jan". The description is "Jan Svennson was a broad-shouldered man with pale blue eyes. He was casually brushing snow off a European performance fleece sweater. Either he liked ice climbing, or he wanted people to think he did. He had the handshake of a salesman and the grin of a frat boy.".
Scott_Arrival is a man. The printed name is "Scott". The description is "Scott Gage, on the other hand, was tall and lanky, and didn't seem at all suited to the cold. He wore a pair of Japanese selvedge jeans with the cuffs turned up to make sure everyone knew it. I'd have guessed he'd picked them up somewhere in SoHo if it weren't for the sweater he was wearing, useless against real cold, as all Californian sweaters are.".
Nathan_Arrival is a man. The printed name is "Nathan". The description is "The sideswept brown locks  and pencil mustache were meant to look youthful and sporty, like he'd just stopped playing cricket for teatime. The lines on the face and brow made him look more Vincent Price than Errol Flynn, though. I could tell by the way he stood that he didn't have a care in the world, or at least I wasn't one of them. His half-lidded stare gave him an air of casual arrogance, like he was perpetually waiting for the valet to bring his car around.".

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

[zippo lighter clue, requires cigarettes to use]	

Section 10 - Scene First_Investigation

When First_Investigation begins:
	say "Val waited a minute for the conversations the three were having to die down.";
	say "(Press a key)";
	wait for any key;
	say "She folded her arms across her chest and took a deep breath quiet enough that only I heard it.[paragraph break]"

[TODO: When First_Investigation begins:
	Now Scott_Investigation is in the ]

Scott_Investigation is a man. The description is "He had an unlit cigarette between his lips. They all seemed to smoke. His fingers fumbled with a brushed metal lighter and didn't seem to be making much progress, but he was giving it the old college try."
Jan_Investigation is a man.
Nathan_Investigation is a man.

Section 11 - Main House

Hallway_Downstairs is a room. Hallway_Downstairs is east of the Greatroom. The printed name is "Downstairs Hallway".

Hallway_Upstairs is above the Hallway_Downstairs. The printed name is "Upstairs Hallway".

Wine_Cellar is a room. Wine_Cellar is below the Hallway_Downstairs. The printed name is "Wine Cellar". The description is "The second I walked into the dark wine cellar, recessed lights in the ceiling turned on, probably activated by a motion sensor.
[paragraph break]
A wine rack ran the perimeter of the room, holding enough bottles to supply a French restaurant. A few seemed to be missing here and there. A wooden chair sat in the corner."

The wooden chair is scenery in the Wine_Cellar. The description is "A simple chair made from dark wood, appearing to have woven reeds for the seat. It's probably just here to add to the country style decor, I can't imagine anyone sitting in the cellar drinking wine long enough to use it.".

The wine rack is scenery in the Wine_Cellar. The description is "What had to be about a hundred dark green bottles rested in the diamond-crossed wooden cubbyholes, corks facing out.[paragraph break]I took a look at the gaps in the collection. A couple were missing from a section of Californian whites. One was missing from the other end, the hole surrounded by bottles of Burgundy red."

Understand "missing wine" as wine rack.
Understand "missing bottles" as wine rack.

Section 12 Master Bedroom

Master_Bedroom_Door is a closed door. 
Master_Bedroom_Door is scenery.
Master_Bedroom_Door is north of the Hallway_Upstairs and south of the Master_Bedroom.

Master_Bedroom is a room.

Section 13 Guest Bedrooms

Nathan_Room is a room. The printed name is "Oak Room";

Scott_Room is a room. The printed name is "Sumac Room";

Jan_Room is a room. The printed name is "Hemlock Room";

[one wineglass on the table, other knocked over the railing, having fallen somewhere
finds shard of glass, but glass upstairs is whole, give clue if the player has examined the whole glass]

[TODO: Adaptive hint system]
[TODO: If the player is too confused, simply change to an objective, use the "acting confused" cues from EmShort]

Section 14 Bedroom

PC_Bedroom_Door is a closed door.
PC_Bedroom_Door is scenery.
PC_Bedroom_Door is east of the Hallway_Upstairs and south of the PC_Bedroom.

Section 15 - Scene First Sleep

The PC_Bedroom is a room. The description is "[if the scene is First_Sleep]I checked my watch, it was getting late, almost noon. I had a million things to think about, but figured I should still get a few hours' sleep while I still could.[end if]"

Val_Sleep is in the PC_Bedroom. The printed name is "Val".The description is "[if the scene is First_Sleep]Val was lying on top of the covers, facing the window. Her breathing was steady and slow, but I couldn't tell if she was asleep. She wore just a satin pajama shirt. If the cold bothered her, she didn't show it.[end if]"

the bottle of bourbon is in the PC_Bedroom. The description is "A bottle of Four Roses small batch. One of the better ways to pass the time, if I had to choose. It was still half full, if I had to be an optimist about something." ;

carry out drinking the bottle of bourbon for the first time:
	say "I poured out a measure into one of the glasses on the chest of drawers and drank it slowly, letting it linger on my tongue.[paragraph break]I thought about the idea that someone was just outside the window, peering in, waiting . I thought about the three men I'd just met. I thought about the man I'd seen in the chair with his eyes wide open, who didn't seem to mind that I was drinking his bourbon, since he didn't mind much of anything anymore.";
carry out drinking the bottle of bourbon for the second time:
	say "I went back to the bottle and poured again, more generous this time. I listened to the sound of something between snow and frozen rain pattering against the window. I listened to Val's steady breathing. She was either asleep, or thinking just as hard as I was. I stared at her back a long time, trying to decide if I wanted to talk to her.";
[TODO: You can drink to think and pass the time in lieu of sleeping]

Section 16 - Conversation Riding_Scene

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

Section 17 - Conversation First_Investigation

who nathan is a repeatable questioning quip.
	The printed name is "about Nathan". The true-name is "who is Nathan".
	The comment is "[quotation mark]This Nathan Wyndham, is he old money?[quotation mark] I asked."
	The reply is "[quotation mark]I guess. He made a sizeable fortune selling boots to the Allies during World War I, a real war profiteer. He used it to buy that ridiculous title, a couple of country estates, and even restored an old manor house. But a little time running with the Circle crowd will tell you that [quotation mark]old money[quotation mark] is a relative term.[quotation mark]".
	It quip-supplies Val_House.
	The proper scene of who nathan is First_Investigation.

Section 18 - Command Overrides

Understand the command kick as something new. Kicking is an action applying to one thing. Understand "kick [something]" as kicking. 
Instead of kicking a person:
	say "In my experience, detective work required far less kicking than 70s cop shows had led me to believe."

Understand the command punch as something new. Punching is an action applying to one thing. Understand "punch [something]" as punching.
Instead of punching a person:
	say "Might be hard to believe from the way I look, but I always thought of my investigative methods as more Hercule Poirot than Dick Tracy. Trust me, I'm easy like Sunday morning.".
Instead of punching something:
	say "I had an Everlast heavy bag for that sort of thing.".
[TODO: Give useful error message for unpunchable things]

Understand the command hit as something new. Hitting is an action applying to one thing. Understand "hit [something]" as attacking.

After reading a command:
	If the player's command matches "ask", replace the player's command with "topics".
	
Section 19 - Conversation Tweaks

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

Section 20 - Clues and Hints

A thing can be examined or unexamined. A thing is usually unexamined.

After examining something:
	Now the noun is examined.

After examining something for the first time:
	If the noun is a clue:
		Increase FoundClues by 1.

FoundClues is a number that varies. FoundClues is 0.

Understand the command "clues" as something new. Understand "clues" as asking for clues. Asking for clues is an action out of world.

Carry out asking for clues:
	say "[bold type]Clues[roman type][paragraph break]";
	repeat through the Table of NotAloneClues:
		if clue is examined:
			say "[clue entry][line break]";
	say "[paragraph break]";
	repeat through the Table of StruggleClues:
		if clue is examined:
			say "[clue entry][line break]";
	[TODO: paragraph break between tables]

Table of NotAloneClues
clue
the shattered wineglass
the bottle of wine

Table of StruggleClues
clue
the stain

Table of PremeditatedClues
clue
the knife
the lock

Understand the command "hint" as something new. Understand "hint" as asking for a hint. Asking for a hint is an action out of world. Instead of thinking, try asking for a hint.
Carry out asking for a hint:
	say "[bold type]Objective[roman type][paragraph break]";
	Try asking for clues.

Understand the command "help" as something new. Understand "help" as asking for a hint.

Section 21 - Inventory and Mechanics

A room can be indoors or outdoors. A room is usually indoors.

Doors are usually closed.

A thing can be either broken or unbroken. A thing is usually unbroken.

The player is carrying a cell phone.

Blood_status is a truth state that varies. Blood_status is usually false.

[TODO: Make the cell phone break when the player enters the Bottom of Cliff by whatever method]
[TODO: I felt like the sun could come up any minute, but Val kept driving, seemingly unconcerned.]
	
Section 22 - Tests

Test me with "drive/drive/brake/look/unbuckle seat belt/kick windshield/any key/up/get in/talk about/ask about chalet/ask about Mercedes/ask about sunrise"

Test firstconvo with "drive/drive/brake/look/unbuckle seat belt/kick windshield/any key/up/get in/talk about"

Test sunrise_lose with "drive/drive/brake/look/unbuckle seat belt/kick windshield/n/n/n"

Test discover with "drive/drive/brake/look/unbuckle seat belt/kick windshield/any key/up/get in/talk to val/ask about sunrise/ask about house/ask about car/wait"

Test body with "drive/drive/brake/look/unbuckle seat belt/kick windshield/any key/up/get in/talk to val/ask about sunrise/ask about house/ask about car/wait/e/e/e/u"

Test arrival with "drive/drive/brake/look/unbuckle seat belt/kick windshield/any key/up/get in/talk to val/ask about sunrise/ask about house/ask about car/wait/e/e/e/u/x body/d/w"

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
[Werewolves? Something tells me they aren't getting their security deposit back]
[V has deliberately asked for MC to be in the room when she's interrogated to get him a trail of bread crumbs]
["Why didn't you just tell me?" "Because I need you to find something I missed. You're a fresh set of eyes, and I don't want to bias what you see."]
[Carter died some 70 years ago. Cases was stone cold. And the fact that Val was bothering to throw me at it meant that she thought the killer was still alive.][You have to wait to sire, Val waited 50 years]
[Someone opens the curtains to a room, auto shutter controls, player must escape]
[V. Detective is dirty cop? Hence why the real killer isn't worried?]
[But then when V. Detective refuses to be bribed per killer's request, he gets mad and kills him?]
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

