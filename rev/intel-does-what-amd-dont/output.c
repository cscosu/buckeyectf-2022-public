#include <stdio.h>
int check;
int challenge_main() {
  unsigned int flagints[8];
  const unsigned int obfus[7] = {
    0x35ee6ef9,
    0x83c9bb70,
    0xc236fb78,
    0xbb28ca8a,
    0xf0dcd4ea,
    0x4dc345c6,
    0x268d76e2,
  };
  for(int i = 0; i < 7; i++) flagints[i] = 0;
  printf("What's the password? ");
  scanf("%28s", (char *)flagints);
  flagints[0] = (flagints[0] & 0xff000000) >> 24 | (flagints[0] & 0xff0000) >> 8 | (flagints[0] & 0xff00) << 8 | (flagints[0] & 0xff) << 24;
  flagints[1] += 482999372;
  flagints[2] = (flagints[2] & 0xff000000) >> 24 | (flagints[2] & 0xff0000) >> 8 | (flagints[2] & 0xff00) << 8 | (flagints[2] & 0xff) << 24;
  flagints[3] = (flagints[3] & 0xff000000) >> 24 | (flagints[3] & 0xff0000) >> 8 | (flagints[3] & 0xff00) << 8 | (flagints[3] & 0xff) << 24;
  flagints[4] = flagints[4] >> 15 | flagints[4] << 17;
  flagints[5] += 2917794768;
  flagints[6] = (flagints[6] & 0xff000000) >> 24 | (flagints[6] & 0xff0000) >> 8 | (flagints[6] & 0xff00) << 8 | (flagints[6] & 0xff) << 24;
  flagints[0] = (flagints[0] & 0xff000000) >> 24 | (flagints[0] & 0xff0000) >> 8 | (flagints[0] & 0xff00) << 8 | (flagints[0] & 0xff) << 24;
  flagints[1] = (flagints[1] & 0xff000000) >> 24 | (flagints[1] & 0xff0000) >> 8 | (flagints[1] & 0xff00) << 8 | (flagints[1] & 0xff) << 24;
  flagints[2] = (flagints[2] & 0xff000000) >> 24 | (flagints[2] & 0xff0000) >> 8 | (flagints[2] & 0xff00) << 8 | (flagints[2] & 0xff) << 24;
  flagints[3] ^= 3525987775;
  flagints[4] = (flagints[4] & 0xff000000) >> 24 | (flagints[4] & 0xff0000) >> 8 | (flagints[4] & 0xff00) << 8 | (flagints[4] & 0xff) << 24;
  flagints[5] += 1677653768;
  flagints[6] ^= 4166565375;
  flagints[0] = (flagints[0] & 0xff000000) >> 24 | (flagints[0] & 0xff0000) >> 8 | (flagints[0] & 0xff00) << 8 | (flagints[0] & 0xff) << 24;
  flagints[1] += 3276484965;
  flagints[2] += 2174222385;
  flagints[3] = (flagints[3] & 0xff000000) >> 24 | (flagints[3] & 0xff0000) >> 8 | (flagints[3] & 0xff00) << 8 | (flagints[3] & 0xff) << 24;
  flagints[4] += 997483556;
  flagints[5] ^= 585722024;
  flagints[6] ^= 909827048;
  flagints[0] = flagints[0] >> 12 | flagints[0] << 20;
  flagints[1] = flagints[1] >> 4 | flagints[1] << 28;
  flagints[2] = flagints[2] >> 16 | flagints[2] << 16;
  flagints[3] ^= 3809746373;
  flagints[4] = (flagints[4] & 0xff000000) >> 24 | (flagints[4] & 0xff0000) >> 8 | (flagints[4] & 0xff00) << 8 | (flagints[4] & 0xff) << 24;
  flagints[5] = (flagints[5] & 0xff000000) >> 24 | (flagints[5] & 0xff0000) >> 8 | (flagints[5] & 0xff00) << 8 | (flagints[5] & 0xff) << 24;
  flagints[6] = flagints[6] >> 13 | flagints[6] << 19;
  flagints[0] += 3723561876;
  flagints[1] ^= 2769815741;
  flagints[2] = flagints[2] >> 17 | flagints[2] << 15;
  flagints[3] = (flagints[3] & 0xff000000) >> 24 | (flagints[3] & 0xff0000) >> 8 | (flagints[3] & 0xff00) << 8 | (flagints[3] & 0xff) << 24;
  flagints[4] ^= 608233576;
  flagints[5] += 3127957037;
  flagints[6] ^= 363233715;
  flagints[0] += 410326135;
  flagints[1] = (flagints[1] & 0xff000000) >> 24 | (flagints[1] & 0xff0000) >> 8 | (flagints[1] & 0xff00) << 8 | (flagints[1] & 0xff) << 24;
  flagints[2] = (flagints[2] & 0xff000000) >> 24 | (flagints[2] & 0xff0000) >> 8 | (flagints[2] & 0xff00) << 8 | (flagints[2] & 0xff) << 24;
  flagints[3] = (flagints[3] & 0xff000000) >> 24 | (flagints[3] & 0xff0000) >> 8 | (flagints[3] & 0xff00) << 8 | (flagints[3] & 0xff) << 24;
  flagints[4] += 3422370157;
  flagints[5] += 3861535499;
  flagints[6] ^= 2242035385;
  flagints[0] = (flagints[0] & 0xff000000) >> 24 | (flagints[0] & 0xff0000) >> 8 | (flagints[0] & 0xff00) << 8 | (flagints[0] & 0xff) << 24;
  flagints[1] = flagints[1] >> 4 | flagints[1] << 28;
  flagints[2] = (flagints[2] & 0xff000000) >> 24 | (flagints[2] & 0xff0000) >> 8 | (flagints[2] & 0xff00) << 8 | (flagints[2] & 0xff) << 24;
  flagints[3] = flagints[3] >> 30 | flagints[3] << 2;
  flagints[4] += 2501165087;
  flagints[5] = flagints[5] >> 2 | flagints[5] << 30;
  flagints[6] = (flagints[6] & 0xff000000) >> 24 | (flagints[6] & 0xff0000) >> 8 | (flagints[6] & 0xff00) << 8 | (flagints[6] & 0xff) << 24;
  flagints[0] = flagints[0] >> 17 | flagints[0] << 15;
  flagints[1] ^= 2806543816;
  flagints[2] ^= 945369975;
  flagints[3] = flagints[3] >> 15 | flagints[3] << 17;
  flagints[4] ^= 758449049;
  flagints[5] ^= 1614163685;
  flagints[6] = (flagints[6] & 0xff000000) >> 24 | (flagints[6] & 0xff0000) >> 8 | (flagints[6] & 0xff00) << 8 | (flagints[6] & 0xff) << 24;
  flagints[0] = (flagints[0] & 0xff000000) >> 24 | (flagints[0] & 0xff0000) >> 8 | (flagints[0] & 0xff00) << 8 | (flagints[0] & 0xff) << 24;
  flagints[1] += 3161287324;
  flagints[2] ^= 3721132651;
  flagints[3] ^= 1868488658;
  flagints[4] ^= 3158206384;
  flagints[5] = (flagints[5] & 0xff000000) >> 24 | (flagints[5] & 0xff0000) >> 8 | (flagints[5] & 0xff00) << 8 | (flagints[5] & 0xff) << 24;
  flagints[6] = (flagints[6] & 0xff000000) >> 24 | (flagints[6] & 0xff0000) >> 8 | (flagints[6] & 0xff00) << 8 | (flagints[6] & 0xff) << 24;
  flagints[0] = flagints[0] >> 22 | flagints[0] << 10;
  flagints[1] += 1621288458;
  flagints[2] += 2328309291;
  flagints[3] = (flagints[3] & 0xff000000) >> 24 | (flagints[3] & 0xff0000) >> 8 | (flagints[3] & 0xff00) << 8 | (flagints[3] & 0xff) << 24;
  flagints[4] = (flagints[4] & 0xff000000) >> 24 | (flagints[4] & 0xff0000) >> 8 | (flagints[4] & 0xff00) << 8 | (flagints[4] & 0xff) << 24;
  flagints[5] = (flagints[5] & 0xff000000) >> 24 | (flagints[5] & 0xff0000) >> 8 | (flagints[5] & 0xff00) << 8 | (flagints[5] & 0xff) << 24;
  flagints[6] ^= 2852226774;
  flagints[0] += 30493676;
  flagints[1] ^= 4269111830;
  flagints[2] += 1389864397;
  flagints[3] = flagints[3] >> 8 | flagints[3] << 24;
  flagints[4] += 1817177997;
  flagints[5] ^= 2148228364;
  flagints[6] = flagints[6] >> 13 | flagints[6] << 19;
  flagints[0] = (flagints[0] & 0xff000000) >> 24 | (flagints[0] & 0xff0000) >> 8 | (flagints[0] & 0xff00) << 8 | (flagints[0] & 0xff) << 24;
  flagints[1] = (flagints[1] & 0xff000000) >> 24 | (flagints[1] & 0xff0000) >> 8 | (flagints[1] & 0xff00) << 8 | (flagints[1] & 0xff) << 24;
  flagints[2] += 2950430478;
  flagints[3] += 3365468476;
  flagints[4] += 815672421;
  flagints[5] = flagints[5] >> 26 | flagints[5] << 6;
  flagints[6] += 1880740504;
  flagints[0] += 514474892;
  flagints[1] = flagints[1] >> 7 | flagints[1] << 25;
  flagints[2] ^= 2270319381;
  flagints[3] ^= 3732080768;
  flagints[4] = (flagints[4] & 0xff000000) >> 24 | (flagints[4] & 0xff0000) >> 8 | (flagints[4] & 0xff00) << 8 | (flagints[4] & 0xff) << 24;
  flagints[5] = (flagints[5] & 0xff000000) >> 24 | (flagints[5] & 0xff0000) >> 8 | (flagints[5] & 0xff00) << 8 | (flagints[5] & 0xff) << 24;
  flagints[6] ^= 3642518446;
  flagints[0] = flagints[0] >> 29 | flagints[0] << 3;
  flagints[1] += 3600029444;
  flagints[2] += 1020925269;
  flagints[3] ^= 4258995399;
  flagints[4] = (flagints[4] & 0xff000000) >> 24 | (flagints[4] & 0xff0000) >> 8 | (flagints[4] & 0xff00) << 8 | (flagints[4] & 0xff) << 24;
  flagints[5] = (flagints[5] & 0xff000000) >> 24 | (flagints[5] & 0xff0000) >> 8 | (flagints[5] & 0xff00) << 8 | (flagints[5] & 0xff) << 24;
  flagints[6] = flagints[6] >> 4 | flagints[6] << 28;
  flagints[0] = flagints[0] >> 15 | flagints[0] << 17;
  flagints[1] = (flagints[1] & 0xff000000) >> 24 | (flagints[1] & 0xff0000) >> 8 | (flagints[1] & 0xff00) << 8 | (flagints[1] & 0xff) << 24;
  flagints[2] ^= 2623552114;
  flagints[3] ^= 31283903;
  flagints[4] ^= 3753260064;
  flagints[6] ^= 517183144;
  flagints[0] ^= 3238526463;
  flagints[1] = flagints[1] >> 3 | flagints[1] << 29;
  flagints[2] = (flagints[2] & 0xff000000) >> 24 | (flagints[2] & 0xff0000) >> 8 | (flagints[2] & 0xff00) << 8 | (flagints[2] & 0xff) << 24;
  flagints[3] += 3856776983;
  flagints[4] ^= 3086252886;
  flagints[5] = flagints[5] >> 14 | flagints[5] << 18;
  flagints[6] += 332613700;
  for(int i = 0; i < 7; i++)
    if(flagints[i] != obfus[i]) { printf("Wrong!!!! Do better ;)\n"); return 1; }
  printf("Correct! Nice job!\n");
  return 0;
}
