#!/usr/bin/env python
# coding: utf-8

# In[1]:


import anvil


# In[2]:


import os


# In[3]:


from nbt import nbt


# In[4]:


fs = os.listdir('world/region')


# In[5]:


fs


# In[6]:


tiles = []
for f in fs:
    tokens = f.split('.')
    bx = int(tokens[1]) * 32
    by = int(tokens[2]) * 32
    print(f)
    region = anvil.Region.from_file('world/region/' + f)
    for cx in range(bx, bx + 32):
        for cy in range(by, by + 32):
            try:
                chunk = anvil.Chunk.from_region(region, cx, cy)
                for t in chunk.tile_entities:
                    tiles.append(t)
            except:
                continue


# In[7]:


tiles


# In[8]:


tiles[0].tags[10].name


# In[9]:


signs = []
for t in tiles:
    for tag in t.tags:
        if tag.name == "id" and "sign" in tag.value:
            signs.append(t)


# In[10]:


signs


# In[11]:


signs[0].tags


# In[12]:


signs[1].tags


# In[13]:


signs[2].tags


# In[15]:


for x in signs[2].tags:
    print(x)


# In[ ]:




