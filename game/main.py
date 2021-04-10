# Taken from https://www.ursinaengine.org/
from ursina import Entity, Ursina, color, held_keys

app = Ursina()

player = Entity(model="cube", color=color.orange, scale_y=2)


def update():  # update gets automatically called.
    player.x += held_keys["d"] * 0.1
    player.x -= held_keys["a"] * 0.1


app.run()  # opens a window and starts the game.
