.class Landroid/support/design/widget/FloatingActionButtonLollipop;
.super Landroid/support/design/widget/FloatingActionButtonHoneycombMr1;
.source "FloatingActionButtonLollipop.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation


# instance fields
.field private mInterpolator:Landroid/view/animation/Interpolator;


# direct methods
.method constructor <init>(Landroid/view/View;Landroid/support/design/widget/ShadowViewDelegate;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "shadowViewDelegate"    # Landroid/support/design/widget/ShadowViewDelegate;

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Landroid/support/design/widget/FloatingActionButtonHoneycombMr1;-><init>(Landroid/view/View;Landroid/support/design/widget/ShadowViewDelegate;)V

    .line 43
    invoke-virtual {p1}, Landroid/view/View;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 44
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonLollipop;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x10c000d

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Landroid/support/design/widget/FloatingActionButtonLollipop;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 47
    :cond_0
    return-void
.end method

.method private setupAnimator(Landroid/animation/Animator;)Landroid/animation/Animator;
    .locals 1
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 121
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonLollipop;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 122
    return-object p1
.end method


# virtual methods
.method jumpDrawableToCurrentState()V
    .locals 0

    .prologue
    .line 113
    return-void
.end method

.method newCircularDrawable()Landroid/support/design/widget/CircularBorderDrawable;
    .locals 1

    .prologue
    .line 127
    new-instance v0, Landroid/support/design/widget/CircularBorderDrawableLollipop;

    invoke-direct {v0}, Landroid/support/design/widget/CircularBorderDrawableLollipop;-><init>()V

    return-object v0
.end method

.method onDrawableStateChanged([I)V
    .locals 0
    .param p1, "state"    # [I

    .prologue
    .line 108
    return-void
.end method

.method requirePreDrawListener()Z
    .locals 1

    .prologue
    .line 117
    const/4 v0, 0x0

    return v0
.end method

.method setBackgroundDrawable(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;II)V
    .locals 6
    .param p1, "backgroundTint"    # Landroid/content/res/ColorStateList;
    .param p2, "backgroundTintMode"    # Landroid/graphics/PorterDuff$Mode;
    .param p3, "rippleColor"    # I
    .param p4, "borderWidth"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 53
    invoke-virtual {p0}, Landroid/support/design/widget/FloatingActionButtonLollipop;->createShapeDrawable()Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Landroid/support/design/widget/FloatingActionButtonLollipop;->mShapeDrawable:Landroid/graphics/drawable/Drawable;

    .line 54
    iget-object v1, p0, Landroid/support/design/widget/FloatingActionButtonLollipop;->mShapeDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v1, p1}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 55
    if-eqz p2, :cond_0

    .line 56
    iget-object v1, p0, Landroid/support/design/widget/FloatingActionButtonLollipop;->mShapeDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v1, p2}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setTintMode(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    .line 60
    :cond_0
    if-lez p4, :cond_1

    .line 61
    invoke-virtual {p0, p4, p1}, Landroid/support/design/widget/FloatingActionButtonLollipop;->createBorderDrawable(ILandroid/content/res/ColorStateList;)Landroid/support/design/widget/CircularBorderDrawable;

    move-result-object v1

    iput-object v1, p0, Landroid/support/design/widget/FloatingActionButtonLollipop;->mBorderDrawable:Landroid/support/design/widget/CircularBorderDrawable;

    .line 62
    new-instance v0, Landroid/graphics/drawable/LayerDrawable;

    const/4 v1, 0x2

    new-array v1, v1, [Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Landroid/support/design/widget/FloatingActionButtonLollipop;->mBorderDrawable:Landroid/support/design/widget/CircularBorderDrawable;

    aput-object v2, v1, v4

    const/4 v2, 0x1

    iget-object v3, p0, Landroid/support/design/widget/FloatingActionButtonLollipop;->mShapeDrawable:Landroid/graphics/drawable/Drawable;

    aput-object v3, v1, v2

    invoke-direct {v0, v1}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 68
    .local v0, "rippleContent":Landroid/graphics/drawable/Drawable;
    :goto_0
    new-instance v1, Landroid/graphics/drawable/RippleDrawable;

    invoke-static {p3}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-direct {v1, v2, v0, v5}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iput-object v1, p0, Landroid/support/design/widget/FloatingActionButtonLollipop;->mRippleDrawable:Landroid/graphics/drawable/Drawable;

    .line 71
    iget-object v1, p0, Landroid/support/design/widget/FloatingActionButtonLollipop;->mShadowViewDelegate:Landroid/support/design/widget/ShadowViewDelegate;

    iget-object v2, p0, Landroid/support/design/widget/FloatingActionButtonLollipop;->mRippleDrawable:Landroid/graphics/drawable/Drawable;

    invoke-interface {v1, v2}, Landroid/support/design/widget/ShadowViewDelegate;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 72
    iget-object v1, p0, Landroid/support/design/widget/FloatingActionButtonLollipop;->mShadowViewDelegate:Landroid/support/design/widget/ShadowViewDelegate;

    invoke-interface {v1, v4, v4, v4, v4}, Landroid/support/design/widget/ShadowViewDelegate;->setShadowPadding(IIII)V

    .line 73
    return-void

    .line 64
    .end local v0    # "rippleContent":Landroid/graphics/drawable/Drawable;
    :cond_1
    iput-object v5, p0, Landroid/support/design/widget/FloatingActionButtonLollipop;->mBorderDrawable:Landroid/support/design/widget/CircularBorderDrawable;

    .line 65
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonLollipop;->mShapeDrawable:Landroid/graphics/drawable/Drawable;

    .restart local v0    # "rippleContent":Landroid/graphics/drawable/Drawable;
    goto :goto_0
.end method

.method public setElevation(F)V
    .locals 1
    .param p1, "elevation"    # F

    .prologue
    .line 86
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonLollipop;->mView:Landroid/view/View;

    invoke-static {v0, p1}, Landroid/support/v4/view/ViewCompat;->setElevation(Landroid/view/View;F)V

    .line 87
    return-void
.end method

.method setPressedTranslationZ(F)V
    .locals 7
    .param p1, "translationZ"    # F

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 91
    new-instance v0, Landroid/animation/StateListAnimator;

    invoke-direct {v0}, Landroid/animation/StateListAnimator;-><init>()V

    .line 94
    .local v0, "stateListAnimator":Landroid/animation/StateListAnimator;
    sget-object v1, Landroid/support/design/widget/FloatingActionButtonLollipop;->PRESSED_ENABLED_STATE_SET:[I

    iget-object v2, p0, Landroid/support/design/widget/FloatingActionButtonLollipop;->mView:Landroid/view/View;

    const-string v3, "translationZ"

    new-array v4, v5, [F

    aput p1, v4, v6

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/support/design/widget/FloatingActionButtonLollipop;->setupAnimator(Landroid/animation/Animator;)Landroid/animation/Animator;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/animation/StateListAnimator;->addState([ILandroid/animation/Animator;)V

    .line 96
    sget-object v1, Landroid/support/design/widget/FloatingActionButtonLollipop;->FOCUSED_ENABLED_STATE_SET:[I

    iget-object v2, p0, Landroid/support/design/widget/FloatingActionButtonLollipop;->mView:Landroid/view/View;

    const-string v3, "translationZ"

    new-array v4, v5, [F

    aput p1, v4, v6

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/support/design/widget/FloatingActionButtonLollipop;->setupAnimator(Landroid/animation/Animator;)Landroid/animation/Animator;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/animation/StateListAnimator;->addState([ILandroid/animation/Animator;)V

    .line 99
    sget-object v1, Landroid/support/design/widget/FloatingActionButtonLollipop;->EMPTY_STATE_SET:[I

    iget-object v2, p0, Landroid/support/design/widget/FloatingActionButtonLollipop;->mView:Landroid/view/View;

    const-string v3, "translationZ"

    new-array v4, v5, [F

    const/4 v5, 0x0

    aput v5, v4, v6

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/support/design/widget/FloatingActionButtonLollipop;->setupAnimator(Landroid/animation/Animator;)Landroid/animation/Animator;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/animation/StateListAnimator;->addState([ILandroid/animation/Animator;)V

    .line 102
    iget-object v1, p0, Landroid/support/design/widget/FloatingActionButtonLollipop;->mView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setStateListAnimator(Landroid/animation/StateListAnimator;)V

    .line 103
    return-void
.end method

.method setRippleColor(I)V
    .locals 2
    .param p1, "rippleColor"    # I

    .prologue
    .line 77
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonLollipop;->mRippleDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v0, v0, Landroid/graphics/drawable/RippleDrawable;

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonLollipop;->mRippleDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/RippleDrawable;

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/RippleDrawable;->setColor(Landroid/content/res/ColorStateList;)V

    .line 82
    :goto_0
    return-void

    .line 80
    :cond_0
    invoke-super {p0, p1}, Landroid/support/design/widget/FloatingActionButtonHoneycombMr1;->setRippleColor(I)V

    goto :goto_0
.end method
