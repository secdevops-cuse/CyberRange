.class Landroid/support/design/widget/FloatingActionButtonHoneycombMr1;
.super Landroid/support/design/widget/FloatingActionButtonEclairMr1;
.source "FloatingActionButtonHoneycombMr1.java"


# instance fields
.field private mIsHiding:Z


# direct methods
.method constructor <init>(Landroid/view/View;Landroid/support/design/widget/ShadowViewDelegate;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "shadowViewDelegate"    # Landroid/support/design/widget/ShadowViewDelegate;

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Landroid/support/design/widget/FloatingActionButtonEclairMr1;-><init>(Landroid/view/View;Landroid/support/design/widget/ShadowViewDelegate;)V

    .line 31
    return-void
.end method

.method static synthetic access$002(Landroid/support/design/widget/FloatingActionButtonHoneycombMr1;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/support/design/widget/FloatingActionButtonHoneycombMr1;
    .param p1, "x1"    # Z

    .prologue
    .line 25
    iput-boolean p1, p0, Landroid/support/design/widget/FloatingActionButtonHoneycombMr1;->mIsHiding:Z

    return p1
.end method

.method private updateFromViewRotation(F)V
    .locals 2
    .param p1, "rotation"    # F

    .prologue
    .line 130
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonHoneycombMr1;->mShadowDrawable:Landroid/support/design/widget/ShadowDrawableWrapper;

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonHoneycombMr1;->mShadowDrawable:Landroid/support/design/widget/ShadowDrawableWrapper;

    neg-float v1, p1

    invoke-virtual {v0, v1}, Landroid/support/design/widget/ShadowDrawableWrapper;->setRotation(F)V

    .line 133
    :cond_0
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonHoneycombMr1;->mBorderDrawable:Landroid/support/design/widget/CircularBorderDrawable;

    if-eqz v0, :cond_1

    .line 134
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonHoneycombMr1;->mBorderDrawable:Landroid/support/design/widget/CircularBorderDrawable;

    neg-float v1, p1

    invoke-virtual {v0, v1}, Landroid/support/design/widget/CircularBorderDrawable;->setRotation(F)V

    .line 136
    :cond_1
    return-void
.end method


# virtual methods
.method hide(Landroid/support/design/widget/FloatingActionButtonImpl$InternalVisibilityChangedListener;)V
    .locals 4
    .param p1, "listener"    # Landroid/support/design/widget/FloatingActionButtonImpl$InternalVisibilityChangedListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x0

    .line 45
    iget-boolean v0, p0, Landroid/support/design/widget/FloatingActionButtonHoneycombMr1;->mIsHiding:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonHoneycombMr1;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_2

    .line 47
    :cond_0
    if-eqz p1, :cond_1

    .line 48
    invoke-interface {p1}, Landroid/support/design/widget/FloatingActionButtonImpl$InternalVisibilityChangedListener;->onHidden()V

    .line 88
    :cond_1
    :goto_0
    return-void

    .line 53
    :cond_2
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonHoneycombMr1;->mView:Landroid/view/View;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->isLaidOut(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonHoneycombMr1;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 55
    :cond_3
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonHoneycombMr1;->mView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 56
    if-eqz p1, :cond_1

    .line 57
    invoke-interface {p1}, Landroid/support/design/widget/FloatingActionButtonImpl$InternalVisibilityChangedListener;->onHidden()V

    goto :goto_0

    .line 60
    :cond_4
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonHoneycombMr1;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Landroid/support/design/widget/AnimationUtils;->FAST_OUT_SLOW_IN_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Landroid/support/design/widget/FloatingActionButtonHoneycombMr1$1;

    invoke-direct {v1, p0, p1}, Landroid/support/design/widget/FloatingActionButtonHoneycombMr1$1;-><init>(Landroid/support/design/widget/FloatingActionButtonHoneycombMr1;Landroid/support/design/widget/FloatingActionButtonImpl$InternalVisibilityChangedListener;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    goto :goto_0
.end method

.method onPreDraw()V
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonHoneycombMr1;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getRotation()F

    move-result v0

    invoke-direct {p0, v0}, Landroid/support/design/widget/FloatingActionButtonHoneycombMr1;->updateFromViewRotation(F)V

    .line 41
    return-void
.end method

.method requirePreDrawListener()Z
    .locals 1

    .prologue
    .line 35
    const/4 v0, 0x1

    return v0
.end method

.method show(Landroid/support/design/widget/FloatingActionButtonImpl$InternalVisibilityChangedListener;)V
    .locals 4
    .param p1, "listener"    # Landroid/support/design/widget/FloatingActionButtonImpl$InternalVisibilityChangedListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    .line 92
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonHoneycombMr1;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonHoneycombMr1;->mView:Landroid/view/View;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->isLaidOut(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonHoneycombMr1;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_1

    .line 94
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonHoneycombMr1;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 95
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonHoneycombMr1;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleY(F)V

    .line 96
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonHoneycombMr1;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    .line 97
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonHoneycombMr1;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Landroid/support/design/widget/AnimationUtils;->FAST_OUT_SLOW_IN_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Landroid/support/design/widget/FloatingActionButtonHoneycombMr1$2;

    invoke-direct {v1, p0, p1}, Landroid/support/design/widget/FloatingActionButtonHoneycombMr1$2;-><init>(Landroid/support/design/widget/FloatingActionButtonHoneycombMr1;Landroid/support/design/widget/FloatingActionButtonImpl$InternalVisibilityChangedListener;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 126
    :cond_0
    :goto_0
    return-void

    .line 117
    :cond_1
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonHoneycombMr1;->mView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 118
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonHoneycombMr1;->mView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 119
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonHoneycombMr1;->mView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setScaleY(F)V

    .line 120
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonHoneycombMr1;->mView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setScaleX(F)V

    .line 121
    if-eqz p1, :cond_0

    .line 122
    invoke-interface {p1}, Landroid/support/design/widget/FloatingActionButtonImpl$InternalVisibilityChangedListener;->onShown()V

    goto :goto_0
.end method
