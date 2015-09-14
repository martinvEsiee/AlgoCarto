#line 1 "pid.c"
























#line 1 "pid.h"











































typedef struct
{
    
    
    
    long lIntegrator;

    
    
    
    long lIntegMax;

    
    
    
    long lIntegMin;

    
    
    
    
    long lPrevError;

    
    
    
    long lPGain;

    
    
    
    long lIGain;

    
    
    
    long lDGain;
}
tPIDState;






extern void PIDInitialize(tPIDState *psState, long lIntegMax, long lIntegMin,
                          long lPGain, long lIGain, long lDGain);
extern void PIDGainPSet(tPIDState *psState, long lPGain);
extern void PIDGainISet(tPIDState *psState, long lIGain, long lIntegMax,
                        long lIntegMin);
extern void PIDGainDSet(tPIDState *psState, long lDGain);
extern void PIDReset(tPIDState *psState);
extern long PIDUpdate(tPIDState *psState, long lError);










#line 26 "pid.c"














void
PIDInitialize(tPIDState *psState, long lIntegMax, long lIntegMin, long lPGain,
              long lIGain, long lDGain)
{
    
    
    
    psState->lIntegrator = 0;
    psState->lIntegMax = lIntegMax;
    psState->lIntegMin = lIntegMin;
    psState->lPrevError = 0;
    psState->lPGain = lPGain;
    psState->lIGain = lIGain;
    psState->lDGain = lDGain;
}






void
PIDGainPSet(tPIDState *psState, long lPGain)
{
    
    
    
    psState->lPGain = lPGain;
}






void
PIDGainISet(tPIDState *psState, long lIGain, long lIntegMax, long lIntegMin)
{
    
    
    
    psState->lIGain = lIGain;

    
    
    
    psState->lIntegMax = lIntegMax;
    psState->lIntegMin = lIntegMin;

    
    
    
    if(psState->lIntegrator > lIntegMax)
    {
        psState->lIntegrator = lIntegMax;
    }
    else if(psState->lIntegrator < lIntegMin)
    {
        psState->lIntegrator = lIntegMin;
    }
}






void
PIDGainDSet(tPIDState *psState, long lDGain)
{
    
    
    
    psState->lDGain = lDGain;
}







void
PIDReset(tPIDState *psState)
{
    
    
    
    psState->lIntegrator = 0;
    psState->lPrevError = 0;
}









long
PIDUpdate(tPIDState *psState, long lError)
{
    long long llOutput;
    long lOutput;

    
    
    
    if((psState->lIntegrator & 0x80000000) == (lError & 0x80000000))
    {
        
        
        
        psState->lIntegrator += lError;

        
        
        
        
        
        if((lError < 0) && (psState->lIntegrator > 0))
        {
            psState->lIntegrator = psState->lIntegMin;
        }
        if((lError > 0) && (psState->lIntegrator < 0))
        {
            psState->lIntegrator = psState->lIntegMax;
        }
    }
    else
    {
        
        
        
        psState->lIntegrator += lError;
    }

    
    
    
    if(psState->lIntegrator > psState->lIntegMax)
    {
        psState->lIntegrator = psState->lIntegMax;
    }
    if(psState->lIntegrator < psState->lIntegMin)
    {
        psState->lIntegrator = psState->lIntegMin;
    }

    
    
    
    llOutput = (((long long)psState->lPGain * (long long)lError) +
                ((long long)psState->lIGain *
                 (long long)psState->lIntegrator) +
                ((long long)psState->lDGain *
                 (long long)(lError - psState->lPrevError)));

    
    
    
    if(llOutput > (long long)0x7fffffffffff)
    {
        lOutput = 0x7fffffff;
    }
    else if(llOutput < (long long)0xffff800000000000)
    {
        lOutput = 0x80000000;
    }
    else
    {
        lOutput = (llOutput >> 16) & 0xffffffff;
    }

    
    
    
    
    psState->lPrevError = lError;

    
    
    
    return(lOutput);
}
