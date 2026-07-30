execute as @e[tag=yellow.mirage_fake, distance=..40, limit=2] at @s run function yellow:mob/mirage/reward/remove_fake
give @a apple
advancement revoke @a only yellow:mirage/real

