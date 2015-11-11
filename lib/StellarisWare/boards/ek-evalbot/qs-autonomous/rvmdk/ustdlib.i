#line 1 "..\\..\\..\\utils\\ustdlib.c"
























#line 1 "C:\\Keil\\ARM\\RV31\\Inc\\string.h"
 
 
 
 




 








 











#line 37 "C:\\Keil\\ARM\\RV31\\Inc\\string.h"


  
  typedef unsigned int size_t;








extern __declspec(__nothrow) void *memcpy(void * __restrict  ,
                    const void * __restrict  , size_t  ) __attribute__((__nonnull__(1,2)));
   




 
extern __declspec(__nothrow) void *memmove(void *  ,
                    const void *  , size_t  ) __attribute__((__nonnull__(1,2)));
   







 
extern __declspec(__nothrow) char *strcpy(char * __restrict  , const char * __restrict  ) __attribute__((__nonnull__(1,2)));
   




 
extern __declspec(__nothrow) char *strncpy(char * __restrict  , const char * __restrict  , size_t  ) __attribute__((__nonnull__(1,2)));
   





 

extern __declspec(__nothrow) char *strcat(char * __restrict  , const char * __restrict  ) __attribute__((__nonnull__(1,2)));
   




 
extern __declspec(__nothrow) char *strncat(char * __restrict  , const char * __restrict  , size_t  ) __attribute__((__nonnull__(1,2)));
   






 






 

extern __declspec(__nothrow) int memcmp(const void *  , const void *  , size_t  ) __attribute__((__nonnull__(1,2)));
   





 
extern __declspec(__nothrow) int strcmp(const char *  , const char *  ) __attribute__((__nonnull__(1,2)));
   




 
extern __declspec(__nothrow) int strncmp(const char *  , const char *  , size_t  ) __attribute__((__nonnull__(1,2)));
   






 
extern __declspec(__nothrow) int strcasecmp(const char *  , const char *  ) __attribute__((__nonnull__(1,2)));
   





 
extern __declspec(__nothrow) int strncasecmp(const char *  , const char *  , size_t  ) __attribute__((__nonnull__(1,2)));
   






 
extern __declspec(__nothrow) int strcoll(const char *  , const char *  ) __attribute__((__nonnull__(1,2)));
   







 

extern __declspec(__nothrow) size_t strxfrm(char * __restrict  , const char * __restrict  , size_t  ) __attribute__((__nonnull__(2)));
   













 


#line 184 "C:\\Keil\\ARM\\RV31\\Inc\\string.h"
extern __declspec(__nothrow) void *memchr(const void *  , int  , size_t  ) __attribute__((__nonnull__(1)));

   





 

#line 200 "C:\\Keil\\ARM\\RV31\\Inc\\string.h"
extern __declspec(__nothrow) char *strchr(const char *  , int  ) __attribute__((__nonnull__(1)));

   




 

extern __declspec(__nothrow) size_t strcspn(const char *  , const char *  ) __attribute__((__nonnull__(1,2)));
   




 

#line 223 "C:\\Keil\\ARM\\RV31\\Inc\\string.h"
extern __declspec(__nothrow) char *strpbrk(const char *  , const char *  ) __attribute__((__nonnull__(1,2)));

   




 

#line 238 "C:\\Keil\\ARM\\RV31\\Inc\\string.h"
extern __declspec(__nothrow) char *strrchr(const char *  , int  ) __attribute__((__nonnull__(1)));

   





 

extern __declspec(__nothrow) size_t strspn(const char *  , const char *  ) __attribute__((__nonnull__(1,2)));
   



 

#line 261 "C:\\Keil\\ARM\\RV31\\Inc\\string.h"
extern __declspec(__nothrow) char *strstr(const char *  , const char *  ) __attribute__((__nonnull__(1,2)));

   





 

extern __declspec(__nothrow) char *strtok(char * __restrict  , const char * __restrict  ) __attribute__((__nonnull__(2)));
extern __declspec(__nothrow) char *_strtok_r(char *  , const char *  , char **  ) __attribute__((__nonnull__(2,3)));

extern __declspec(__nothrow) char *strtok_r(char *  , const char *  , char **  ) __attribute__((__nonnull__(2,3)));

   

































 

extern __declspec(__nothrow) void *memset(void *  , int  , size_t  ) __attribute__((__nonnull__(1)));
   



 
extern __declspec(__nothrow) char *strerror(int  );
   





 
extern __declspec(__nothrow) size_t strlen(const char *  ) __attribute__((__nonnull__(1)));
   



 

extern __declspec(__nothrow) size_t strlcpy(char *  , const char *  , size_t  ) __attribute__((__nonnull__(1,2)));
   
















 

extern __declspec(__nothrow) size_t strlcat(char *  , const char *  , size_t  ) __attribute__((__nonnull__(1,2)));
   






















 

extern __declspec(__nothrow) void _membitcpybl(void *  , const void *  , int  , int  , size_t  ) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) void _membitcpybb(void *  , const void *  , int  , int  , size_t  ) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) void _membitcpyhl(void *  , const void *  , int  , int  , size_t  ) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) void _membitcpyhb(void *  , const void *  , int  , int  , size_t  ) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) void _membitcpywl(void *  , const void *  , int  , int  , size_t  ) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) void _membitcpywb(void *  , const void *  , int  , int  , size_t  ) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) void _membitmovebl(void *  , const void *  , int  , int  , size_t  ) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) void _membitmovebb(void *  , const void *  , int  , int  , size_t  ) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) void _membitmovehl(void *  , const void *  , int  , int  , size_t  ) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) void _membitmovehb(void *  , const void *  , int  , int  , size_t  ) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) void _membitmovewl(void *  , const void *  , int  , int  , size_t  ) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) void _membitmovewb(void *  , const void *  , int  , int  , size_t  ) __attribute__((__nonnull__(1,2)));
    














































 







#line 493 "C:\\Keil\\ARM\\RV31\\Inc\\string.h"



 
#line 26 "..\\..\\..\\utils\\ustdlib.c"
#line 1 "..\\..\\..\\driverlib/debug.h"
















































extern void __error__(char *pcFilename, unsigned long ulLine);







#line 67 "..\\..\\..\\driverlib/debug.h"

#line 27 "..\\..\\..\\utils\\ustdlib.c"
#line 1 "..\\..\\..\\utils/ustdlib.h"



























#line 1 "C:\\Keil\\ARM\\RV31\\Inc\\stdarg.h"
 
 
 





 









#line 26 "C:\\Keil\\ARM\\RV31\\Inc\\stdarg.h"








 

 
 
  typedef struct __va_list { void *__ap; } va_list;

   






 


   










 


   















 




   

 


   




 



   





 






#line 118 "C:\\Keil\\ARM\\RV31\\Inc\\stdarg.h"











 
#line 29 "..\\..\\..\\utils/ustdlib.h"
























typedef struct
{
    
    
    
    unsigned short usYear;

    
    
    
    unsigned char ucMon;

    
    
    
    unsigned char ucMday;

    
    
    
    unsigned char ucWday;

    
    
    
    unsigned char ucHour;

    
    
    
    unsigned char ucMin;

    
    
    
    unsigned char ucSec;
}
tTime;













extern int uvsnprintf(char *pcBuf, unsigned long ulSize, const char *pcString,
                      va_list vaArgP);
extern int usprintf(char *pcBuf, const char *pcString, ...);
extern int usnprintf(char *pcBuf, unsigned long ulSize, const char *pcString,
                     ...);
extern void ulocaltime(unsigned long ulTime, tTime *psTime);
extern unsigned long umktime(tTime *psTime);
extern int ustrlen (const char *pcStr);
extern char *ustrncpy (char *pcDst, const char *pcSrc, int iNum);
extern unsigned long ustrtoul(const char *pcStr, const char **ppcStrRet,
                              int iBase);
extern char *ustrstr(const char *pcHaystack, const char *pcNeedle);
extern int ustrnicmp(const char *pcStr1, const char *pcStr2, int iCount);
extern int ustrncmp(const char *pcStr1, const char *pcStr2, int iCount);
extern int ustrcmp(const char *pcStr1, const char *pcStr2);
extern int ustrcasecmp(const char *pcStr1, const char *pcStr2);










#line 28 "..\\..\\..\\utils\\ustdlib.c"














static const char * const g_pcHex = "0123456789abcdef";






















char *
ustrncpy (char *pcDst, const char *pcSrc, int iNum)
{
    int iCount;

    ;
    ;

    
    
    
    iCount = 0;

    
    
    
    
    while(iNum && pcSrc[iCount])
    {
        pcDst[iCount] = pcSrc[iCount];
        iCount++;
        iNum--;
    }

    
    
    
    while(iNum)
    {
        pcDst[iCount++] = (char)0;
        iNum--;
    }

    
    
    
    return(pcDst);
}




















































int
uvsnprintf(char *pcBuf, unsigned long ulSize, const char *pcString,
           va_list vaArgP)
{
    unsigned long ulIdx, ulValue, ulCount, ulBase, ulNeg;
    char *pcStr, cFill;
    int iConvertCount = 0;

    
    
    
    ;
    ;
    ;

    
    
    
    if(ulSize)
    {
        ulSize--;
    }

    
    
    
    iConvertCount = 0;

    
    
    
    while(*pcString)
    {
        
        
        
        for(ulIdx = 0; (pcString[ulIdx] != '%') && (pcString[ulIdx] != '\0');
            ulIdx++)
        {
        }

        
        
        
        
        
        if(ulIdx > ulSize)
        {
            ustrncpy(pcBuf, pcString, ulSize);
            pcBuf += ulSize;
            ulSize = 0;
        }
        else
        {
            ustrncpy(pcBuf, pcString, ulIdx);
            pcBuf += ulIdx;
            ulSize -= ulIdx;
        }

        
        
        
        
        
        iConvertCount += ulIdx;

        
        
        
        pcString += ulIdx;

        
        
        
        if(*pcString == '%')
        {
            
            
            
            pcString++;

            
            
            
            
            ulCount = 0;
            cFill = ' ';

            
            
            
            
            
again:

            
            
            
            switch(*pcString++)
            {
                
                
                
                case '0':
                case '1':
                case '2':
                case '3':
                case '4':
                case '5':
                case '6':
                case '7':
                case '8':
                case '9':
                {
                    
                    
                    
                    
                    if((pcString[-1] == '0') && (ulCount == 0))
                    {
                        cFill = '0';
                    }

                    
                    
                    
                    ulCount *= 10;
                    ulCount += pcString[-1] - '0';

                    
                    
                    
                    goto again;
                }

                
                
                
                case 'c':
                {
                    
                    
                    
                    ulValue = __va_arg(vaArgP, unsigned long);

                    
                    
                    
                    
                    if(ulSize != 0)
                    {
                        *pcBuf++ = (char)ulValue;
                        ulSize--;
                    }

                    
                    
                    
                    iConvertCount++;

                    
                    
                    
                    break;
                }

                
                
                
                case 'd':
                {
                    
                    
                    
                    ulValue = __va_arg(vaArgP, unsigned long);

                    
                    
                    
                    
                    if((long)ulValue < 0)
                    {
                        
                        
                        
                        ulValue = -(long)ulValue;

                        
                        
                        
                        ulNeg = 1;
                    }
                    else
                    {
                        
                        
                        
                        
                        ulNeg = 0;
                    }

                    
                    
                    
                    ulBase = 10;

                    
                    
                    
                    goto convert;
                }

                
                
                
                case 's':
                {
                    
                    
                    
                    pcStr = __va_arg(vaArgP, char *);

                    
                    
                    
                    for(ulIdx = 0; pcStr[ulIdx] != '\0'; ulIdx++)
                    {
                    }

                    
                    
                    
                    
                    
                    if(ulCount > ulIdx)
                    {
                        iConvertCount += (ulCount - ulIdx);
                    }

                    
                    
                    
                    
                    
                    if(ulIdx > ulSize)
                    {
                        ustrncpy(pcBuf, pcStr, ulSize);
                        pcBuf += ulSize;
                        ulSize = 0;
                    }
                    else
                    {
                        ustrncpy(pcBuf, pcStr, ulIdx);
                        pcBuf += ulIdx;
                        ulSize -= ulIdx;

                        
                        
                        
                        
                        if(ulCount > ulIdx)
                        {
                            ulCount -= ulIdx;
                            if(ulCount > ulSize)
                            {
                                ulCount = ulSize;
                            }
                            ulSize =- ulCount;

                            while(ulCount--)
                            {
                                *pcBuf++ = ' ';
                            }
                        }
                    }

                    
                    
                    
                    
                    
                    iConvertCount += ulIdx;

                    
                    
                    
                    break;
                }

                
                
                
                case 'u':
                {
                    
                    
                    
                    ulValue = __va_arg(vaArgP, unsigned long);

                    
                    
                    
                    ulBase = 10;

                    
                    
                    
                    
                    ulNeg = 0;

                    
                    
                    
                    goto convert;
                }

                
                
                
                
                
                
                case 'x':
                case 'X':
                case 'p':
                {
                    
                    
                    
                    ulValue = __va_arg(vaArgP, unsigned long);

                    
                    
                    
                    ulBase = 16;

                    
                    
                    
                    
                    ulNeg = 0;

                    
                    
                    
                    
convert:
                    for(ulIdx = 1;
                        (((ulIdx * ulBase) <= ulValue) &&
                         (((ulIdx * ulBase) / ulBase) == ulIdx));
                        ulIdx *= ulBase, ulCount--)
                    {
                    }

                    
                    
                    
                    
                    if(ulNeg)
                    {
                        ulCount--;
                    }

                    
                    
                    
                    
                    if(ulNeg && (ulSize != 0) && (cFill == '0'))
                    {
                        
                        
                        
                        *pcBuf++ = '-';
                        ulSize--;

                        
                        
                        
                        iConvertCount++;

                        
                        
                        
                        
                        ulNeg = 0;
                    }

                    
                    
                    
                    
                    if((ulCount > 1) && (ulCount < 65536))
                    {
                        
                        
                        
                        for(ulCount--; ulCount; ulCount--)
                        {
                            
                            
                            
                            
                            if(ulSize != 0)
                            {
                                *pcBuf++ = cFill;
                                ulSize--;
                            }

                            
                            
                            
                            iConvertCount++;
                        }
                    }

                    
                    
                    
                    
                    if(ulNeg && (ulSize != 0))
                    {
                        
                        
                        
                        *pcBuf++ = '-';
                        ulSize--;

                        
                        
                        
                        iConvertCount++;
                    }

                    
                    
                    
                    for(; ulIdx; ulIdx /= ulBase)
                    {
                        
                        
                        
                        
                        if(ulSize != 0)
                        {
                            *pcBuf++ = g_pcHex[(ulValue / ulIdx) % ulBase];
                            ulSize--;
                        }

                        
                        
                        
                        iConvertCount++;
                    }

                    
                    
                    
                    break;
                }

                
                
                
                case '%':
                {
                    
                    
                    
                    if(ulSize != 0)
                    {
                        *pcBuf++ = pcString[-1];
                        ulSize--;
                    }

                    
                    
                    
                    iConvertCount++;

                    
                    
                    
                    break;
                }

                
                
                
                default:
                {
                    
                    
                    
                    if(ulSize >= 5)
                    {
                        ustrncpy(pcBuf, "ERROR", 5);
                        pcBuf += 5;
                        ulSize -= 5;
                    }
                    else
                    {
                        ustrncpy(pcBuf, "ERROR", ulSize);
                        pcBuf += ulSize;
                        ulSize = 0;
                    }

                    
                    
                    
                    iConvertCount += 5;

                    
                    
                    
                    break;
                }
            }
        }
    }

    
    
    
    *pcBuf = 0;

    
    
    
    return(iConvertCount);
}










































int
usprintf(char *pcBuf, const char *pcString, ...)
{
    va_list vaArgP;
    int iRet;

    
    
    
    __va_start(vaArgP, pcString);

    
    
    
    
    iRet = uvsnprintf(pcBuf, 0xffff, pcString, vaArgP);

    
    
    
    __va_end(vaArgP);

    
    
    
    return(iRet);
}



















































int
usnprintf(char *pcBuf, unsigned long ulSize, const char *pcString, ...)
{
    int iRet;
    va_list vaArgP;

    
    
    
    __va_start(vaArgP, pcString);

    
    
    
    iRet = uvsnprintf(pcBuf, ulSize, pcString, vaArgP);

    
    
    
    __va_end(vaArgP);

    
    
    
    return(iRet);
}







static const short g_psDaysToMonth[12] =
{
    0, 31, 59, 90, 120, 151, 181, 212, 243, 273, 304, 334
};
















void
ulocaltime(unsigned long ulTime, tTime *psTime)
{
    unsigned long ulTemp, ulMonths;

    
    
    
    ulTemp = ulTime / 60;
    psTime->ucSec = ulTime - (ulTemp * 60);
    ulTime = ulTemp;

    
    
    
    ulTemp = ulTime / 60;
    psTime->ucMin = ulTime - (ulTemp * 60);
    ulTime = ulTemp;

    
    
    
    ulTemp = ulTime / 24;
    psTime->ucHour = ulTime - (ulTemp * 24);
    ulTime = ulTemp;

    
    
    
    psTime->ucWday = (ulTime + 4) % 7;

    
    
    
    
    
    
    ulTime += 366 + 365;
    ulTemp = ulTime / ((4 * 365) + 1);
    if((ulTime - (ulTemp * ((4 * 365) + 1))) > (31 + 28))
    {
        ulTemp++;
        ulMonths = 12;
    }
    else
    {
        ulMonths = 2;
    }

    
    
    
    psTime->usYear = ((ulTime - ulTemp) / 365) + 1968;
    ulTime -= ((psTime->usYear - 1968) * 365) + ulTemp;

    
    
    
    for(ulTemp = 0; ulTemp < ulMonths; ulTemp++)
    {
        if(g_psDaysToMonth[ulTemp] > ulTime)
        {
            break;
        }
    }
    psTime->ucMon = ulTemp - 1;

    
    
    
    psTime->ucMday = ulTime - g_psDaysToMonth[ulTemp - 1] + 1;
}




















static int
ucmptime(tTime *pTime1, tTime *pTime2)
{
    
    
    
    
    if(pTime1->usYear > pTime2->usYear)
    {
        return(1);
    }
    else if(pTime1->usYear < pTime2->usYear)
    {
        return(-1);
    }
    else if(pTime1->ucMon > pTime2->ucMon)
    {
        return(1);
    }
    else if(pTime1->ucMon < pTime2->ucMon)
    {
        return(-1);
    }
    else if(pTime1->ucMday > pTime2->ucMday)
    {
        return(1);
    }
    else if(pTime1->ucMday < pTime2->ucMday)
    {
        return(-1);
    }
    else if(pTime1->ucHour > pTime2->ucHour)
    {
        return(1);
    }
    else if(pTime1->ucHour < pTime2->ucHour)
    {
        return(-1);
    }
    else if(pTime1->ucMin > pTime2->ucMin)
    {
        return(1);
    }
    else if(pTime1->ucMin < pTime2->ucMin)
    {
        return(-1);
    }
    else if(pTime1->ucSec > pTime2->ucSec)
    {
        return(1);
    }
    else if(pTime1->ucSec < pTime2->ucSec)
    {
        return(-1);
    }
    else
    {
        
        
        
        
        return(0);
    }
}
















unsigned long
umktime(tTime *psTime)
{
    tTime sTimeGuess;
    unsigned long ulTimeGuess = 0x80000000;
    unsigned long ulAdjust = 0x40000000;
    int iSign;

    
    
    
    ulocaltime(ulTimeGuess, &sTimeGuess);
    iSign = ucmptime(psTime, &sTimeGuess);

    
    
    
    while(iSign && ulAdjust)
    {
        
        
        
        
        ulTimeGuess = (iSign > 0) ? (ulTimeGuess + ulAdjust) :
                                    (ulTimeGuess - ulAdjust);
        ulAdjust /= 2;

        
        
        
        
        ulocaltime(ulTimeGuess, &sTimeGuess);
        iSign = ucmptime(psTime, &sTimeGuess);
    };

    
    
    
    
    if(iSign == 0)
    {
        return(ulTimeGuess);
    }

    
    
    
    else
    {
        return((unsigned long)-1);
    }
}


















unsigned long
ustrtoul(const char *pcStr, const char **ppcStrRet, int iBase)
{
    unsigned long ulRet, ulDigit, ulNeg, ulValid;
    const char *pcPtr;

    
    
    
    ;
    ;

    
    
    
    ulRet = 0;
    ulNeg = 0;
    ulValid = 0;

    
    
    
    pcPtr = pcStr;
    while((*pcPtr == ' ') || (*pcPtr == '\t'))
    {
        pcPtr++;
    }

    
    
    
    if(*pcPtr == '-')
    {
        ulNeg = 1;
        pcPtr++;
    }
    else if(*pcPtr == '+')
    {
        pcPtr++;
    }

    
    
    
    
    if(((iBase == 0) || (iBase == 16)) && (*pcPtr == '0') &&
       ((pcPtr[1] == 'x') || (pcPtr[1] == 'X')))
    {
        
        
        
        pcPtr += 2;

        
        
        
        iBase = 16;
    }

    
    
    
    if(iBase == 0)
    {
        
        
        
        if(*pcPtr == '0')
        {
            
            
            
            iBase = 8;
        }
        else
        {
            
            
            
            iBase = 10;
        }
    }

    
    
    
    while(1)
    {
        
        
        
        if((*pcPtr >= '0') && (*pcPtr <= '9'))
        {
            
            
            
            ulDigit = *pcPtr++ - '0';
        }

        
        
        
        else if((*pcPtr >= 'A') && (*pcPtr <= 'Z'))
        {
            
            
            
            ulDigit = *pcPtr++ - 'A' + 10;
        }

        
        
        
        else if((*pcPtr >= 'a') && (*pcPtr <= 'z'))
        {
            
            
            
            ulDigit = *pcPtr++ - 'a' + 10;
        }

        
        
        
        else
        {
            
            
            
            break;
        }

        
        
        
        if(ulDigit >= iBase)
        {
            
            
            
            
            pcPtr--;

            
            
            
            break;
        }

        
        
        
        ulRet *= iBase;
        ulRet += ulDigit;

        
        
        
        ulValid = 1;
    }

    
    
    
    if(ppcStrRet)
    {
        *ppcStrRet = ulValid ? pcPtr : pcStr;
    }

    
    
    
    return(ulNeg ? (0 - ulRet) : ulRet);
}

















int
ustrlen(const char * pcStr)
{
    int iLen;

    ;

    
    
    
    iLen = 0;

    
    
    
    while(pcStr[iLen])
    {
        
        
        
        iLen++;
    }

    return(iLen);
}


















char *
ustrstr(const char *pcHaystack, const char *pcNeedle)
{
    unsigned long ulLength;

    
    
    
    ulLength = ustrlen(pcNeedle);

    
    
    
    while(*pcHaystack)
    {
        
        
        
        if(ustrncmp(pcNeedle, pcHaystack, ulLength) == 0)
        {
            
            
            
            return((char *)pcHaystack);
        }

        
        
        
        pcHaystack++;
    }

    
    
    
    
    return((char *)0);
}



















int
ustrnicmp(const char *pcStr1, const char *pcStr2, int iCount)
{
    char cL1, cL2;

    while(iCount)
    {
        
        
        
        
        if(!*pcStr1 && !*pcStr2)
        {
            return(0);
        }

        
        
        
        cL1 = (((*pcStr1 >= 'A') && (*pcStr1 <= 'Z')) ?
                            (*pcStr1 + ('a' - 'A')) : *pcStr1);
        cL2 = (((*pcStr2 >= 'A') && (*pcStr2 <= 'Z')) ?
                            (*pcStr2  + ('a' - 'A')) : *pcStr2);
        
        
        
        
        if(cL2 < cL1)
        {
            return(1);
        }
        if(cL1 < cL2)
        {
            return(-1);
        }

        
        
        
        pcStr1++;
        pcStr2++;
        iCount--;
    }

    
    
    
    
    return(0);
}

















int
ustrcasecmp(const char *pcStr1, const char *pcStr2)
{
    
    
    
    return(ustrnicmp(pcStr1, pcStr2, -1));
}



















int
ustrncmp(const char *pcStr1, const char *pcStr2, int iCount)
{
    while(iCount)
    {
        
        
        
        
        if(!*pcStr1 && !*pcStr2)
        {
            return(0);
        }

        
        
        
        
        if(*pcStr2 < *pcStr1)
        {
            return(1);
        }
        if(*pcStr1 < *pcStr2)
        {
            return(-1);
        }

        
        
        
        pcStr1++;
        pcStr2++;
        iCount--;
    }

    
    
    
    
    return(0);

}

















int
ustrcmp(const char *pcStr1, const char *pcStr2)
{
    
    
    
    return(ustrncmp(pcStr1, pcStr2, -1));
}






static unsigned long g_ulRandomSeed = 1;













void
usrand(unsigned long ulSeed)
{
    g_ulRandomSeed = ulSeed;
}











int
urand(void)
{
    
    
    
    
    
    g_ulRandomSeed = (g_ulRandomSeed * 1664525) + 1013904223;

    
    
    
    return((int)g_ulRandomSeed);
}







