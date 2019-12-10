.class public final Landroid/support/design/widget/Snackbar;
.super Ljava/lang/Object;
.source "Snackbar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/design/widget/Snackbar$Behavior;,
        Landroid/support/design/widget/Snackbar$SnackbarLayout;,
        Landroid/support/design/widget/Snackbar$Duration;,
        Landroid/support/design/widget/Snackbar$Callback;
    }
.end annotation


# static fields
.field private static final ANIMATION_DURATION:I = 0xfa

.field private static final ANIMATION_FADE_DURATION:I = 0xb4

.field public static final LENGTH_INDEFINITE:I = -0x2

.field public static final LENGTH_LONG:I = 0x0

.field public static final LENGTH_SHORT:I = -0x1

.field private static final MSG_DISMISS:I = 0x1

.field private static final MSG_SHOW:I

.field private static final sHandler:Landroid/os/Handler;


# instance fields
.field private mCallback:Landroid/support/design/widget/Snackbar$Callback;

.field private final mContext:Landroid/content/Context;

.field private mDuration:I

.field private final mManagerCallback:Landroid/support/design/widget/SnackbarManager$Callback;

.field private final mTargetParent:Landroid/view/ViewGroup;

.field private final mView:Landroid/support/design/widget/Snackbar$SnackbarLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 156
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Landroid/support/design/widget/Snackbar$1;

    invoke-direct {v2}, Landroid/support/design/widget/Snackbar$1;-><init>()V

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    sput-object v0, Landroid/support/design/widget/Snackbar;->sHandler:Landroid/os/Handler;

    .line 170
    return-void
.end method

.method private constructor <init>(Landroid/view/ViewGroup;)V
    .locals 4
    .param p1, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 178
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 421
    new-instance v1, Landroid/support/design/widget/Snackbar$3;

    invoke-direct {v1, p0}, Landroid/support/design/widget/Snackbar$3;-><init>(Landroid/support/design/widget/Snackbar;)V

    iput-object v1, p0, Landroid/support/design/widget/Snackbar;->mManagerCallback:Landroid/support/design/widget/SnackbarManager$Callback;

    .line 179
    iput-object p1, p0, Landroid/support/design/widget/Snackbar;->mTargetParent:Landroid/view/ViewGroup;

    .line 180
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Landroid/support/design/widget/Snackbar;->mContext:Landroid/content/Context;

    .line 182
    iget-object v1, p0, Landroid/support/design/widget/Snackbar;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/support/design/widget/ThemeUtils;->checkAppCompatTheme(Landroid/content/Context;)V

    .line 184
    iget-object v1, p0, Landroid/support/design/widget/Snackbar;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 185
    .local v0, "inflater":Landroid/view/LayoutInflater;
    sget v1, Landroid/support/design/R$layout;->design_layout_snackbar:I

    iget-object v2, p0, Landroid/support/design/widget/Snackbar;->mTargetParent:Landroid/view/ViewGroup;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/design/widget/Snackbar$SnackbarLayout;

    iput-object v1, p0, Landroid/support/design/widget/Snackbar;->mView:Landroid/support/design/widget/Snackbar$SnackbarLayout;

    .line 187
    return-void
.end method

.method static synthetic access$000(Landroid/support/design/widget/Snackbar;I)V
    .locals 0
    .param p0, "x0"    # Landroid/support/design/widget/Snackbar;
    .param p1, "x1"    # I

    .prologue
    .line 67
    invoke-direct {p0, p1}, Landroid/support/design/widget/Snackbar;->dispatchDismiss(I)V

    return-void
.end method

.method static synthetic access$100()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 67
    sget-object v0, Landroid/support/design/widget/Snackbar;->sHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Landroid/support/design/widget/Snackbar;)Landroid/support/design/widget/SnackbarManager$Callback;
    .locals 1
    .param p0, "x0"    # Landroid/support/design/widget/Snackbar;

    .prologue
    .line 67
    iget-object v0, p0, Landroid/support/design/widget/Snackbar;->mManagerCallback:Landroid/support/design/widget/SnackbarManager$Callback;

    return-object v0
.end method

.method static synthetic access$300(Landroid/support/design/widget/Snackbar;I)V
    .locals 0
    .param p0, "x0"    # Landroid/support/design/widget/Snackbar;
    .param p1, "x1"    # I

    .prologue
    .line 67
    invoke-direct {p0, p1}, Landroid/support/design/widget/Snackbar;->onViewHidden(I)V

    return-void
.end method

.method static synthetic access$400(Landroid/support/design/widget/Snackbar;)V
    .locals 0
    .param p0, "x0"    # Landroid/support/design/widget/Snackbar;

    .prologue
    .line 67
    invoke-direct {p0}, Landroid/support/design/widget/Snackbar;->animateViewIn()V

    return-void
.end method

.method static synthetic access$500(Landroid/support/design/widget/Snackbar;)Landroid/support/design/widget/Snackbar$SnackbarLayout;
    .locals 1
    .param p0, "x0"    # Landroid/support/design/widget/Snackbar;

    .prologue
    .line 67
    iget-object v0, p0, Landroid/support/design/widget/Snackbar;->mView:Landroid/support/design/widget/Snackbar$SnackbarLayout;

    return-object v0
.end method

.method static synthetic access$600(Landroid/support/design/widget/Snackbar;)Landroid/support/design/widget/Snackbar$Callback;
    .locals 1
    .param p0, "x0"    # Landroid/support/design/widget/Snackbar;

    .prologue
    .line 67
    iget-object v0, p0, Landroid/support/design/widget/Snackbar;->mCallback:Landroid/support/design/widget/Snackbar$Callback;

    return-object v0
.end method

.method private animateViewIn()V
    .locals 6

    .prologue
    const-wide/16 v4, 0xfa

    .line 508
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-lt v1, v2, :cond_0

    .line 509
    iget-object v1, p0, Landroid/support/design/widget/Snackbar;->mView:Landroid/support/design/widget/Snackbar$SnackbarLayout;

    iget-object v2, p0, Landroid/support/design/widget/Snackbar;->mView:Landroid/support/design/widget/Snackbar$SnackbarLayout;

    invoke-virtual {v2}, Landroid/support/design/widget/Snackbar$SnackbarLayout;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-static {v1, v2}, Landroid/support/v4/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    .line 510
    iget-object v1, p0, Landroid/support/design/widget/Snackbar;->mView:Landroid/support/design/widget/Snackbar$SnackbarLayout;

    invoke-static {v1}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->translationY(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v1

    sget-object v2, Landroid/support/design/widget/AnimationUtils;->FAST_OUT_SLOW_IN_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setInterpolator(Landroid/view/animation/Interpolator;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v1

    new-instance v2, Landroid/support/design/widget/Snackbar$7;

    invoke-direct {v2, p0}, Landroid/support/design/widget/Snackbar$7;-><init>(Landroid/support/design/widget/Snackbar;)V

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setListener(Landroid/support/v4/view/ViewPropertyAnimatorListener;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->start()V

    .line 551
    :goto_0
    return-void

    .line 530
    :cond_0
    iget-object v1, p0, Landroid/support/design/widget/Snackbar;->mView:Landroid/support/design/widget/Snackbar$SnackbarLayout;

    invoke-virtual {v1}, Landroid/support/design/widget/Snackbar$SnackbarLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Landroid/support/design/R$anim;->design_snackbar_in:I

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 532
    .local v0, "anim":Landroid/view/animation/Animation;
    sget-object v1, Landroid/support/design/widget/AnimationUtils;->FAST_OUT_SLOW_IN_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 533
    invoke-virtual {v0, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 534
    new-instance v1, Landroid/support/design/widget/Snackbar$8;

    invoke-direct {v1, p0}, Landroid/support/design/widget/Snackbar$8;-><init>(Landroid/support/design/widget/Snackbar;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 549
    iget-object v1, p0, Landroid/support/design/widget/Snackbar;->mView:Landroid/support/design/widget/Snackbar$SnackbarLayout;

    invoke-virtual {v1, v0}, Landroid/support/design/widget/Snackbar$SnackbarLayout;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method private animateViewOut(I)V
    .locals 6
    .param p1, "event"    # I

    .prologue
    const-wide/16 v4, 0xfa

    .line 554
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-lt v1, v2, :cond_0

    .line 555
    iget-object v1, p0, Landroid/support/design/widget/Snackbar;->mView:Landroid/support/design/widget/Snackbar$SnackbarLayout;

    invoke-static {v1}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v1

    iget-object v2, p0, Landroid/support/design/widget/Snackbar;->mView:Landroid/support/design/widget/Snackbar$SnackbarLayout;

    invoke-virtual {v2}, Landroid/support/design/widget/Snackbar$SnackbarLayout;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->translationY(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v1

    sget-object v2, Landroid/support/design/widget/AnimationUtils;->FAST_OUT_SLOW_IN_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setInterpolator(Landroid/view/animation/Interpolator;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v1

    new-instance v2, Landroid/support/design/widget/Snackbar$9;

    invoke-direct {v2, p0, p1}, Landroid/support/design/widget/Snackbar$9;-><init>(Landroid/support/design/widget/Snackbar;I)V

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setListener(Landroid/support/v4/view/ViewPropertyAnimatorListener;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->start()V

    .line 588
    :goto_0
    return-void

    .line 571
    :cond_0
    iget-object v1, p0, Landroid/support/design/widget/Snackbar;->mView:Landroid/support/design/widget/Snackbar$SnackbarLayout;

    invoke-virtual {v1}, Landroid/support/design/widget/Snackbar$SnackbarLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Landroid/support/design/R$anim;->design_snackbar_out:I

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 572
    .local v0, "anim":Landroid/view/animation/Animation;
    sget-object v1, Landroid/support/design/widget/AnimationUtils;->FAST_OUT_SLOW_IN_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 573
    invoke-virtual {v0, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 574
    new-instance v1, Landroid/support/design/widget/Snackbar$10;

    invoke-direct {v1, p0, p1}, Landroid/support/design/widget/Snackbar$10;-><init>(Landroid/support/design/widget/Snackbar;I)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 586
    iget-object v1, p0, Landroid/support/design/widget/Snackbar;->mView:Landroid/support/design/widget/Snackbar$SnackbarLayout;

    invoke-virtual {v1, v0}, Landroid/support/design/widget/Snackbar$SnackbarLayout;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method private dispatchDismiss(I)V
    .locals 2
    .param p1, "event"    # I

    .prologue
    .line 394
    invoke-static {}, Landroid/support/design/widget/SnackbarManager;->getInstance()Landroid/support/design/widget/SnackbarManager;

    move-result-object v0

    iget-object v1, p0, Landroid/support/design/widget/Snackbar;->mManagerCallback:Landroid/support/design/widget/SnackbarManager$Callback;

    invoke-virtual {v0, v1, p1}, Landroid/support/design/widget/SnackbarManager;->dismiss(Landroid/support/design/widget/SnackbarManager$Callback;I)V

    .line 395
    return-void
.end method

.method private static findSuitableParent(Landroid/view/View;)Landroid/view/ViewGroup;
    .locals 4
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 238
    const/4 v0, 0x0

    .line 240
    .local v0, "fallback":Landroid/view/ViewGroup;
    :cond_0
    instance-of v2, p0, Landroid/support/design/widget/CoordinatorLayout;

    if-eqz v2, :cond_1

    .line 242
    check-cast p0, Landroid/view/ViewGroup;

    .line 262
    .end local p0    # "view":Landroid/view/View;
    :goto_0
    return-object p0

    .line 243
    .restart local p0    # "view":Landroid/view/View;
    :cond_1
    instance-of v2, p0, Landroid/widget/FrameLayout;

    if-eqz v2, :cond_3

    .line 244
    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v2

    const v3, 0x1020002

    if-ne v2, v3, :cond_2

    .line 247
    check-cast p0, Landroid/view/ViewGroup;

    goto :goto_0

    :cond_2
    move-object v0, p0

    .line 250
    check-cast v0, Landroid/view/ViewGroup;

    .line 254
    :cond_3
    if-eqz p0, :cond_4

    .line 256
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 257
    .local v1, "parent":Landroid/view/ViewParent;
    instance-of v2, v1, Landroid/view/View;

    if-eqz v2, :cond_5

    check-cast v1, Landroid/view/View;

    .end local v1    # "parent":Landroid/view/ViewParent;
    move-object p0, v1

    .line 259
    :cond_4
    :goto_1
    if-nez p0, :cond_0

    move-object p0, v0

    .line 262
    goto :goto_0

    .line 257
    .restart local v1    # "parent":Landroid/view/ViewParent;
    :cond_5
    const/4 p0, 0x0

    goto :goto_1
.end method

.method private isBeingDragged()Z
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 616
    iget-object v4, p0, Landroid/support/design/widget/Snackbar;->mView:Landroid/support/design/widget/Snackbar$SnackbarLayout;

    invoke-virtual {v4}, Landroid/support/design/widget/Snackbar$SnackbarLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 618
    .local v2, "lp":Landroid/view/ViewGroup$LayoutParams;
    instance-of v4, v2, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    if-eqz v4, :cond_0

    move-object v1, v2

    .line 619
    check-cast v1, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    .line 620
    .local v1, "cllp":Landroid/support/design/widget/CoordinatorLayout$LayoutParams;
    invoke-virtual {v1}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->getBehavior()Landroid/support/design/widget/CoordinatorLayout$Behavior;

    move-result-object v0

    .line 622
    .local v0, "behavior":Landroid/support/design/widget/CoordinatorLayout$Behavior;
    instance-of v4, v0, Landroid/support/design/widget/SwipeDismissBehavior;

    if-eqz v4, :cond_0

    .line 623
    check-cast v0, Landroid/support/design/widget/SwipeDismissBehavior;

    .end local v0    # "behavior":Landroid/support/design/widget/CoordinatorLayout$Behavior;
    invoke-virtual {v0}, Landroid/support/design/widget/SwipeDismissBehavior;->getDragState()I

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, 0x1

    .line 627
    .end local v1    # "cllp":Landroid/support/design/widget/CoordinatorLayout$LayoutParams;
    :cond_0
    return v3
.end method

.method public static make(Landroid/view/View;II)Landroid/support/design/widget/Snackbar;
    .locals 1
    .param p0, "view"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "resId"    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param
    .param p2, "duration"    # I
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 234
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {p0, v0, p2}, Landroid/support/design/widget/Snackbar;->make(Landroid/view/View;Ljava/lang/CharSequence;I)Landroid/support/design/widget/Snackbar;

    move-result-object v0

    return-object v0
.end method

.method public static make(Landroid/view/View;Ljava/lang/CharSequence;I)Landroid/support/design/widget/Snackbar;
    .locals 2
    .param p0, "view"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "text"    # Ljava/lang/CharSequence;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "duration"    # I
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 209
    new-instance v0, Landroid/support/design/widget/Snackbar;

    invoke-static {p0}, Landroid/support/design/widget/Snackbar;->findSuitableParent(Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/design/widget/Snackbar;-><init>(Landroid/view/ViewGroup;)V

    .line 210
    .local v0, "snackbar":Landroid/support/design/widget/Snackbar;
    invoke-virtual {v0, p1}, Landroid/support/design/widget/Snackbar;->setText(Ljava/lang/CharSequence;)Landroid/support/design/widget/Snackbar;

    .line 211
    invoke-virtual {v0, p2}, Landroid/support/design/widget/Snackbar;->setDuration(I)Landroid/support/design/widget/Snackbar;

    .line 212
    return-object v0
.end method

.method private onViewHidden(I)V
    .locals 3
    .param p1, "event"    # I

    .prologue
    .line 600
    invoke-static {}, Landroid/support/design/widget/SnackbarManager;->getInstance()Landroid/support/design/widget/SnackbarManager;

    move-result-object v1

    iget-object v2, p0, Landroid/support/design/widget/Snackbar;->mManagerCallback:Landroid/support/design/widget/SnackbarManager$Callback;

    invoke-virtual {v1, v2}, Landroid/support/design/widget/SnackbarManager;->onDismissed(Landroid/support/design/widget/SnackbarManager$Callback;)V

    .line 602
    iget-object v1, p0, Landroid/support/design/widget/Snackbar;->mCallback:Landroid/support/design/widget/Snackbar$Callback;

    if-eqz v1, :cond_0

    .line 603
    iget-object v1, p0, Landroid/support/design/widget/Snackbar;->mCallback:Landroid/support/design/widget/Snackbar$Callback;

    invoke-virtual {v1, p0, p1}, Landroid/support/design/widget/Snackbar$Callback;->onDismissed(Landroid/support/design/widget/Snackbar;I)V

    .line 606
    :cond_0
    iget-object v1, p0, Landroid/support/design/widget/Snackbar;->mView:Landroid/support/design/widget/Snackbar$SnackbarLayout;

    invoke-virtual {v1}, Landroid/support/design/widget/Snackbar$SnackbarLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 607
    .local v0, "parent":Landroid/view/ViewParent;
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    .line 608
    check-cast v0, Landroid/view/ViewGroup;

    .end local v0    # "parent":Landroid/view/ViewParent;
    iget-object v1, p0, Landroid/support/design/widget/Snackbar;->mView:Landroid/support/design/widget/Snackbar$SnackbarLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 610
    :cond_1
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .prologue
    .line 390
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Landroid/support/design/widget/Snackbar;->dispatchDismiss(I)V

    .line 391
    return-void
.end method

.method public getDuration()I
    .locals 1

    .prologue
    .line 368
    iget v0, p0, Landroid/support/design/widget/Snackbar;->mDuration:I

    return v0
.end method

.method public getView()Landroid/view/View;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 376
    iget-object v0, p0, Landroid/support/design/widget/Snackbar;->mView:Landroid/support/design/widget/Snackbar$SnackbarLayout;

    return-object v0
.end method

.method final hideView(I)V
    .locals 1
    .param p1, "event"    # I

    .prologue
    .line 591
    iget-object v0, p0, Landroid/support/design/widget/Snackbar;->mView:Landroid/support/design/widget/Snackbar$SnackbarLayout;

    invoke-virtual {v0}, Landroid/support/design/widget/Snackbar$SnackbarLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Landroid/support/design/widget/Snackbar;->isBeingDragged()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 592
    :cond_0
    invoke-direct {p0, p1}, Landroid/support/design/widget/Snackbar;->onViewHidden(I)V

    .line 596
    :goto_0
    return-void

    .line 594
    :cond_1
    invoke-direct {p0, p1}, Landroid/support/design/widget/Snackbar;->animateViewOut(I)V

    goto :goto_0
.end method

.method public isShown()Z
    .locals 2

    .prologue
    .line 410
    invoke-static {}, Landroid/support/design/widget/SnackbarManager;->getInstance()Landroid/support/design/widget/SnackbarManager;

    move-result-object v0

    iget-object v1, p0, Landroid/support/design/widget/Snackbar;->mManagerCallback:Landroid/support/design/widget/SnackbarManager$Callback;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/SnackbarManager;->isCurrent(Landroid/support/design/widget/SnackbarManager$Callback;)Z

    move-result v0

    return v0
.end method

.method public isShownOrQueued()Z
    .locals 2

    .prologue
    .line 418
    invoke-static {}, Landroid/support/design/widget/SnackbarManager;->getInstance()Landroid/support/design/widget/SnackbarManager;

    move-result-object v0

    iget-object v1, p0, Landroid/support/design/widget/Snackbar;->mManagerCallback:Landroid/support/design/widget/SnackbarManager$Callback;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/SnackbarManager;->isCurrentOrNext(Landroid/support/design/widget/SnackbarManager$Callback;)Z

    move-result v0

    return v0
.end method

.method public setAction(ILandroid/view/View$OnClickListener;)Landroid/support/design/widget/Snackbar;
    .locals 1
    .param p1, "resId"    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param
    .param p2, "listener"    # Landroid/view/View$OnClickListener;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 273
    iget-object v0, p0, Landroid/support/design/widget/Snackbar;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Landroid/support/design/widget/Snackbar;->setAction(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)Landroid/support/design/widget/Snackbar;

    move-result-object v0

    return-object v0
.end method

.method public setAction(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)Landroid/support/design/widget/Snackbar;
    .locals 2
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "listener"    # Landroid/view/View$OnClickListener;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 284
    iget-object v1, p0, Landroid/support/design/widget/Snackbar;->mView:Landroid/support/design/widget/Snackbar$SnackbarLayout;

    invoke-virtual {v1}, Landroid/support/design/widget/Snackbar$SnackbarLayout;->getActionView()Landroid/widget/Button;

    move-result-object v0

    .line 286
    .local v0, "tv":Landroid/widget/TextView;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    if-nez p2, :cond_1

    .line 287
    :cond_0
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 288
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 301
    :goto_0
    return-object p0

    .line 290
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 291
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 292
    new-instance v1, Landroid/support/design/widget/Snackbar$2;

    invoke-direct {v1, p0, p2}, Landroid/support/design/widget/Snackbar$2;-><init>(Landroid/support/design/widget/Snackbar;Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public setActionTextColor(I)Landroid/support/design/widget/Snackbar;
    .locals 2
    .param p1, "color"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 321
    iget-object v1, p0, Landroid/support/design/widget/Snackbar;->mView:Landroid/support/design/widget/Snackbar$SnackbarLayout;

    invoke-virtual {v1}, Landroid/support/design/widget/Snackbar$SnackbarLayout;->getActionView()Landroid/widget/Button;

    move-result-object v0

    .line 322
    .local v0, "tv":Landroid/widget/TextView;
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 323
    return-object p0
.end method

.method public setActionTextColor(Landroid/content/res/ColorStateList;)Landroid/support/design/widget/Snackbar;
    .locals 2
    .param p1, "colors"    # Landroid/content/res/ColorStateList;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 310
    iget-object v1, p0, Landroid/support/design/widget/Snackbar;->mView:Landroid/support/design/widget/Snackbar$SnackbarLayout;

    invoke-virtual {v1}, Landroid/support/design/widget/Snackbar$SnackbarLayout;->getActionView()Landroid/widget/Button;

    move-result-object v0

    .line 311
    .local v0, "tv":Landroid/widget/TextView;
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 312
    return-object p0
.end method

.method public setCallback(Landroid/support/design/widget/Snackbar$Callback;)Landroid/support/design/widget/Snackbar;
    .locals 0
    .param p1, "callback"    # Landroid/support/design/widget/Snackbar$Callback;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 402
    iput-object p1, p0, Landroid/support/design/widget/Snackbar;->mCallback:Landroid/support/design/widget/Snackbar$Callback;

    .line 403
    return-object p0
.end method

.method public setDuration(I)Landroid/support/design/widget/Snackbar;
    .locals 0
    .param p1, "duration"    # I
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 357
    iput p1, p0, Landroid/support/design/widget/Snackbar;->mDuration:I

    .line 358
    return-object p0
.end method

.method public setText(I)Landroid/support/design/widget/Snackbar;
    .locals 1
    .param p1, "resId"    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 345
    iget-object v0, p0, Landroid/support/design/widget/Snackbar;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/design/widget/Snackbar;->setText(Ljava/lang/CharSequence;)Landroid/support/design/widget/Snackbar;

    move-result-object v0

    return-object v0
.end method

.method public setText(Ljava/lang/CharSequence;)Landroid/support/design/widget/Snackbar;
    .locals 2
    .param p1, "message"    # Ljava/lang/CharSequence;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 333
    iget-object v1, p0, Landroid/support/design/widget/Snackbar;->mView:Landroid/support/design/widget/Snackbar$SnackbarLayout;

    invoke-virtual {v1}, Landroid/support/design/widget/Snackbar$SnackbarLayout;->getMessageView()Landroid/widget/TextView;

    move-result-object v0

    .line 334
    .local v0, "tv":Landroid/widget/TextView;
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 335
    return-object p0
.end method

.method public show()V
    .locals 3

    .prologue
    .line 383
    invoke-static {}, Landroid/support/design/widget/SnackbarManager;->getInstance()Landroid/support/design/widget/SnackbarManager;

    move-result-object v0

    iget v1, p0, Landroid/support/design/widget/Snackbar;->mDuration:I

    iget-object v2, p0, Landroid/support/design/widget/Snackbar;->mManagerCallback:Landroid/support/design/widget/SnackbarManager$Callback;

    invoke-virtual {v0, v1, v2}, Landroid/support/design/widget/SnackbarManager;->show(ILandroid/support/design/widget/SnackbarManager$Callback;)V

    .line 384
    return-void
.end method

.method final showView()V
    .locals 4

    .prologue
    .line 434
    iget-object v2, p0, Landroid/support/design/widget/Snackbar;->mView:Landroid/support/design/widget/Snackbar$SnackbarLayout;

    invoke-virtual {v2}, Landroid/support/design/widget/Snackbar$SnackbarLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-nez v2, :cond_1

    .line 435
    iget-object v2, p0, Landroid/support/design/widget/Snackbar;->mView:Landroid/support/design/widget/Snackbar$SnackbarLayout;

    invoke-virtual {v2}, Landroid/support/design/widget/Snackbar$SnackbarLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 437
    .local v1, "lp":Landroid/view/ViewGroup$LayoutParams;
    instance-of v2, v1, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    if-eqz v2, :cond_0

    .line 440
    new-instance v0, Landroid/support/design/widget/Snackbar$Behavior;

    invoke-direct {v0, p0}, Landroid/support/design/widget/Snackbar$Behavior;-><init>(Landroid/support/design/widget/Snackbar;)V

    .line 441
    .local v0, "behavior":Landroid/support/design/widget/Snackbar$Behavior;
    const v2, 0x3dcccccd    # 0.1f

    invoke-virtual {v0, v2}, Landroid/support/design/widget/Snackbar$Behavior;->setStartAlphaSwipeDistance(F)V

    .line 442
    const v2, 0x3f19999a    # 0.6f

    invoke-virtual {v0, v2}, Landroid/support/design/widget/Snackbar$Behavior;->setEndAlphaSwipeDistance(F)V

    .line 443
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/support/design/widget/Snackbar$Behavior;->setSwipeDirection(I)V

    .line 444
    new-instance v2, Landroid/support/design/widget/Snackbar$4;

    invoke-direct {v2, p0}, Landroid/support/design/widget/Snackbar$4;-><init>(Landroid/support/design/widget/Snackbar;)V

    invoke-virtual {v0, v2}, Landroid/support/design/widget/Snackbar$Behavior;->setListener(Landroid/support/design/widget/SwipeDismissBehavior$OnDismissListener;)V

    .line 465
    check-cast v1, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    .end local v1    # "lp":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {v1, v0}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->setBehavior(Landroid/support/design/widget/CoordinatorLayout$Behavior;)V

    .line 468
    .end local v0    # "behavior":Landroid/support/design/widget/Snackbar$Behavior;
    :cond_0
    iget-object v2, p0, Landroid/support/design/widget/Snackbar;->mTargetParent:Landroid/view/ViewGroup;

    iget-object v3, p0, Landroid/support/design/widget/Snackbar;->mView:Landroid/support/design/widget/Snackbar$SnackbarLayout;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 471
    :cond_1
    iget-object v2, p0, Landroid/support/design/widget/Snackbar;->mView:Landroid/support/design/widget/Snackbar$SnackbarLayout;

    new-instance v3, Landroid/support/design/widget/Snackbar$5;

    invoke-direct {v3, p0}, Landroid/support/design/widget/Snackbar$5;-><init>(Landroid/support/design/widget/Snackbar;)V

    invoke-virtual {v2, v3}, Landroid/support/design/widget/Snackbar$SnackbarLayout;->setOnAttachStateChangeListener(Landroid/support/design/widget/Snackbar$SnackbarLayout$OnAttachStateChangeListener;)V

    .line 492
    iget-object v2, p0, Landroid/support/design/widget/Snackbar;->mView:Landroid/support/design/widget/Snackbar$SnackbarLayout;

    invoke-static {v2}, Landroid/support/v4/view/ViewCompat;->isLaidOut(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 494
    invoke-direct {p0}, Landroid/support/design/widget/Snackbar;->animateViewIn()V

    .line 505
    :goto_0
    return-void

    .line 497
    :cond_2
    iget-object v2, p0, Landroid/support/design/widget/Snackbar;->mView:Landroid/support/design/widget/Snackbar$SnackbarLayout;

    new-instance v3, Landroid/support/design/widget/Snackbar$6;

    invoke-direct {v3, p0}, Landroid/support/design/widget/Snackbar$6;-><init>(Landroid/support/design/widget/Snackbar;)V

    invoke-virtual {v2, v3}, Landroid/support/design/widget/Snackbar$SnackbarLayout;->setOnLayoutChangeListener(Landroid/support/design/widget/Snackbar$SnackbarLayout$OnLayoutChangeListener;)V

    goto :goto_0
.end method
