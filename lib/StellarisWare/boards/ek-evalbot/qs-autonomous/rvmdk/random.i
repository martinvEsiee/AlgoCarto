#line 1 "random.c"


























#line 1 "random.h"










































extern void RandomAddEntropy(unsigned long ulEntropy);
extern void RandomSeed(void);
extern unsigned long RandomNumber(void);










#line 28 "random.c"






static unsigned long g_pulRandomEntropy[16];






static unsigned long g_ulRandomIndex = 0;








static unsigned long g_ulRandomSeed = 0;






void
RandomAddEntropy(unsigned long ulEntropy)
{
    
    
    
    ((unsigned char *)g_pulRandomEntropy)[g_ulRandomIndex] = ulEntropy & 0xff;

    
    
    
    g_ulRandomIndex = (g_ulRandomIndex + 1) & 63;
}










void
RandomSeed(void)
{
    unsigned long ulA, ulB, ulC, ulD, ulTemp, ulIdx;

    
    
    
    ulA = 0x67452301;
    ulB = 0xefcdab89;
    ulC = 0x98badcfe;
    ulD = 0x10325476;

    
    
    





    for(ulIdx = 0; ulIdx < 16; ulIdx += 4)
    {
        { ulTemp = ulA + (ulD ^ (ulB & (ulC ^ ulD))) + g_pulRandomEntropy[ulIdx + 0]; ulA = (ulTemp << 3) | (ulTemp >> (32 - 3)); };
        { ulTemp = ulD + (ulC ^ (ulA & (ulB ^ ulC))) + g_pulRandomEntropy[ulIdx + 1]; ulD = (ulTemp << 7) | (ulTemp >> (32 - 7)); };
        { ulTemp = ulC + (ulB ^ (ulD & (ulA ^ ulB))) + g_pulRandomEntropy[ulIdx + 2]; ulC = (ulTemp << 11) | (ulTemp >> (32 - 11)); };
        { ulTemp = ulB + (ulA ^ (ulC & (ulD ^ ulA))) + g_pulRandomEntropy[ulIdx + 3]; ulB = (ulTemp << 19) | (ulTemp >> (32 - 19)); };
    }

    
    
    
#line 118 "random.c"
    for(ulIdx = 0; ulIdx < 4; ulIdx++)
    {
        { ulTemp = ulA + ((ulB & ulC) | (ulB & ulD) | (ulC & ulD)) + g_pulRandomEntropy[ulIdx + 0] + 0x5a827999; ulA = (ulTemp << 3) | (ulTemp >> (32 - 3)); };
        { ulTemp = ulD + ((ulA & ulB) | (ulA & ulC) | (ulB & ulC)) + g_pulRandomEntropy[ulIdx + 4] + 0x5a827999; ulD = (ulTemp << 5) | (ulTemp >> (32 - 5)); };
        { ulTemp = ulC + ((ulD & ulA) | (ulD & ulB) | (ulA & ulB)) + g_pulRandomEntropy[ulIdx + 8] + 0x5a827999; ulC = (ulTemp << 9) | (ulTemp >> (32 - 9)); };
        { ulTemp = ulB + ((ulC & ulD) | (ulC & ulA) | (ulD & ulA)) + g_pulRandomEntropy[ulIdx + 12] + 0x5a827999; ulB = (ulTemp << 13) | (ulTemp >> (32 - 13)); };
    }

    
    
    





    for(ulIdx = 0; ulIdx < 4; ulIdx += 2)
    {
        { ulTemp = ulA + (ulB ^ ulC ^ ulD) + g_pulRandomEntropy[ulIdx + 0] + 0x6ed9eba1; ulA = (ulTemp << 3) | (ulTemp >> (32 - 3)); };
        { ulTemp = ulD + (ulA ^ ulB ^ ulC) + g_pulRandomEntropy[ulIdx + 8] + 0x6ed9eba1; ulD = (ulTemp << 9) | (ulTemp >> (32 - 9)); };
        { ulTemp = ulC + (ulD ^ ulA ^ ulB) + g_pulRandomEntropy[ulIdx + 4] + 0x6ed9eba1; ulC = (ulTemp << 11) | (ulTemp >> (32 - 11)); };
        { ulTemp = ulB + (ulC ^ ulD ^ ulA) + g_pulRandomEntropy[ulIdx + 12] + 0x6ed9eba1; ulB = (ulTemp << 15) | (ulTemp >> (32 - 15)); };

        if(ulIdx == 2)
        {
            ulIdx -= 3;
        }
    }

    
    
    
    g_ulRandomSeed = ulA + 0x67452301;
}








unsigned long
RandomNumber(void)
{
    
    
    
    
    
    g_ulRandomSeed = (g_ulRandomSeed * 1664525) + 1013904223;

    
    
    
    return(g_ulRandomSeed);
}
