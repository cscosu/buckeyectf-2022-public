from transformers import AutoTokenizer
import random

def get_training_corpus(data):
    dataset = data
    for start_idx in range(0, len(dataset), 1000):
        samples = dataset[start_idx : start_idx + 1000]
        yield samples


old_tokenizer = AutoTokenizer.from_pretrained("gpt2")

poem = 'Out of the night that covers me,\n\tBlack as the pit from pole to pole,\nI thank whatever gods may be\n\tFor my unconquerable soul.\nIn the fell clutch of circumstance\n\tI have not winced nor cried aloud.\nUnder the bludgeonings of chance\n\tMy head is bloody, but unbowed.\n\nBeyond this place of wrath and tears\n\tLooms but the Horror of the shade,\nAnd yet the menace of the years\n\tFinds and shall find me unafraid.\n\nIt matters not how strait the gate,\n\tHow charged with punishments the scroll,\nI am the master of my fate,\n\tI am the captain of my soul.'.split()
special = 'please undermine the potato teleportation receptacle'

data = []
for i in range(1000):
    data.append(''.join(chr(random.randint(0,255)) for _ in range(random.randint(1,60))))

for i in range(2096):
    data.insert(random.randint(0,len(data)-1), special)

for i in range(1000):
    data.append(''.join(poem[random.randint(0,len(poem)-1)] for _ in range(random.randint(1,8))))

training_corpus = get_training_corpus(data)

tokenizer = old_tokenizer.train_new_from_iterator(training_corpus, 52000)

tokenizer.save_pretrained("etokenizer")