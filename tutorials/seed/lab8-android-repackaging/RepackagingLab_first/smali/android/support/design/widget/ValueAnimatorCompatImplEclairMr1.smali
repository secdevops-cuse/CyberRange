.class Landroid/support/design/widget/ValueAnimatorCompatImplEclairMr1;
.super Landroid/support/design/widget/ValueAnimatorCompat$Impl;
.source "ValueAnimatorCompatImplEclairMr1.java"


# static fields
.field private static final DEFAULT_DURATION:I = 0xc8

.field private static final HANDLER_DELAY:I = 0xa

.field private static final sHandler:Landroid/os/Handler;


# instance fields
.field private mAnimatedFraction:F

.field private mDuration:I

.field private final mFloatValues:[F

.field private final mIntValues:[I

.field private mInterpolator:Landroid/view/animation/Interpolator;

.field private mIsRunning:Z

.field private mListener:Landroid/support/design/widget/ValueAnimatorCompat$Impl$AnimatorListenerProxy;

.field private final mRunnable:Ljava/lang/Runnable;

.field private mStartTime:J

.field private mUpdateListener:Landroid/support/design/widget/ValueAnimatorCompat$Impl$AnimatorUpdateListenerProxy;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 33
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Landroid/support/design/widget/ValueAnimatorCompatImplEclairMr1;->sHandler:Landroid/os/Handler;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 28
    invoke-direct {p0}, Landroid/support/design/widget/ValueAnimatorCompat$Impl;-><init>()V

    .line 38
    new-array v0, v1, [I

    iput-object v0, p0, Landroid/support/design/widget/ValueAnimatorCompatImplEclairMr1;->mIntValues:[I

    .line 39
    new-array v0, v1, [F

    iput-object v0, p0, Landroid/support/design/widget/ValueAnimatorCompatImplEclairMr1;->mFloatValues:[F

    .line 41
    const/16 v0, 0xc8

    iput v0, p0, Landroid/support/design/widget/ValueAnimatorCompatImplEclairMr1;->mDuration:I

    .line 185
    new-instance v0, Landroid/support/design/widget/ValueAnimatorCompatImplEclairMr1$1;

    invoke-direct {v0, p0}, Landroid/support/design/widget/ValueAnimatorCompatImplEclairMr1$1;-><init>(Landroid/support/design/widget/ValueAnimatorCompatImplEclairMr1;)V

    iput-object v0, p0, Landroid/support/design/widget/ValueAnimatorCompatImplEclairMr1;->mRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Landroid/support/design/widget/ValueAnimatorCompatImplEclairMr1;)V
    .locals 0
    .param p0, "x0"    # Landroid/support/design/widget/ValueAnimatorCompatImplEclairMr1;

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/support/design/widget/ValueAnimatorCompatImplEclairMr1;->update()V

    return-void
.end method

.method private update()V
    .locals 10

    .prologue
    .line 156
    iget-boolean v3, p0, Landroid/support/design/widget/ValueAnimatorCompatImplEclairMr1;->mIsRunning:Z

    if-eqz v3, :cond_2

    .line 158
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Landroid/support/design/widget/ValueAnimatorCompatImplEclairMr1;->mStartTime:J

    sub-long v0, v4, v6

    .line 159
    .local v0, "elapsed":J
    long-to-float v3, v0

    iget v4, p0, Landroid/support/design/widget/ValueAnimatorCompatImplEclairMr1;->mDuration:I

    int-to-float v4, v4

    div-float v2, v3, v4

    .line 160
    .local v2, "linearFraction":F
    iget-object v3, p0, Landroid/support/design/widget/ValueAnimatorCompatImplEclairMr1;->mInterpolator:Landroid/view/animation/Interpolator;

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/support/design/widget/ValueAnimatorCompatImplEclairMr1;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v3, v2}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v2

    .end local v2    # "linearFraction":F
    :cond_0
    iput v2, p0, Landroid/support/design/widget/ValueAnimatorCompatImplEclairMr1;->mAnimatedFraction:F

    .line 165
    iget-object v3, p0, Landroid/support/design/widget/ValueAnimatorCompatImplEclairMr1;->mUpdateListener:Landroid/support/design/widget/ValueAnimatorCompat$Impl$AnimatorUpdateListenerProxy;

    if-eqz v3, :cond_1

    .line 166
    iget-object v3, p0, Landroid/support/design/widget/ValueAnimatorCompatImplEclairMr1;->mUpdateListener:Landroid/support/design/widget/ValueAnimatorCompat$Impl$AnimatorUpdateListenerProxy;

    invoke-interface {v3}, Landroid/support/design/widget/ValueAnimatorCompat$Impl$AnimatorUpdateListenerProxy;->onAnimationUpdate()V

    .line 170
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Landroid/support/design/widget/ValueAnimatorCompatImplEclairMr1;->mStartTime:J

    iget v3, p0, Landroid/support/design/widget/ValueAnimatorCompatImplEclairMr1;->mDuration:I

    int-to-long v8, v3

    add-long/2addr v6, v8

    cmp-long v3, v4, v6

    if-ltz v3, :cond_2

    .line 171
    const/4 v3, 0x0

    iput-boolean v3, p0, Landroid/support/design/widget/ValueAnimatorCompatImplEclairMr1;->mIsRunning:Z

    .line 173
    iget-object v3, p0, Landroid/support/design/widget/ValueAnimatorCompatImplEclairMr1;->mListener:Landroid/support/design/widget/ValueAnimatorCompat$Impl$AnimatorListenerProxy;

    if-eqz v3, :cond_2

    .line 174
    iget-object v3, p0, Landroid/support/design/widget/ValueAnimatorCompatImplEclairMr1;->mListener:Landroid/support/design/widget/ValueAnimatorCompat$Impl$AnimatorListenerProxy;

    invoke-interface {v3}, Landroid/support/design/widget/ValueAnimatorCompat$Impl$AnimatorListenerProxy;->onAnimationEnd()V

    .line 179
    .end local v0    # "elapsed":J
    :cond_2
    iget-boolean v3, p0, Landroid/support/design/widget/ValueAnimatorCompatImplEclairMr1;->mIsRunning:Z

    if-eqz v3, :cond_3

    .line 181
    sget-object v3, Landroid/support/design/widget/ValueAnimatorCompatImplEclairMr1;->sHandler:Landroid/os/Handler;

    iget-object v4, p0, Landroid/support/design/widget/ValueAnimatorCompatImplEclairMr1;->mRunnable:Ljava/lang/Runnable;

    const-wide/16 v6, 0xa

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 183
    :cond_3
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .prologue
    .line 118
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/design/widget/ValueAnimatorCompatImplEclairMr1;->mIsRunning:Z

    .line 119
    sget-object v0, Landroid/support/design/widget/ValueAnimatorCompatImplEclairMr1;->sHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/support/design/widget/ValueAnimatorCompatImplEclairMr1;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 121
    iget-object v0, p0, Landroid/support/design/widget/ValueAnimatorCompatImplEclairMr1;->mListener:Landroid/support/design/widget/ValueAnimatorCompat$Impl$AnimatorListenerProxy;

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Landroid/support/design/widget/ValueAnimatorCompatImplEclairMr1;->mListener:Landroid/support/design/widget/ValueAnimatorCompat$Impl$AnimatorListenerProxy;

    invoke-interface {v0}, Landroid/support/design/widget/ValueAnimatorCompat$Impl$AnimatorListenerProxy;->onAnimationCancel()V

    .line 124
    :cond_0
    return-void
.end method

.method public end()V
    .locals 2

    .prologue
    .line 133
    iget-boolean v0, p0, Landroid/support/design/widget/ValueAnimatorCompatImplEclairMr1;->mIsRunning:Z

    if-eqz v0, :cond_1

    .line 134
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/design/widget/ValueAnimatorCompatImplEclairMr1;->mIsRunning:Z

    .line 135
    sget-object v0, Landroid/support/design/widget/ValueAnimatorCompatImplEclairMr1;->sHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/support/design/widget/ValueAnimatorCompatImplEclairMr1;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 138
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroid/support/design/widget/ValueAnimatorCompatImplEclairMr1;->mAnimatedFraction:F

    .line 140
    iget-object v0, p0, Landroid/support/design/widget/ValueAnimatorCompatImplEclairMr1;->mUpdateListener:Landroid/support/design/widget/ValueAnimatorCompat$Impl$AnimatorUpdateListenerProxy;

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Landroid/support/design/widget/ValueAnimatorCompatImplEclairMr1;->mUpdateListener:Landroid/support/design/widget/ValueAnimatorCompat$Impl$AnimatorUpdateListenerProxy;

    invoke-interface {v0}, Landroid/support/design/widget/ValueAnimatorCompat$Impl$AnimatorUpdateListenerProxy;->onAnimationUpdate()V

    .line 144
    :cond_0
    iget-object v0, p0, Landroid/support/design/widget/ValueAnimatorCompatImplEclairMr1;->mListener:Landroid/support/design/widget/ValueAnimatorCompat$Impl$AnimatorListenerProxy;

    if-eqz v0, :cond_1

    .line 145
    iget-object v0, p0, Landroid/support/design/widget/ValueAnimatorCompatImplEclairMr1;->mListener:Landroid/support/design/widget/ValueAnimatorCompat$Impl$AnimatorListenerProxy;

    invoke-interface {v0}, Landroid/support/design/widget/ValueAnimatorCompat$Impl$AnimatorListenerProxy;->onAnimationEnd()V

    .line 148
    :cond_1
    return-void
.end method

.method public getAnimatedFloatValue()F
    .locals 3

    .prologue
    .line 108
    iget-object v0, p0, Landroid/support/design/widget/ValueAnimatorCompatImplEclairMr1;->mFloatValues:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    iget-object v1, p0, Landroid/support/design/widget/ValueAnimatorCompatImplEclairMr1;->mFloatValues:[F

    const/4 v2, 0x1

    aget v1, v1, v2

    invoke-virtual {p0}, Landroid/support/design/widget/ValueAnimatorCompatImplEclairMr1;->getAnimatedFraction()F

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/support/design/widget/AnimationUtils;->lerp(FFF)F

    move-result v0

    return v0
.end method

.method public getAnimatedFraction()F
    .locals 1

    .prologue
    .line 128
    iget v0, p0, Landroid/support/design/widget/ValueAnimatorCompatImplEclairMr1;->mAnimatedFraction:F

    return v0
.end method

.method public getAnimatedIntValue()I
    .locals 3

    .prologue
    .line 97
    iget-object v0, p0, Landroid/support/design/widget/ValueAnimatorCompatImplEclairMr1;->mIntValues:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    iget-object v1, p0, Landroid/support/design/widget/ValueAnimatorCompatImplEclairMr1;->mIntValues:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    invoke-virtual {p0}, Landroid/support/design/widget/ValueAnimatorCompatImplEclairMr1;->getAnimatedFraction()F

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/support/design/widget/AnimationUtils;->lerp(IIF)I

    move-result v0

    return v0
.end method

.method public getDuration()J
    .locals 2

    .prologue
    .line 152
    iget v0, p0, Landroid/support/design/widget/ValueAnimatorCompatImplEclairMr1;->mDuration:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public isRunning()Z
    .locals 1

    .prologue
    .line 71
    iget-boolean v0, p0, Landroid/support/design/widget/ValueAnimatorCompatImplEclairMr1;->mIsRunning:Z

    return v0
.end method

.method public setDuration(I)V
    .locals 0
    .param p1, "duration"    # I

    .prologue
    .line 113
    iput p1, p0, Landroid/support/design/widget/ValueAnimatorCompatImplEclairMr1;->mDuration:I

    .line 114
    return-void
.end method

.method public setFloatValues(FF)V
    .locals 2
    .param p1, "from"    # F
    .param p2, "to"    # F

    .prologue
    .line 102
    iget-object v0, p0, Landroid/support/design/widget/ValueAnimatorCompatImplEclairMr1;->mFloatValues:[F

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 103
    iget-object v0, p0, Landroid/support/design/widget/ValueAnimatorCompatImplEclairMr1;->mFloatValues:[F

    const/4 v1, 0x1

    aput p2, v0, v1

    .line 104
    return-void
.end method

.method public setIntValues(II)V
    .locals 2
    .param p1, "from"    # I
    .param p2, "to"    # I

    .prologue
    .line 91
    iget-object v0, p0, Landroid/support/design/widget/ValueAnimatorCompatImplEclairMr1;->mIntValues:[I

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 92
    iget-object v0, p0, Landroid/support/design/widget/ValueAnimatorCompatImplEclairMr1;->mIntValues:[I

    const/4 v1, 0x1

    aput p2, v0, v1

    .line 93
    return-void
.end method

.method public setInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 0
    .param p1, "interpolator"    # Landroid/view/animation/Interpolator;

    .prologue
    .line 76
    iput-object p1, p0, Landroid/support/design/widget/ValueAnimatorCompatImplEclairMr1;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 77
    return-void
.end method

.method public setListener(Landroid/support/design/widget/ValueAnimatorCompat$Impl$AnimatorListenerProxy;)V
    .locals 0
    .param p1, "listener"    # Landroid/support/design/widget/ValueAnimatorCompat$Impl$AnimatorListenerProxy;

    .prologue
    .line 81
    iput-object p1, p0, Landroid/support/design/widget/ValueAnimatorCompatImplEclairMr1;->mListener:Landroid/support/design/widget/ValueAnimatorCompat$Impl$AnimatorListenerProxy;

    .line 82
    return-void
.end method

.method public setUpdateListener(Landroid/support/design/widget/ValueAnimatorCompat$Impl$AnimatorUpdateListenerProxy;)V
    .locals 0
    .param p1, "updateListener"    # Landroid/support/design/widget/ValueAnimatorCompat$Impl$AnimatorUpdateListenerProxy;

    .prologue
    .line 86
    iput-object p1, p0, Landroid/support/design/widget/ValueAnimatorCompatImplEclairMr1;->mUpdateListener:Landroid/support/design/widget/ValueAnimatorCompat$Impl$AnimatorUpdateListenerProxy;

    .line 87
    return-void
.end method

.method public start()V
    .locals 4

    .prologue
    .line 50
    iget-boolean v0, p0, Landroid/support/design/widget/ValueAnimatorCompatImplEclairMr1;->mIsRunning:Z

    if-eqz v0, :cond_0

    .line 67
    :goto_0
    return-void

    .line 55
    :cond_0
    iget-object v0, p0, Landroid/support/design/widget/ValueAnimatorCompatImplEclairMr1;->mInterpolator:Landroid/view/animation/Interpolator;

    if-nez v0, :cond_1

    .line 56
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object v0, p0, Landroid/support/design/widget/ValueAnimatorCompatImplEclairMr1;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 59
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/support/design/widget/ValueAnimatorCompatImplEclairMr1;->mStartTime:J

    .line 60
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/design/widget/ValueAnimatorCompatImplEclairMr1;->mIsRunning:Z

    .line 62
    iget-object v0, p0, Landroid/support/design/widget/ValueAnimatorCompatImplEclairMr1;->mListener:Landroid/support/design/widget/ValueAnimatorCompat$Impl$AnimatorListenerProxy;

    if-eqz v0, :cond_2

    .line 63
    iget-object v0, p0, Landroid/support/design/widget/ValueAnimatorCompatImplEclairMr1;->mListener:Landroid/support/design/widget/ValueAnimatorCompat$Impl$AnimatorListenerProxy;

    invoke-interface {v0}, Landroid/support/design/widget/ValueAnimatorCompat$Impl$AnimatorListenerProxy;->onAnimationStart()V

    .line 66
    :cond_2
    sget-object v0, Landroid/support/design/widget/ValueAnimatorCompatImplEclairMr1;->sHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/support/design/widget/ValueAnimatorCompatImplEclairMr1;->mRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
