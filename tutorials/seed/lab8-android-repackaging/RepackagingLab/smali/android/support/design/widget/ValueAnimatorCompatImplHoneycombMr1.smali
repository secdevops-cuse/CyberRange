.class Landroid/support/design/widget/ValueAnimatorCompatImplHoneycombMr1;
.super Landroid/support/design/widget/ValueAnimatorCompat$Impl;
.source "ValueAnimatorCompatImplHoneycombMr1.java"


# instance fields
.field final mValueAnimator:Landroid/animation/ValueAnimator;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/support/design/widget/ValueAnimatorCompat$Impl;-><init>()V

    .line 29
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Landroid/support/design/widget/ValueAnimatorCompatImplHoneycombMr1;->mValueAnimator:Landroid/animation/ValueAnimator;

    .line 30
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Landroid/support/design/widget/ValueAnimatorCompatImplHoneycombMr1;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 105
    return-void
.end method

.method public end()V
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Landroid/support/design/widget/ValueAnimatorCompatImplHoneycombMr1;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    .line 115
    return-void
.end method

.method public getAnimatedFloatValue()F
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Landroid/support/design/widget/ValueAnimatorCompatImplHoneycombMr1;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0
.end method

.method public getAnimatedFraction()F
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Landroid/support/design/widget/ValueAnimatorCompatImplHoneycombMr1;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v0

    return v0
.end method

.method public getAnimatedIntValue()I
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Landroid/support/design/widget/ValueAnimatorCompatImplHoneycombMr1;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getDuration()J
    .locals 2

    .prologue
    .line 119
    iget-object v0, p0, Landroid/support/design/widget/ValueAnimatorCompatImplHoneycombMr1;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getDuration()J

    move-result-wide v0

    return-wide v0
.end method

.method public isRunning()Z
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Landroid/support/design/widget/ValueAnimatorCompatImplHoneycombMr1;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    return v0
.end method

.method public setDuration(I)V
    .locals 4
    .param p1, "duration"    # I

    .prologue
    .line 99
    iget-object v0, p0, Landroid/support/design/widget/ValueAnimatorCompatImplHoneycombMr1;->mValueAnimator:Landroid/animation/ValueAnimator;

    int-to-long v2, p1

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 100
    return-void
.end method

.method public setFloatValues(FF)V
    .locals 3
    .param p1, "from"    # F
    .param p2, "to"    # F

    .prologue
    .line 89
    iget-object v0, p0, Landroid/support/design/widget/ValueAnimatorCompatImplHoneycombMr1;->mValueAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p1, v1, v2

    const/4 v2, 0x1

    aput p2, v1, v2

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 90
    return-void
.end method

.method public setIntValues(II)V
    .locals 3
    .param p1, "from"    # I
    .param p2, "to"    # I

    .prologue
    .line 79
    iget-object v0, p0, Landroid/support/design/widget/ValueAnimatorCompatImplHoneycombMr1;->mValueAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    const/4 v2, 0x1

    aput p2, v1, v2

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    .line 80
    return-void
.end method

.method public setInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 1
    .param p1, "interpolator"    # Landroid/view/animation/Interpolator;

    .prologue
    .line 44
    iget-object v0, p0, Landroid/support/design/widget/ValueAnimatorCompatImplHoneycombMr1;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 45
    return-void
.end method

.method public setListener(Landroid/support/design/widget/ValueAnimatorCompat$Impl$AnimatorListenerProxy;)V
    .locals 2
    .param p1, "listener"    # Landroid/support/design/widget/ValueAnimatorCompat$Impl$AnimatorListenerProxy;

    .prologue
    .line 59
    iget-object v0, p0, Landroid/support/design/widget/ValueAnimatorCompatImplHoneycombMr1;->mValueAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/support/design/widget/ValueAnimatorCompatImplHoneycombMr1$2;

    invoke-direct {v1, p0, p1}, Landroid/support/design/widget/ValueAnimatorCompatImplHoneycombMr1$2;-><init>(Landroid/support/design/widget/ValueAnimatorCompatImplHoneycombMr1;Landroid/support/design/widget/ValueAnimatorCompat$Impl$AnimatorListenerProxy;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 75
    return-void
.end method

.method public setUpdateListener(Landroid/support/design/widget/ValueAnimatorCompat$Impl$AnimatorUpdateListenerProxy;)V
    .locals 2
    .param p1, "updateListener"    # Landroid/support/design/widget/ValueAnimatorCompat$Impl$AnimatorUpdateListenerProxy;

    .prologue
    .line 49
    iget-object v0, p0, Landroid/support/design/widget/ValueAnimatorCompatImplHoneycombMr1;->mValueAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/support/design/widget/ValueAnimatorCompatImplHoneycombMr1$1;

    invoke-direct {v1, p0, p1}, Landroid/support/design/widget/ValueAnimatorCompatImplHoneycombMr1$1;-><init>(Landroid/support/design/widget/ValueAnimatorCompatImplHoneycombMr1;Landroid/support/design/widget/ValueAnimatorCompat$Impl$AnimatorUpdateListenerProxy;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 55
    return-void
.end method

.method public start()V
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Landroid/support/design/widget/ValueAnimatorCompatImplHoneycombMr1;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 35
    return-void
.end method
