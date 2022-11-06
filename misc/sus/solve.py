#!/usr/bin/env python
# coding: utf-8

# In[12]:


import wave
from bitarray import bitarray


# In[32]:


with wave.open("amogus_raw.wav", "rb") as fi:
    dat = fi.readframes(fi.getnframes())
    params = fi.getparams()


# In[25]:


flag = b'buckeye{4y000_p1nk_100k1n_k1nd4_5u5_th0}'
flag_bits = bitarray()
flag_bits.frombytes(flag)

dat_new = b''
for i in range(0, len(dat)):
    dat_new += ((0xfe & dat[i]) + flag_bits[i % len(flag_bits)]).to_bytes(1, 'big')


# In[33]:


with wave.open("sus.wav", "wb") as fo:
    fo.setparams(params)
    fo.writeframes(dat_new)


# In[37]:


with wave.open("sus.wav", "rb") as fc:
    dat_rec = fc.readframes(fc.getnframes())
rec = bitarray()
for b in dat_rec:
    rec.append(b & 1)
print(rec.tobytes())


# In[ ]:




