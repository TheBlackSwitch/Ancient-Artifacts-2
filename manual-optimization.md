Theblackswitch said:
    I don't know if it's actually useful for you this late, but I've implemented a system like this and I'm currently optimizing it and here is what I'm doing:
    - Every time the player unlocks something new, it will increase a scoreboard for said player
    - Then I have an advancement that runs on inventory change (I'm making sure to revoke the advancement a tick later since when opening chests, it runs for every slot in the player's inventory in the same tick)
    - When the player's inventory changed, I check their mainhand and offhand for the book
    - If the book is in there, I check for the "version" in the custom data, if this is lower than the scoreboard, I update their book using item modifiers from the player's storage
    - If the book is in there, I check for the "player" in the custom data, if this is different than the current player's ID, again update the book

User_452 said:
