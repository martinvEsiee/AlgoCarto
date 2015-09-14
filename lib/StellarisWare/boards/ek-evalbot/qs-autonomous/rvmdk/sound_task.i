#line 1 "sound_task.c"
























#line 1 "..\\..\\..\\inc/hw_types.h"















































typedef unsigned char tBoolean;














#line 78 "..\\..\\..\\inc/hw_types.h"






























#line 114 "..\\..\\..\\inc/hw_types.h"
































































































#line 217 "..\\..\\..\\inc/hw_types.h"

#line 26 "sound_task.c"
#line 1 "..\\drivers/wav.h"


















































typedef struct
{
    
    
    
    unsigned long ulSampleRate;

    
    
    
    unsigned long ulAvgByteRate;

    
    
    
    unsigned long ulDataSize;

    
    
    
    unsigned short usBitsPerSample;

    
    
    
    unsigned short usFormat;

    
    
    
    unsigned short usNumChannels;
}
tWaveHeader;






typedef enum
{
    
    
    
    WAVE_OK = 0,

    
    
    
    WAVE_INVALID_RIFF,

    
    
    
    WAVE_INVALID_CHUNK,

    
    
    
    WAVE_INVALID_FORMAT
}
tWaveReturnCode;













extern tWaveReturnCode WaveOpen(unsigned long *pulAddress,
                                tWaveHeader *pWaveHeader);
extern void WavePlayStart(tWaveHeader *pWaveHeader);
extern tBoolean WavePlayContinue(tWaveHeader *pWaveHeader);
extern void WaveStop(void);
extern void WaveGetTime(tWaveHeader *pWaveHeader, char *pcTime,
                        unsigned long ulSize);
extern tBoolean WavePlaybackStatus(void);










#line 27 "sound_task.c"
#line 1 "..\\drivers/sound.h"


















































extern void SoundInit(void);
extern void SoundIntHandler(void);
extern void SoundSetFormat(unsigned long ulSampleRate,
                           unsigned short usBitsPerSample,
                           unsigned short usChannels);
extern unsigned long SoundSampleRateGet(void);
extern void SoundBufferPlay(const void *pvData, unsigned long ulLength,
                            void (*pfnCallback)(void *pvBuffer,
                                                unsigned long ulEvent));
extern void SoundVolumeSet(unsigned long ulPercent);
extern unsigned char SoundVolumeGet(void);
extern void SoundVolumeDown(unsigned long ulPercent);
extern void SoundVolumeUp(unsigned long ulPercent);
extern void SoundClassDEn(void);
extern void SoundClassDDis(void);










#line 28 "sound_task.c"
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










#line 29 "sound_task.c"














const unsigned char *pucNowPlaying;
const unsigned char *pucNextPlaying;






tWaveHeader sSoundEffectHeader;








void
SoundTask(void *pvParam)
{
    static unsigned long ulState = 0;

    
    
    
    switch(ulState)
    {
        
        
        
        case 0:
        {
            
            
            
            if(pucNextPlaying)
            {
                
                
                
                
                pucNowPlaying = pucNextPlaying;
                pucNextPlaying = 0;

                
                
                
                if(WaveOpen((unsigned long *)pucNowPlaying,
                            &sSoundEffectHeader) == WAVE_OK)
                {
                    
                    
                    
                    
                    ulState = 1;
                    WavePlayStart(&sSoundEffectHeader);
                }

                
                
                
                
                else
                {
                    pucNowPlaying = 0;
                }
            }
            break;
        }

        
        
        
        case 1:
        {
            
            
            
            
            
            if(WavePlayContinue(&sSoundEffectHeader))
            {
                
                
                
                
                pucNowPlaying = 0;
                ulState = 0;
            }
            break;
        }

        
        
        
        
        default:
        {
            pucNowPlaying = 0;
            pucNextPlaying = 0;
            ulState = 0;
            break;
        }
    }
}







void
SoundTaskInit(void *pvParam)
{
    SoundInit();
}






void
SoundTaskPlay(const unsigned char *pucSound)
{
    
    
    
    pucNextPlaying = pucSound;
}
