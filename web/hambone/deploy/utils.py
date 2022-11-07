class Hex():
    def __init__(self, int_val):
        self.int_val = int_val
        
    @classmethod
    def from_str(cls, str_val):
        if str_val[0] == "#":
            str_val = str_val[1:]
            
        return cls(int(str_val, 16))
    
    @classmethod
    def from_distances(cls, distance):
        return cls(int("".join([hex(i)[2:].zfill(2) for i in distance]), 16))
    
    def __str__(self):
        return "#" + hex(self.int_val)[2:].zfill(6)
    
    def to_rgb(self): 
        s = hex(self.int_val)[2:].zfill(6)

        # we have to do this to maintain endianness when converting from hash
        return [int(s[i-2:i], 16) for i in range(len(s), 0, -2)]
    
    def copy(self):
        return Hex(self.int_val)
    
    def sub(self, other):
        if isinstance(other, Hex):
            return Hex(self.int_val - other.int_val)
        elif isinstance(other, int):
            return Hex(self.int_val - other)
        else:
            raise NotImplemented
        
    def get_subgroups(self, other):
        h = hex(self.int_val)[2:]
        return [h[i:i+2] for i in range(len(h))]
        
def generate_text(color):
    color_vals = color.to_rgb()
    
    # compute average proximity to correct color
    prox = sum([(255 - i)/255 for i in color_vals]) / len(color_vals)
        
    if prox >= 0.9:
        return "This is not the right way"
    elif 0.9 > prox >= 0.8:
        return "We are really lost right now"
    elif 0.8 > prox >= 0.7:
        return "Do you know where we are?"
    elif 0.7 > prox >= 0.6:
        return "I've never seen this area before"
    elif 0.6 > prox >= 0.5:
        return "I don't know about this way"
    elif 0.5 > prox >= 0.4:
        return "We should try this path"
    elif 0.4 > prox >= 0.3:
        return "Have we been this way before?"
    elif 0.3 > prox >= 0.25:
        return "I think I recognize this place"
    elif 0.25 > prox >= 0.2:
        return "This might be a way out"
    elif 0.2 > prox >= 0.15:
        return "We are definitely on the right path"
    elif 0.15 > prox >= 0.1:
        return "I don't think this path is much longer"
    elif 0.1 > prox >= 0.05:
        return "The path is almost over"
    elif 0.05 > prox >= 0.011:
        return "Wait is that a bear?"
    elif 0.011 > prox >= 0.01:
        return "Only a bit further from here"
    elif 0.01 > prox >= 0.005:
        return "Almost there"
    elif 0.005 > prox >= 0:
        return "I can see the end from here"
    
def get_distances(padded_url : str, flag_path):
    distances = []
    for i in range(3):
        # calculate hamming distance on 16 byte subgroups
        flag_subgroup = flag_path[i*32:i*32+32]
                
        z = int(padded_url[i*32:i*32+32], 16)^int(flag_subgroup, 16)
        distances.append(bin(z).count('1'))  
        
    return distances