"Blood on the Snow" by spanky

Release along with a website and interpreter.

Include Basic Screen Effects by Emily Short.
Include Threaded Conversation by Chris Conley.
[Made with Threaded Conversation Version 2/140602]

[Include Room Description Control by Emily Short.]
[Include Plurality by Emily Short.
Include Conversation Framework by Eric Eve.]

When play begins:
	now the story viewpoint is first person singular;
	now the story tense is past tense.

Section 1 - Game Scene List

Mountain_Driving is a scene. Mountain_Driving begins when play begins. Mountain_Driving ends when Car_Escape begins.
Car_Escape is a scene. Car_Escape begins when the player is in Upturned Car for the first time. Car_Escape ends when the player is in Bottom of Cliff for the first time.
Cliff_Climbing is a scene. Cliff_Climbing begins when Car_Escape ends. Cliff_Climbing ends when Car_Embarking begins.
Car_Embarking is a scene. Car_Embarking begins when the player is in Sharp Bend for the first time. Car_Embarking ends when Riding_Scene begins.
Riding_Scene is a scene. Riding_Scene begins when the player is in the Valcar_Container for the first time. Riding_Scene ends when Body_Discovery begins.
Body_Discovery is a scene. Body_Discovery begins when the player is in the Driveway for the first time.

Cliff_Gameover is a scene. Cliff_Gameover begins when the player is in the Precipice for the first time.

Section 2 - Scene Mountain_Driving

Introcar is a region.

Understand the command drive as something new. Understand "drive" as driving. Driving is an action applying to nothing.

Road is a backdrop. Road is in the introcar. The description is " Snow was coming down in great, big flakes, landing right on top of the packed, slippery mess on the road.".
Window is a backdrop. Window is in the introcar.
Radio is a backdrop. Radio is in the introcar.
Instead of examining outside when the player is in the introcar:
	Try examining the road.
Instead of examining the window when the player is in the introcar:
	Try examining the road.

Mountain_Road is a room in the introcar. The printed name of Mountain_Road is "Mountain Road". The description is "They say you shouldn't drive when you're angry. That was but one of a hundred pieces of good advice I was ignoring as I sped down the icy road to the chalet, my foot a little heavier on the gas than it needed to be.[paragraph break]I'd had a long, promising career in homicide ahead of me, or so I kept telling myself, and it was all down the drain now. I had planned on a senior detective's desk being in the cards for me, at least. Hell, maybe even going into private investigations. I guess I could still do that.[paragraph break]Not six hours earlier, I'd turned in my badge and my gun and walked out, more or less the way I'd seen it in the movies. The captain was yelling his head off, couldn't figure out why a promising young detective would just up and quit. I hoped he never did."
Instead of driving when the player is in the Mountain_Road:
	Try going north.

Mountain_Pass is a room in the introcar. The printed name of Mountain_Pass is "Mountain pass". Mountain_Pass is north of the Mountain_Road. The description is "I had the radio on tuned to some news station-- truth be told, I already missed the chatter of the dispatch as I was driving. The traffic report had little bearing on my current locale, but the weather gave me some concern: snowstorm coming up off the Great Lakes, apparently. Spending the weekend with a small crowd I barely knew appealed very little to me. Being cooped up with them the entire time due to weather seemed like a recipe for an epidemic of cabin fever."
Instead of driving when the player is in the Mountain_Pass:
	Try going north.

Hairpin_Turn is a room in the introcar. The printed name of Hairpin_Turn is "Hairpin Turn". Hairpin_Turn is north of the Mountain_Pass. The description is "If I'd finished that last thought a few seconds earlier, I might've noticed the caution sign for the sharp turn, barely visible through the snow. The car was going too fast, and the guardrail came out of nowhere."
Instead of driving when the player is in the Hairpin_Turn:
	Try going down.
Carry out going down when the player is in the Hairpin_Turn:
	Say "It's too late to stop, so I don't even bother. Instead, I press my head and back against the seat and put my arms in front of my face.[paragraph break]The back end of the car lost traction and swung out wide, trying vainly to follow the front, just like one of those car commercials. Unfortunately, I was not a professional driver, nor was this a closed course, and the right side of the car went over the edge of the cliff, momentum then taking the rest of the car with it. In shock, my brain couldn't manage to tell my body to do more than grip the wheel uselessly as the car tumbled down the steep incline. I lost count of the rolls after three. The roof hit a tree, and I'm jerked upward against the seat belt. Snow from the branches fell into a pile onto the passenger window from the impact. I heard a thud, snuffing out the brief glimpse of moonlight.[paragraph break]";
	Continue the action.

After reading a command:
	If the player's command matches "brake" or the player's command matches "stop":
		If the player is in the Hairpin_Turn:
			say "I hit the brakes, but the car kept straight for the guardrail, slamming through, and going over.[paragraph break]The back end of the car lost traction and swung out wide, trying vainly to follow the front, just like one of those car commercials. Unfortunately, I was not a professional driver, nor was this a closed course, and the right side of the car went over the edge of the cliff, momentum then taking the rest of the car with it. In shock, my brain couldn't manage to tell my body to do more than grip the wheel uselessly as the car tumbled down the steep incline. I lost count of the rolls after three. The roof hit a tree, and I'm jerked upward against the seat belt. Snow from the branches fell into a pile onto the passenger window from the impact. I heard a thud, snuffing out the brief glimpse of moonlight.[paragraph break]";
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

The windshield is scenery in the Upturned Car.
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
	say "Bracing my back against the sideways seat, I gave the windshield a couple of sharp kicks. I felt the seal start to give, and then it dislodged entirely from the frame, making an exit. It fell out onto the snow with a muffled crunch, and the bitter wind started to blow into the compartment. I grabbed my bag and stepped out into the forest.[paragraph break]".;
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

Bottom of Cliff is a room. Bottom of Cliff is below Sharp Bend. The description is "I stood on a  ridge densely packed with trees some ways below the highway. My overturned car sat a few feet away. The ridge extended as far as I could see to the north, going nowhere in particular. To the west I saw the steep incline the car had rolled down, and the path it'd cut through the snow and brush.[paragraph break]I was miles from nowhere[if we have examined the cell phone], and the cherry o8n top was that my cell phone was broken[end if]. It had stopped snowing for the moment. The night sky was starting to lighten, I figured I had an hour before sunrise.[paragraph break]Fucking swell."
Instead of going west in the Bottom of Cliff:
	try going up.

Section 5 - Scene Car_Embarking

Sharp Bend is a room. Sharp Bend is above Bottom of Cliff and north of Hairpin_Turn. The description is "I stood about a hundred feet from the hairpin turn where my car had gone over; I could see the tire tracks and broken guardrail to the south.".

Rule for writing a paragraph about the Valcar_Container:
	say "A Mercedes is quietly idling here, V8 purring.";
	
Rule for writing a paragraph about a person:
	say "";
	
Rule for writing a paragraph about Val:
	If Val is in the Sedan:
		say "Val drove the car, her eyes seemed like they were looking miles beyond the road, the mountains, and the horizon.".
	
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

Sedan is a room. The description is "The inside of the Mercedes was yards of brushed metal and hand-stiched leather. It even still smelled new.[if scene_conversation is exhausted] Having run out of things to talk about, nothing to do now but wait to arrive.[end if]".
[TODO: Move NPCs to their own section?]
[TODO: Add scenery]
Val is a woman. Val is in the Sedan. The description is "Her dark green eyes stood out from her face like gems set in a Venetian mask. She looked to be thirty, but she could have been three hundred for all I knew. Her pale skin shone in the moonlight, contrasting with her permed auburn hair, and too-red lipstick.[paragraph break]".

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

[House is scenery. TODO: Description of house]

Driveway is a room. 

Front_Porch is a room. Front_Porch is east of the Driveway.
Foyer is a room. Foyer is east of the Front_Porch. The description is "I walked into the spacious foyer, trying not to walk into the large wooden lacquered screens in front of the door. The shiny black wood was decorated with an intricate picture in gold paint, depicting a Chinese court scene. It seemed at odds with the exterior of the house, but matched the rest of the decor; the interior was a mixture of Old World furniture and Asian influences.

[if the scene is Body_Discovery][paragraph break]A layer of snow had blown in through the open doorway, slowly melting into a damp puddle on the large Persian rug.[end if]"
[TODO: Add door here to the front porch]

Greatroom is a room.

Wine_Cellar is a room. The printed name is "Wine Cellar". The description is "The second I walked into the dark wine cellar, recessed lights in the ceiling turned on, activated by what must be a motion sensor.
[paragraph break]
A wooden wine rack runs the length of the room"

[Wine cellar, one bottle missing]
[blood, almost black]
[fire roaring]
[Christmas carols playing]
[what looked like a silver carving knife]
[TODO: Adaptive hint system]
[TODO: If the player is too confused, simply change to an objective, use the "acting confused" cues from EmShort]

Section 9 - Conversation Riding_Scene

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
	The reply is "My house.".
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

Section 10 - Command Overrides

Understand the command kick as something new. Kicking is an action applying to one thing. Understand "kick [something]" as kicking. 
Instead of kicking a person:
	say "In my experience, detective work required far less kicking than Shaft had led me to believe."

Understand the command punch as something new. Punching is an action applying to one thing. Understand "punch [something]" as punching.
Instead of punching a person:
	say "I was a lot of things, but Dick Tracy wasn't one of them.".
[TODO: Give useful error message for unpunchable things]

Understand the command hit as something new. Hitting is an action applying to one thing. Understand "hit [something]" as attacking.

After reading a command:
	If the player's command matches "ask", replace the player's command with "topics".
	
Section 11 - Conversation Tweaks

[The standard listing subject changes rule is not listed in any rulebook.
The standard report other subjects rule is not listed in any rulebook.]

Listing repeatable quips is an activity.

Rule for listing repeatable quips (this is the standard listing repeatable subject changes rule):
    prepare a list of repeatable quips;
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

To decide whether scene_conversation is exhausted:
	decide on whether or not the number of scene-restricted quips which are not recollected by someone is 0.

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
[test me with "look/x outside/x window/s/drive"]

Section 12 - Inventory

A thing can be either broken or unbroken. A thing is usually unbroken.

The player is carrying a cell phone.

[TODO: Make the cell phone break when the player enters the Bottom of Cliff by whatever method]

[TODO: I felt like the sun could come up any minute, but Val kept driving, seemingly unconcerned.]
	
Section 13 - Tests

Test me with "drive/drive/brake/unbuckle seat belt/kick windshield/any key/up/get in/talk about/ask about chalet/ask about Mercedes/ask about sunrise"

Test firstconvo with "drive/drive/brake/unbuckle seat belt/kick windshield/any key/up/get in/talk about"

Test sunrise_lose with "drive/drive/brake/unbuckle seat belt/kick windshield/n/n/n"

[Ask Val about CAR / SUNRISE / CHALET]
[If the command matches "ask" or "ask [character]"]


["Unbuckling myself, I braced my back against the seats and kicked hard at the windshield of the sideways car, unlodging it from its seal, and making myself an exit. I reached into the passenger footwell, which was now above me, and threw my duffle bag out through the hole. It landed on the snow with a muffled crunch."]

[foreshadow shutters as soon as the player enters chalet]
[tell the truth rather than lying in interrogation]
[speakeasy; "They pass the Volstead Act again when I wasn't looking?"]
[It's near to a full moon]
[Werewolves? Something tells me they aren't getting their security deposit back]
[V has deliberately asked for MC to be in the room when she's interrogated to get him a trail of bread crumbs]
["Why didn't you just tell me?" "Because I need you to find something I missed. You're a fresh set of eyes, and I don't want to bias what you see."]
[Carter died some 70 years ago. Cases was stone cold. And the fact that Val was bothering to throw me at it meant that she thought the killer was still alive.]
[You have to wait to sire, Val waited 50 years]
[Someone opens the curtains to a room, auto shutter controls, player must escape]
[V. Detective is dirty cop? Hence why the real killer isn't worried?]
[But then when V. Detective refuses to be bribed per killer's request, he gets mad and kills him?]
[V. Det. is more interested in favors from old money than actual cash payoffs]
[After my car got wrecked in that accident / You still think that was an accident?]
[V. Det. fastropes in?]
[Lots of people in the Red Cross]