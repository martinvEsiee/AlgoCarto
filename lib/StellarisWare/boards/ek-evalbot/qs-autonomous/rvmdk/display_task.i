#line 1 "display_task.c"
























#line 1 "..\\..\\..\\inc/hw_types.h"















































typedef unsigned char tBoolean;














#line 78 "..\\..\\..\\inc/hw_types.h"






























#line 114 "..\\..\\..\\inc/hw_types.h"
































































































#line 217 "..\\..\\..\\inc/hw_types.h"

#line 26 "display_task.c"
#line 1 "..\\drivers/display96x16x1.h"
























































extern void Display96x16x1Clear(void);
extern void Display96x16x1ClearLine(unsigned long ulY);
extern void Display96x16x1StringDraw(const char *pcStr, unsigned long ulX,
                                   unsigned long ulY);
extern void Display96x16x1StringDrawLen(const char *pcStr, unsigned long ulLen,
                                        unsigned long ulX, unsigned long ulY);
extern void Display96x16x1StringDrawCentered(const char *pcStr,
                                             unsigned long ulY,
                                             tBoolean bClear);
extern void Display96x16x1ImageDraw(const unsigned char *pucImage,
                                  unsigned long ulX, unsigned long ulY,
                                  unsigned long ulWidth,
                                  unsigned long ulHeight);
extern void Display96x16x1Init(tBoolean bFast);
extern void Display96x16x1DisplayOn(void);
extern void Display96x16x1DisplayOff(void);

#line 27 "display_task.c"
#line 1 "..\\..\\..\\utils/scheduler.h"

















































typedef void (*tSchedulerFunction)(void *pvParam);







typedef struct
{
    
    
    
    
    void (*pfnFunction)(void *);

    
    
    
    void *pvParam;

    
    
    
    
    
    unsigned long ulFrequencyTicks;

    
    
    
    
    unsigned long ulLastCall;

    
    
    
    
    
    tBoolean bActive;
}
tSchedulerTask;







extern tSchedulerTask g_psSchedulerTable[];







extern unsigned long g_ulSchedulerNumTasks;













extern void SchedulerSysTickIntHandler(void);
extern void SchedulerInit(unsigned long ulTicksPerSecond);
extern void SchedulerRun(void);
extern void SchedulerTaskEnable(unsigned long ulIndex, tBoolean bRunNow);
extern void SchedulerTaskDisable(unsigned long ulIndex);
extern unsigned long SchedulerTickCountGet(void);
extern unsigned long SchedulerElapsedTicksGet(unsigned long ulTickCount);
extern unsigned long SchedulerElapsedTicksCalc(unsigned long ulTickStart,
                                               unsigned long ulTickEnd);










#line 28 "display_task.c"































































static const unsigned char g_pucTILogo[] =
{
 	
    
    
    0x00,
};

























































 






static unsigned char g_pucFrame[192];



















static unsigned long
ScrollImage(const unsigned char *pucImage, unsigned long ulImageWidth)
{
    unsigned long ulLoop;
    static unsigned long ulIdx = 0;
    static unsigned long ulWidth;

    
    
    
    
    if(ulImageWidth)
    {
        ulWidth = ulImageWidth;
        ulIdx = 0;
    }

    
    
    
    
    else
    {
        
        
        
        for(ulLoop = 0; ulLoop < 192; ulLoop += 4)
        {
            *(unsigned long *)(g_pucFrame + ulLoop) = 0;
        }

        
        
        
        if(ulIdx <= 96)
        {
            
            
            
            
            for(ulLoop = 0; ulLoop < ulIdx; ulLoop++)
            {
                g_pucFrame[ulLoop + 96 - ulIdx] = pucImage[ulLoop];
                g_pucFrame[ulLoop + 96 - ulIdx + 96] =
                    pucImage[ulLoop + ulWidth];
            }
        }

        
        
        
        
        else if(ulIdx < ulWidth)
        {
            
            
            
            
            for(ulLoop = 0; ulLoop < 96; ulLoop++)
            {
                g_pucFrame[ulLoop] = pucImage[ulLoop + ulIdx - 96];
                g_pucFrame[ulLoop + 96] =
                    pucImage[ulLoop + ulIdx - 96 + ulWidth];
            }
        }

        
        
        
        
        else
        {
            
            
            
            
            for(ulLoop = 0; ulLoop < (ulWidth + 96 - ulIdx); ulLoop++)
            {
                g_pucFrame[ulLoop] = pucImage[ulLoop + ulIdx - 96];
                g_pucFrame[ulLoop + 96] =
                    pucImage[ulLoop + ulIdx - 96 + ulWidth];
            }
        }

        
        
        
        Display96x16x1ImageDraw(g_pucFrame, 0, 0, 96, 2);
    }

    
    
    
    ulIdx++;

    
    
    
    return((ulIdx > (ulWidth + 96)) ? 1 : 0);
}












void
DisplayTask(void *pvParam)
{
    static unsigned long ulState = 2; 
    static unsigned long ulLastTick = 0;
    static unsigned long ulTimeout = 0;

    
    
    
    
    if(SchedulerElapsedTicksGet(ulLastTick) > ulTimeout)
    {
        
        
        
        ulLastTick = SchedulerTickCountGet();

        
        
        
        switch(ulState)
        {
            
            
            
            
            
            case 0:
            {
                ScrollImage(g_pucTILogo, sizeof(g_pucTILogo) / 2);
                ulTimeout = 1;
                ulState = 1;
                break;
            }

            
            
            
            
            
            
            case 1:
            {
                if(ScrollImage(g_pucTILogo, 0))
                {
                    
                    
                    
                    
                    
                    ulTimeout = 130;
                    ulState = 2;
                }
                break;
            }

            
            
            
            
            case 2:
            {
                Display96x16x1StringDraw("FLORIAN", 21, 0);
                ulTimeout = 530;
                ulState = 3;
                break;
            }

            
            
            
            case 3:
            {
                Display96x16x1Clear();
                ulTimeout = 130;
                ulState = 4;
                break;
            }

            
            
            
            case 4:
            {
                Display96x16x1StringDraw("EVALBOT", 27, 0);
                ulTimeout = 530;
                ulState = 5;
                break;
            }

            
            
            
            case 5:
            {
                Display96x16x1Clear();
                ulTimeout = 130;
                ulState = 0;
                break;
            }

            
            
            
            
            default:
            {
                ulTimeout = 130;
                ulState = 0;
                break;
            }
        }
    }
}







void
DisplayTaskInit(void *pvParam)
{
    
    
    
    Display96x16x1Init(0);
    Display96x16x1DisplayOn();
}
