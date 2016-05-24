# Keep track of a history of moves
 
# As long as the user doesn't quit, keep track of a history of moves by both the human and computer. 
# What data structure will you reach for? Will you use a new class, or an existing class? What will 
# the display output look like?
 
# Adjust computer choice based on history
 
# Come up with some rules based on the history of moves in order for the computer to make a future move.
# For example, if the human tends to win over 60% of his hands when the computer chooses "rock", then 
# decrease the likelihood of choosing "rock". You'll have to first come up with a rule (like the one in 
# the previous sentence), then implement some analysis on history to see if the history matches that rule,
# then adjust the weight of each choice, and finally have the computer consider the weight of each choice
# when making the move. Right now, the computer has a 33% chance to make any of the 3 moves.
 
# Computer personalities
 
# We have a list of robot names for our Computer class, but other than the name, there's really nothing 
# different about each of them. It'd be interesting to explore how to build different personalities for 
# each robot. For example, R2D2 can always choose "rock". Or, "Hal" can have a very high tendency to 
# choose "scissors", and rarely "rock", but never "paper". You can come up with the rules or personalities 
# for each robot. How would you approach a feature like this?