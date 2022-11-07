# bot.py
import os
import random
import re
import string
import discord
from dotenv import load_dotenv
from types import SimpleNamespace

load_dotenv()
TOKEN = os.getenv("DISCORD_TOKEN")
GUILD_ID = os.getenv("GUILD_ID")
DEBUG = os.getenv("DEBUG", False)


intents = discord.Intents.default()
intents.members = True
intents.reactions = True

client = discord.Client(intents=intents)

guild = None


@client.event
async def on_ready():
    global guild
    print(f"{client.user.name} has connected to Discord!")

    guild = client.get_guild(int(GUILD_ID))

async def send_welcome(member):
    await member.dm_channel.send("""Which type of CTFer are you? Suppose it's Friday at 8 EST and you open up the first challenge, and *surprise!!* it's sourceless SQLi. What do you do?
👶 Thoroughly research and solve the challenge
🤡 Brute-force w/ hydra
🧠 Ask for username and password in Discord
🐸 Post meme about it
🤬 Say nothing and vote 0 on CTFtime

React with one of the above emoji to get the corresponding role!

Not sure? Type !quiz to take a quiz and find out.""")

@client.event
async def on_member_join(member):
    print(f"Sending message to {member.name}.")
    await member.create_dm()
    await send_welcome(member)

@client.event
async def on_message(message):
    if message.author == client.user:
        return

    split = message.content.split()
    print(f"{message.author.id} sent {split}")

    if message.channel != message.author.dm_channel:
        return

    if len(split) == 1 and split[0] == "!welcome":
        await send_welcome(message.author)
        return

    if len(split) == 1 and split[0] == "!quiz":
        await start_quiz(message)
        return

    if len(split) > 1 and split[0] == "!quiz":
        await finish_quiz(message)
        return

    await message.author.dm_channel.send("Bad message")

async def start_quiz(message):
    await message.author.dm_channel.send("Awesome! The quiz is easy, and we'll provide the best match for you in no time.")
    await message.author.dm_channel.send("Simply type !quiz with your first name, last name, mother's maiden name, first 15 digits + CVV of your credit hard, name of first pet, name of your 1st grade teacher, and the location your parents first met. Separate your answers with a colon (:). For example, you might type `!quiz jimbo:bimbo:brutus:440028476969420/222:wenis:sweaty:behind the taco bell`")

async def finish_quiz(message):
    _, quiz_answers = message.content.split(" ", 1)
    quiz_answers = quiz_answers.split(":")
    if len(quiz_answers) != 7:
        await message.author.dm_channel.send("You didn't answer all the questions :/")
        return
    first, last, maiden, cc, pet, teacher, parent_meeting = quiz_answers
    await message.author.dm_channel.send(f"Thank you, {first}. We've analyzed your answers and assigned you the appropriate role!")
    role = discord.utils.get(guild.roles, name="Ask for username and password in Discord")
    member = guild.get_member(message.author.id)

    if member:
        await member.add_roles(role)

@client.event
async def on_raw_reaction_add(event):
    emoji = event.emoji
    user = client.get_user(event.user_id)
    member = guild.get_member(event.user_id)
    channel = client.get_channel(event.channel_id)
    message = await channel.fetch_message(event.message_id)

    if (
        message.author != client.user
        or user == client.user
    ):
        return

    lines = message.content.split("\n")[1:]
    for line in lines:
        try:
            line_reaction, role_name = line.strip().split(" ", 1)
        except ValueError:
            continue

        if str(emoji) == line_reaction:
            role = discord.utils.get(guild.roles, name=role_name)
            if member:
                await member.add_roles(role)

client.run(TOKEN)
