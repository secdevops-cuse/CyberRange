.class public Landroid/support/v7/app/WindowDecorActionBar;
.super Landroid/support/v7/app/ActionBar;
.source "WindowDecorActionBar.java"

# interfaces
.implements Landroid/support/v7/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/app/WindowDecorActionBar$TabImpl;,
        Landroid/support/v7/app/WindowDecorActionBar$ActionModeImpl;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final ALLOW_SHOW_HIDE_ANIMATIONS:Z

.field private static final FADE_IN_DURATION_MS:J = 0xc8L

.field private static final FADE_OUT_DURATION_MS:J = 0x64L

.field private static final INVALID_POSITION:I = -0x1

.field private static final TAG:Ljava/lang/String; = "WindowDecorActionBar"

.field private static final sHideInterpolator:Landroid/view/animation/Interpolator;

.field private static final sShowInterpolator:Landroid/view/animation/Interpolator;


# instance fields
.field mActionMode:Landroid/support/v7/app/WindowDecorActionBar$ActionModeImpl;

.field private mActivity:Landroid/app/Activity;

.field private mContainerView:Landroid/support/v7/widget/ActionBarContainer;

.field private mContentAnimations:Z

.field private mContentView:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field private mContextView:Landroid/support/v7/widget/ActionBarContextView;

.field private mCurWindowVisibility:I

.field private mCurrentShowAnim:Landroid/support/v7/view/ViewPropertyAnimatorCompatSet;

.field private mDecorToolbar:Landroid/support/v7/widget/DecorToolbar;

.field mDeferredDestroyActionMode:Landroid/support/v7/view/ActionMode;

.field mDeferredModeDestroyCallback:Landroid/support/v7/view/ActionMode$Callback;

.field private mDialog:Landroid/app/Dialog;

.field private mDisplayHomeAsUpSet:Z

.field private mHasEmbeddedTabs:Z

.field private mHiddenByApp:Z

.field private mHiddenBySystem:Z

.field final mHideListener:Landroid/support/v4/view/ViewPropertyAnimatorListener;

.field mHideOnContentScroll:Z

.field private mLastMenuVisibility:Z

.field private mMenuVisibilityListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v7/app/ActionBar$OnMenuVisibilityListener;",
            ">;"
        }
    .end annotation
.end field

.field private mNowShowing:Z

.field private mOverlayLayout:Landroid/support/v7/widget/ActionBarOverlayLayout;

.field private mSavedTabPosition:I

.field private mSelectedTab:Landroid/support/v7/app/WindowDecorActionBar$TabImpl;

.field private mShowHideAnimationEnabled:Z

.field final mShowListener:Landroid/support/v4/view/ViewPropertyAnimatorListener;

.field private mShowingForMode:Z

.field private mTabScrollView:Landroid/support/v7/widget/ScrollingTabContainerView;

.field private mTabs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v7/app/WindowDecorActionBar$TabImpl;",
            ">;"
        }
    .end annotation
.end field

.field private mThemedContext:Landroid/content/Context;

.field private mTintManager:Landroid/support/v7/widget/TintManager;

.field final mUpdateListener:Landroid/support/v4/view/ViewPropertyAnimatorUpdateListener;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 73
    const-class v0, Landroid/support/v7/app/WindowDecorActionBar;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Landroid/support/v7/app/WindowDecorActionBar;->$assertionsDisabled:Z

    .line 77
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    sput-object v0, Landroid/support/v7/app/WindowDecorActionBar;->sHideInterpolator:Landroid/view/animation/Interpolator;

    .line 78
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    sput-object v0, Landroid/support/v7/app/WindowDecorActionBar;->sShowInterpolator:Landroid/view/animation/Interpolator;

    .line 83
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xe

    if-lt v0, v3, :cond_1

    :goto_1
    sput-boolean v1, Landroid/support/v7/app/WindowDecorActionBar;->ALLOW_SHOW_HIDE_ANIMATIONS:Z

    return-void

    :cond_0
    move v0, v2

    .line 73
    goto :goto_0

    :cond_1
    move v1, v2

    .line 83
    goto :goto_1
.end method

.method public constructor <init>(Landroid/app/Activity;Z)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "overlayMode"    # Z

    .prologue
    const/4 v3, 0x1

    .line 169
    invoke-direct {p0}, Landroid/support/v7/app/ActionBar;-><init>()V

    .line 97
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroid/support/v7/app/WindowDecorActionBar;->mTabs:Ljava/util/ArrayList;

    .line 100
    const/4 v2, -0x1

    iput v2, p0, Landroid/support/v7/app/WindowDecorActionBar;->mSavedTabPosition:I

    .line 109
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroid/support/v7/app/WindowDecorActionBar;->mMenuVisibilityListeners:Ljava/util/ArrayList;

    .line 120
    const/4 v2, 0x0

    iput v2, p0, Landroid/support/v7/app/WindowDecorActionBar;->mCurWindowVisibility:I

    .line 122
    iput-boolean v3, p0, Landroid/support/v7/app/WindowDecorActionBar;->mContentAnimations:Z

    .line 127
    iput-boolean v3, p0, Landroid/support/v7/app/WindowDecorActionBar;->mNowShowing:Z

    .line 135
    new-instance v2, Landroid/support/v7/app/WindowDecorActionBar$1;

    invoke-direct {v2, p0}, Landroid/support/v7/app/WindowDecorActionBar$1;-><init>(Landroid/support/v7/app/WindowDecorActionBar;)V

    iput-object v2, p0, Landroid/support/v7/app/WindowDecorActionBar;->mHideListener:Landroid/support/v4/view/ViewPropertyAnimatorListener;

    .line 152
    new-instance v2, Landroid/support/v7/app/WindowDecorActionBar$2;

    invoke-direct {v2, p0}, Landroid/support/v7/app/WindowDecorActionBar$2;-><init>(Landroid/support/v7/app/WindowDecorActionBar;)V

    iput-object v2, p0, Landroid/support/v7/app/WindowDecorActionBar;->mShowListener:Landroid/support/v4/view/ViewPropertyAnimatorListener;

    .line 160
    new-instance v2, Landroid/support/v7/app/WindowDecorActionBar$3;

    invoke-direct {v2, p0}, Landroid/support/v7/app/WindowDecorActionBar$3;-><init>(Landroid/support/v7/app/WindowDecorActionBar;)V

    iput-object v2, p0, Landroid/support/v7/app/WindowDecorActionBar;->mUpdateListener:Landroid/support/v4/view/ViewPropertyAnimatorUpdateListener;

    .line 170
    iput-object p1, p0, Landroid/support/v7/app/WindowDecorActionBar;->mActivity:Landroid/app/Activity;

    .line 171
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 172
    .local v1, "window":Landroid/view/Window;
    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 173
    .local v0, "decor":Landroid/view/View;
    invoke-direct {p0, v0}, Landroid/support/v7/app/WindowDecorActionBar;->init(Landroid/view/View;)V

    .line 174
    if-nez p2, :cond_0

    .line 175
    const v2, 0x1020002

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Landroid/support/v7/app/WindowDecorActionBar;->mContentView:Landroid/view/View;

    .line 177
    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/app/Dialog;)V
    .locals 2
    .param p1, "dialog"    # Landroid/app/Dialog;

    .prologue
    const/4 v1, 0x1

    .line 179
    invoke-direct {p0}, Landroid/support/v7/app/ActionBar;-><init>()V

    .line 97
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/app/WindowDecorActionBar;->mTabs:Ljava/util/ArrayList;

    .line 100
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/app/WindowDecorActionBar;->mSavedTabPosition:I

    .line 109
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/app/WindowDecorActionBar;->mMenuVisibilityListeners:Ljava/util/ArrayList;

    .line 120
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/app/WindowDecorActionBar;->mCurWindowVisibility:I

    .line 122
    iput-boolean v1, p0, Landroid/support/v7/app/WindowDecorActionBar;->mContentAnimations:Z

    .line 127
    iput-boolean v1, p0, Landroid/support/v7/app/WindowDecorActionBar;->mNowShowing:Z

    .line 135
    new-instance v0, Landroid/support/v7/app/WindowDecorActionBar$1;

    invoke-direct {v0, p0}, Landroid/support/v7/app/WindowDecorActionBar$1;-><init>(Landroid/support/v7/app/WindowDecorActionBar;)V

    iput-object v0, p0, Landroid/support/v7/app/WindowDecorActionBar;->mHideListener:Landroid/support/v4/view/ViewPropertyAnimatorListener;

    .line 152
    new-instance v0, Landroid/support/v7/app/WindowDecorActionBar$2;

    invoke-direct {v0, p0}, Landroid/support/v7/app/WindowDecorActionBar$2;-><init>(Landroid/support/v7/app/WindowDecorActionBar;)V

    iput-object v0, p0, Landroid/support/v7/app/WindowDecorActionBar;->mShowListener:Landroid/support/v4/view/ViewPropertyAnimatorListener;

    .line 160
    new-instance v0, Landroid/support/v7/app/WindowDecorActionBar$3;

    invoke-direct {v0, p0}, Landroid/support/v7/app/WindowDecorActionBar$3;-><init>(Landroid/support/v7/app/WindowDecorActionBar;)V

    iput-object v0, p0, Landroid/support/v7/app/WindowDecorActionBar;->mUpdateListener:Landroid/support/v4/view/ViewPropertyAnimatorUpdateListener;

    .line 180
    iput-object p1, p0, Landroid/support/v7/app/WindowDecorActionBar;->mDialog:Landroid/app/Dialog;

    .line 181
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/support/v7/app/WindowDecorActionBar;->init(Landroid/view/View;)V

    .line 182
    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 2
    .param p1, "layout"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x1

    .line 188
    invoke-direct {p0}, Landroid/support/v7/app/ActionBar;-><init>()V

    .line 97
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/app/WindowDecorActionBar;->mTabs:Ljava/util/ArrayList;

    .line 100
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/app/WindowDecorActionBar;->mSavedTabPosition:I

    .line 109
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/app/WindowDecorActionBar;->mMenuVisibilityListeners:Ljava/util/ArrayList;

    .line 120
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/app/WindowDecorActionBar;->mCurWindowVisibility:I

    .line 122
    iput-boolean v1, p0, Landroid/support/v7/app/WindowDecorActionBar;->mContentAnimations:Z

    .line 127
    iput-boolean v1, p0, Landroid/support/v7/app/WindowDecorActionBar;->mNowShowing:Z

    .line 135
    new-instance v0, Landroid/support/v7/app/WindowDecorActionBar$1;

    invoke-direct {v0, p0}, Landroid/support/v7/app/WindowDecorActionBar$1;-><init>(Landroid/support/v7/app/WindowDecorActionBar;)V

    iput-object v0, p0, Landroid/support/v7/app/WindowDecorActionBar;->mHideListener:Landroid/support/v4/view/ViewPropertyAnimatorListener;

    .line 152
    new-instance v0, Landroid/support/v7/app/WindowDecorActionBar$2;

    invoke-direct {v0, p0}, Landroid/support/v7/app/WindowDecorActionBar$2;-><init>(Landroid/support/v7/app/WindowDecorActionBar;)V

    iput-object v0, p0, Landroid/support/v7/app/WindowDecorActionBar;->mShowListener:Landroid/support/v4/view/ViewPropertyAnimatorListener;

    .line 160
    new-instance v0, Landroid/support/v7/app/WindowDecorActionBar$3;

    invoke-direct {v0, p0}, Landroid/support/v7/app/WindowDecorActionBar$3;-><init>(Landroid/support/v7/app/WindowDecorActionBar;)V

    iput-object v0, p0, Landroid/support/v7/app/WindowDecorActionBar;->mUpdateListener:Landroid/support/v4/view/ViewPropertyAnimatorUpdateListener;

    .line 189
    sget-boolean v0, Landroid/support/v7/app/WindowDecorActionBar;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 190
    :cond_0
    invoke-direct {p0, p1}, Landroid/support/v7/app/WindowDecorActionBar;->init(Landroid/view/View;)V

    .line 191
    return-void
.end method

.method static synthetic access$000(Landroid/support/v7/app/WindowDecorActionBar;)Z
    .locals 1
    .param p0, "x0"    # Landroid/support/v7/app/WindowDecorActionBar;

    .prologue
    .line 73
    iget-boolean v0, p0, Landroid/support/v7/app/WindowDecorActionBar;->mContentAnimations:Z

    return v0
.end method

.method static synthetic access$100(Landroid/support/v7/app/WindowDecorActionBar;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Landroid/support/v7/app/WindowDecorActionBar;

    .prologue
    .line 73
    iget-object v0, p0, Landroid/support/v7/app/WindowDecorActionBar;->mContentView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1000(Landroid/support/v7/app/WindowDecorActionBar;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Landroid/support/v7/app/WindowDecorActionBar;

    .prologue
    .line 73
    iget-object v0, p0, Landroid/support/v7/app/WindowDecorActionBar;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1100(Landroid/support/v7/app/WindowDecorActionBar;)Landroid/support/v7/widget/ScrollingTabContainerView;
    .locals 1
    .param p0, "x0"    # Landroid/support/v7/app/WindowDecorActionBar;

    .prologue
    .line 73
    iget-object v0, p0, Landroid/support/v7/app/WindowDecorActionBar;->mTabScrollView:Landroid/support/v7/widget/ScrollingTabContainerView;

    return-object v0
.end method

.method static synthetic access$200(Landroid/support/v7/app/WindowDecorActionBar;)Landroid/support/v7/widget/ActionBarContainer;
    .locals 1
    .param p0, "x0"    # Landroid/support/v7/app/WindowDecorActionBar;

    .prologue
    .line 73
    iget-object v0, p0, Landroid/support/v7/app/WindowDecorActionBar;->mContainerView:Landroid/support/v7/widget/ActionBarContainer;

    return-object v0
.end method

.method static synthetic access$302(Landroid/support/v7/app/WindowDecorActionBar;Landroid/support/v7/view/ViewPropertyAnimatorCompatSet;)Landroid/support/v7/view/ViewPropertyAnimatorCompatSet;
    .locals 0
    .param p0, "x0"    # Landroid/support/v7/app/WindowDecorActionBar;
    .param p1, "x1"    # Landroid/support/v7/view/ViewPropertyAnimatorCompatSet;

    .prologue
    .line 73
    iput-object p1, p0, Landroid/support/v7/app/WindowDecorActionBar;->mCurrentShowAnim:Landroid/support/v7/view/ViewPropertyAnimatorCompatSet;

    return-object p1
.end method

.method static synthetic access$400(Landroid/support/v7/app/WindowDecorActionBar;)Landroid/support/v7/widget/ActionBarOverlayLayout;
    .locals 1
    .param p0, "x0"    # Landroid/support/v7/app/WindowDecorActionBar;

    .prologue
    .line 73
    iget-object v0, p0, Landroid/support/v7/app/WindowDecorActionBar;->mOverlayLayout:Landroid/support/v7/widget/ActionBarOverlayLayout;

    return-object v0
.end method

.method static synthetic access$500(Landroid/support/v7/app/WindowDecorActionBar;)Z
    .locals 1
    .param p0, "x0"    # Landroid/support/v7/app/WindowDecorActionBar;

    .prologue
    .line 73
    iget-boolean v0, p0, Landroid/support/v7/app/WindowDecorActionBar;->mHiddenByApp:Z

    return v0
.end method

.method static synthetic access$600(Landroid/support/v7/app/WindowDecorActionBar;)Z
    .locals 1
    .param p0, "x0"    # Landroid/support/v7/app/WindowDecorActionBar;

    .prologue
    .line 73
    iget-boolean v0, p0, Landroid/support/v7/app/WindowDecorActionBar;->mHiddenBySystem:Z

    return v0
.end method

.method static synthetic access$700(ZZZ)Z
    .locals 1
    .param p0, "x0"    # Z
    .param p1, "x1"    # Z
    .param p2, "x2"    # Z

    .prologue
    .line 73
    invoke-static {p0, p1, p2}, Landroid/support/v7/app/WindowDecorActionBar;->checkShowingFlags(ZZZ)Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Landroid/support/v7/app/WindowDecorActionBar;)Landroid/support/v7/widget/ActionBarContextView;
    .locals 1
    .param p0, "x0"    # Landroid/support/v7/app/WindowDecorActionBar;

    .prologue
    .line 73
    iget-object v0, p0, Landroid/support/v7/app/WindowDecorActionBar;->mContextView:Landroid/support/v7/widget/ActionBarContextView;

    return-object v0
.end method

.method static synthetic access$900(Landroid/support/v7/app/WindowDecorActionBar;)Landroid/support/v7/widget/DecorToolbar;
    .locals 1
    .param p0, "x0"    # Landroid/support/v7/app/WindowDecorActionBar;

    .prologue
    .line 73
    iget-object v0, p0, Landroid/support/v7/app/WindowDecorActionBar;->mDecorToolbar:Landroid/support/v7/widget/DecorToolbar;

    return-object v0
.end method

.method private static checkShowingFlags(ZZZ)Z
    .locals 1
    .param p0, "hiddenByApp"    # Z
    .param p1, "hiddenBySystem"    # Z
    .param p2, "showingForMode"    # Z

    .prologue
    const/4 v0, 0x1

    .line 723
    if-eqz p2, :cond_1

    .line 728
    :cond_0
    :goto_0
    return v0

    .line 725
    :cond_1
    if-nez p0, :cond_2

    if-eqz p1, :cond_0

    .line 726
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private cleanupTabs()V
    .locals 1

    .prologue
    .line 420
    iget-object v0, p0, Landroid/support/v7/app/WindowDecorActionBar;->mSelectedTab:Landroid/support/v7/app/WindowDecorActionBar$TabImpl;

    if-eqz v0, :cond_0

    .line 421
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v7/app/WindowDecorActionBar;->selectTab(Landroid/support/v7/app/ActionBar$Tab;)V

    .line 423
    :cond_0
    iget-object v0, p0, Landroid/support/v7/app/WindowDecorActionBar;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 424
    iget-object v0, p0, Landroid/support/v7/app/WindowDecorActionBar;->mTabScrollView:Landroid/support/v7/widget/ScrollingTabContainerView;

    if-eqz v0, :cond_1

    .line 425
    iget-object v0, p0, Landroid/support/v7/app/WindowDecorActionBar;->mTabScrollView:Landroid/support/v7/widget/ScrollingTabContainerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/ScrollingTabContainerView;->removeAllTabs()V

    .line 427
    :cond_1
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/app/WindowDecorActionBar;->mSavedTabPosition:I

    .line 428
    return-void
.end method

.method private configureTab(Landroid/support/v7/app/ActionBar$Tab;I)V
    .locals 6
    .param p1, "tab"    # Landroid/support/v7/app/ActionBar$Tab;
    .param p2, "position"    # I

    .prologue
    .line 510
    move-object v3, p1

    check-cast v3, Landroid/support/v7/app/WindowDecorActionBar$TabImpl;

    .line 511
    .local v3, "tabi":Landroid/support/v7/app/WindowDecorActionBar$TabImpl;
    invoke-virtual {v3}, Landroid/support/v7/app/WindowDecorActionBar$TabImpl;->getCallback()Landroid/support/v7/app/ActionBar$TabListener;

    move-result-object v0

    .line 513
    .local v0, "callback":Landroid/support/v7/app/ActionBar$TabListener;
    if-nez v0, :cond_0

    .line 514
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Action Bar Tab must have a Callback"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 517
    :cond_0
    invoke-virtual {v3, p2}, Landroid/support/v7/app/WindowDecorActionBar$TabImpl;->setPosition(I)V

    .line 518
    iget-object v4, p0, Landroid/support/v7/app/WindowDecorActionBar;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v4, p2, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 520
    iget-object v4, p0, Landroid/support/v7/app/WindowDecorActionBar;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 521
    .local v1, "count":I
    add-int/lit8 v2, p2, 0x1

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 522
    iget-object v4, p0, Landroid/support/v7/app/WindowDecorActionBar;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v7/app/WindowDecorActionBar$TabImpl;

    invoke-virtual {v4, v2}, Landroid/support/v7/app/WindowDecorActionBar$TabImpl;->setPosition(I)V

    .line 521
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 524
    :cond_1
    return-void
.end method

.method private ensureTabsExist()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 286
    iget-object v1, p0, Landroid/support/v7/app/WindowDecorActionBar;->mTabScrollView:Landroid/support/v7/widget/ScrollingTabContainerView;

    if-eqz v1, :cond_0

    .line 307
    :goto_0
    return-void

    .line 290
    :cond_0
    new-instance v0, Landroid/support/v7/widget/ScrollingTabContainerView;

    iget-object v1, p0, Landroid/support/v7/app/WindowDecorActionBar;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/support/v7/widget/ScrollingTabContainerView;-><init>(Landroid/content/Context;)V

    .line 292
    .local v0, "tabScroller":Landroid/support/v7/widget/ScrollingTabContainerView;
    iget-boolean v1, p0, Landroid/support/v7/app/WindowDecorActionBar;->mHasEmbeddedTabs:Z

    if-eqz v1, :cond_1

    .line 293
    invoke-virtual {v0, v3}, Landroid/support/v7/widget/ScrollingTabContainerView;->setVisibility(I)V

    .line 294
    iget-object v1, p0, Landroid/support/v7/app/WindowDecorActionBar;->mDecorToolbar:Landroid/support/v7/widget/DecorToolbar;

    invoke-interface {v1, v0}, Landroid/support/v7/widget/DecorToolbar;->setEmbeddedTabView(Landroid/support/v7/widget/ScrollingTabContainerView;)V

    .line 306
    :goto_1
    iput-object v0, p0, Landroid/support/v7/app/WindowDecorActionBar;->mTabScrollView:Landroid/support/v7/widget/ScrollingTabContainerView;

    goto :goto_0

    .line 296
    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/app/WindowDecorActionBar;->getNavigationMode()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    .line 297
    invoke-virtual {v0, v3}, Landroid/support/v7/widget/ScrollingTabContainerView;->setVisibility(I)V

    .line 298
    iget-object v1, p0, Landroid/support/v7/app/WindowDecorActionBar;->mOverlayLayout:Landroid/support/v7/widget/ActionBarOverlayLayout;

    if-eqz v1, :cond_2

    .line 299
    iget-object v1, p0, Landroid/support/v7/app/WindowDecorActionBar;->mOverlayLayout:Landroid/support/v7/widget/ActionBarOverlayLayout;

    invoke-static {v1}, Landroid/support/v4/view/ViewCompat;->requestApplyInsets(Landroid/view/View;)V

    .line 304
    :cond_2
    :goto_2
    iget-object v1, p0, Landroid/support/v7/app/WindowDecorActionBar;->mContainerView:Landroid/support/v7/widget/ActionBarContainer;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/ActionBarContainer;->setTabContainer(Landroid/support/v7/widget/ScrollingTabContainerView;)V

    goto :goto_1

    .line 302
    :cond_3
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ScrollingTabContainerView;->setVisibility(I)V

    goto :goto_2
.end method

.method private getDecorToolbar(Landroid/view/View;)Landroid/support/v7/widget/DecorToolbar;
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 236
    instance-of v0, p1, Landroid/support/v7/widget/DecorToolbar;

    if-eqz v0, :cond_0

    .line 237
    check-cast p1, Landroid/support/v7/widget/DecorToolbar;

    .line 239
    .end local p1    # "view":Landroid/view/View;
    :goto_0
    return-object p1

    .line 238
    .restart local p1    # "view":Landroid/view/View;
    :cond_0
    instance-of v0, p1, Landroid/support/v7/widget/Toolbar;

    if-eqz v0, :cond_1

    .line 239
    check-cast p1, Landroid/support/v7/widget/Toolbar;

    .end local p1    # "view":Landroid/view/View;
    invoke-virtual {p1}, Landroid/support/v7/widget/Toolbar;->getWrapper()Landroid/support/v7/widget/DecorToolbar;

    move-result-object p1

    goto :goto_0

    .line 241
    .restart local p1    # "view":Landroid/view/View;
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t make a decor toolbar out of "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    const-string v0, "null"

    goto :goto_1
.end method

.method private hideForActionMode()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 676
    iget-boolean v0, p0, Landroid/support/v7/app/WindowDecorActionBar;->mShowingForMode:Z

    if-eqz v0, :cond_1

    .line 677
    iput-boolean v1, p0, Landroid/support/v7/app/WindowDecorActionBar;->mShowingForMode:Z

    .line 678
    iget-object v0, p0, Landroid/support/v7/app/WindowDecorActionBar;->mOverlayLayout:Landroid/support/v7/widget/ActionBarOverlayLayout;

    if-eqz v0, :cond_0

    .line 679
    iget-object v0, p0, Landroid/support/v7/app/WindowDecorActionBar;->mOverlayLayout:Landroid/support/v7/widget/ActionBarOverlayLayout;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ActionBarOverlayLayout;->setShowingForActionMode(Z)V

    .line 681
    :cond_0
    invoke-direct {p0, v1}, Landroid/support/v7/app/WindowDecorActionBar;->updateVisibility(Z)V

    .line 683
    :cond_1
    return-void
.end method

.method private init(Landroid/view/View;)V
    .locals 11
    .param p1, "decor"    # Landroid/view/View;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 194
    sget v5, Landroid/support/v7/appcompat/R$id;->decor_content_parent:I

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/support/v7/widget/ActionBarOverlayLayout;

    iput-object v5, p0, Landroid/support/v7/app/WindowDecorActionBar;->mOverlayLayout:Landroid/support/v7/widget/ActionBarOverlayLayout;

    .line 195
    iget-object v5, p0, Landroid/support/v7/app/WindowDecorActionBar;->mOverlayLayout:Landroid/support/v7/widget/ActionBarOverlayLayout;

    if-eqz v5, :cond_0

    .line 196
    iget-object v5, p0, Landroid/support/v7/app/WindowDecorActionBar;->mOverlayLayout:Landroid/support/v7/widget/ActionBarOverlayLayout;

    invoke-virtual {v5, p0}, Landroid/support/v7/widget/ActionBarOverlayLayout;->setActionBarVisibilityCallback(Landroid/support/v7/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;)V

    .line 198
    :cond_0
    sget v5, Landroid/support/v7/appcompat/R$id;->action_bar:I

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-direct {p0, v5}, Landroid/support/v7/app/WindowDecorActionBar;->getDecorToolbar(Landroid/view/View;)Landroid/support/v7/widget/DecorToolbar;

    move-result-object v5

    iput-object v5, p0, Landroid/support/v7/app/WindowDecorActionBar;->mDecorToolbar:Landroid/support/v7/widget/DecorToolbar;

    .line 199
    sget v5, Landroid/support/v7/appcompat/R$id;->action_context_bar:I

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/support/v7/widget/ActionBarContextView;

    iput-object v5, p0, Landroid/support/v7/app/WindowDecorActionBar;->mContextView:Landroid/support/v7/widget/ActionBarContextView;

    .line 201
    sget v5, Landroid/support/v7/appcompat/R$id;->action_bar_container:I

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/support/v7/widget/ActionBarContainer;

    iput-object v5, p0, Landroid/support/v7/app/WindowDecorActionBar;->mContainerView:Landroid/support/v7/widget/ActionBarContainer;

    .line 204
    iget-object v5, p0, Landroid/support/v7/app/WindowDecorActionBar;->mDecorToolbar:Landroid/support/v7/widget/DecorToolbar;

    if-eqz v5, :cond_1

    iget-object v5, p0, Landroid/support/v7/app/WindowDecorActionBar;->mContextView:Landroid/support/v7/widget/ActionBarContextView;

    if-eqz v5, :cond_1

    iget-object v5, p0, Landroid/support/v7/app/WindowDecorActionBar;->mContainerView:Landroid/support/v7/widget/ActionBarContainer;

    if-nez v5, :cond_2

    .line 205
    :cond_1
    new-instance v5, Ljava/lang/IllegalStateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " can only be used "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "with a compatible window decor layout"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 209
    :cond_2
    iget-object v5, p0, Landroid/support/v7/app/WindowDecorActionBar;->mDecorToolbar:Landroid/support/v7/widget/DecorToolbar;

    invoke-interface {v5}, Landroid/support/v7/widget/DecorToolbar;->getContext()Landroid/content/Context;

    move-result-object v5

    iput-object v5, p0, Landroid/support/v7/app/WindowDecorActionBar;->mContext:Landroid/content/Context;

    .line 212
    iget-object v5, p0, Landroid/support/v7/app/WindowDecorActionBar;->mDecorToolbar:Landroid/support/v7/widget/DecorToolbar;

    invoke-interface {v5}, Landroid/support/v7/widget/DecorToolbar;->getDisplayOptions()I

    move-result v2

    .line 213
    .local v2, "current":I
    and-int/lit8 v5, v2, 0x4

    if-eqz v5, :cond_7

    move v4, v7

    .line 214
    .local v4, "homeAsUp":Z
    :goto_0
    if-eqz v4, :cond_3

    .line 215
    iput-boolean v7, p0, Landroid/support/v7/app/WindowDecorActionBar;->mDisplayHomeAsUpSet:Z

    .line 218
    :cond_3
    iget-object v5, p0, Landroid/support/v7/app/WindowDecorActionBar;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/support/v7/view/ActionBarPolicy;->get(Landroid/content/Context;)Landroid/support/v7/view/ActionBarPolicy;

    move-result-object v1

    .line 219
    .local v1, "abp":Landroid/support/v7/view/ActionBarPolicy;
    invoke-virtual {v1}, Landroid/support/v7/view/ActionBarPolicy;->enableHomeButtonByDefault()Z

    move-result v5

    if-nez v5, :cond_4

    if-eqz v4, :cond_8

    :cond_4
    move v5, v7

    :goto_1
    invoke-virtual {p0, v5}, Landroid/support/v7/app/WindowDecorActionBar;->setHomeButtonEnabled(Z)V

    .line 220
    invoke-virtual {v1}, Landroid/support/v7/view/ActionBarPolicy;->hasEmbeddedTabs()Z

    move-result v5

    invoke-direct {p0, v5}, Landroid/support/v7/app/WindowDecorActionBar;->setHasEmbeddedTabs(Z)V

    .line 222
    iget-object v5, p0, Landroid/support/v7/app/WindowDecorActionBar;->mContext:Landroid/content/Context;

    const/4 v8, 0x0

    sget-object v9, Landroid/support/v7/appcompat/R$styleable;->ActionBar:[I

    sget v10, Landroid/support/v7/appcompat/R$attr;->actionBarStyle:I

    invoke-virtual {v5, v8, v9, v10, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 225
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v5, Landroid/support/v7/appcompat/R$styleable;->ActionBar_hideOnContentScroll:I

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 226
    invoke-virtual {p0, v7}, Landroid/support/v7/app/WindowDecorActionBar;->setHideOnContentScrollEnabled(Z)V

    .line 228
    :cond_5
    sget v5, Landroid/support/v7/appcompat/R$styleable;->ActionBar_elevation:I

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    .line 229
    .local v3, "elevation":I
    if-eqz v3, :cond_6

    .line 230
    int-to-float v5, v3

    invoke-virtual {p0, v5}, Landroid/support/v7/app/WindowDecorActionBar;->setElevation(F)V

    .line 232
    :cond_6
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 233
    return-void

    .end local v0    # "a":Landroid/content/res/TypedArray;
    .end local v1    # "abp":Landroid/support/v7/view/ActionBarPolicy;
    .end local v3    # "elevation":I
    .end local v4    # "homeAsUp":Z
    :cond_7
    move v4, v6

    .line 213
    goto :goto_0

    .restart local v1    # "abp":Landroid/support/v7/view/ActionBarPolicy;
    .restart local v4    # "homeAsUp":Z
    :cond_8
    move v5, v6

    .line 219
    goto :goto_1
.end method

.method private setHasEmbeddedTabs(Z)V
    .locals 5
    .param p1, "hasEmbeddedTabs"    # Z

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 261
    iput-boolean p1, p0, Landroid/support/v7/app/WindowDecorActionBar;->mHasEmbeddedTabs:Z

    .line 263
    iget-boolean v3, p0, Landroid/support/v7/app/WindowDecorActionBar;->mHasEmbeddedTabs:Z

    if-nez v3, :cond_1

    .line 264
    iget-object v3, p0, Landroid/support/v7/app/WindowDecorActionBar;->mDecorToolbar:Landroid/support/v7/widget/DecorToolbar;

    invoke-interface {v3, v4}, Landroid/support/v7/widget/DecorToolbar;->setEmbeddedTabView(Landroid/support/v7/widget/ScrollingTabContainerView;)V

    .line 265
    iget-object v3, p0, Landroid/support/v7/app/WindowDecorActionBar;->mContainerView:Landroid/support/v7/widget/ActionBarContainer;

    iget-object v4, p0, Landroid/support/v7/app/WindowDecorActionBar;->mTabScrollView:Landroid/support/v7/widget/ScrollingTabContainerView;

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/ActionBarContainer;->setTabContainer(Landroid/support/v7/widget/ScrollingTabContainerView;)V

    .line 270
    :goto_0
    invoke-virtual {p0}, Landroid/support/v7/app/WindowDecorActionBar;->getNavigationMode()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    move v0, v1

    .line 271
    .local v0, "isInTabMode":Z
    :goto_1
    iget-object v3, p0, Landroid/support/v7/app/WindowDecorActionBar;->mTabScrollView:Landroid/support/v7/widget/ScrollingTabContainerView;

    if-eqz v3, :cond_0

    .line 272
    if-eqz v0, :cond_3

    .line 273
    iget-object v3, p0, Landroid/support/v7/app/WindowDecorActionBar;->mTabScrollView:Landroid/support/v7/widget/ScrollingTabContainerView;

    invoke-virtual {v3, v2}, Landroid/support/v7/widget/ScrollingTabContainerView;->setVisibility(I)V

    .line 274
    iget-object v3, p0, Landroid/support/v7/app/WindowDecorActionBar;->mOverlayLayout:Landroid/support/v7/widget/ActionBarOverlayLayout;

    if-eqz v3, :cond_0

    .line 275
    iget-object v3, p0, Landroid/support/v7/app/WindowDecorActionBar;->mOverlayLayout:Landroid/support/v7/widget/ActionBarOverlayLayout;

    invoke-static {v3}, Landroid/support/v4/view/ViewCompat;->requestApplyInsets(Landroid/view/View;)V

    .line 281
    :cond_0
    :goto_2
    iget-object v4, p0, Landroid/support/v7/app/WindowDecorActionBar;->mDecorToolbar:Landroid/support/v7/widget/DecorToolbar;

    iget-boolean v3, p0, Landroid/support/v7/app/WindowDecorActionBar;->mHasEmbeddedTabs:Z

    if-nez v3, :cond_4

    if-eqz v0, :cond_4

    move v3, v1

    :goto_3
    invoke-interface {v4, v3}, Landroid/support/v7/widget/DecorToolbar;->setCollapsible(Z)V

    .line 282
    iget-object v3, p0, Landroid/support/v7/app/WindowDecorActionBar;->mOverlayLayout:Landroid/support/v7/widget/ActionBarOverlayLayout;

    iget-boolean v4, p0, Landroid/support/v7/app/WindowDecorActionBar;->mHasEmbeddedTabs:Z

    if-nez v4, :cond_5

    if-eqz v0, :cond_5

    :goto_4
    invoke-virtual {v3, v1}, Landroid/support/v7/widget/ActionBarOverlayLayout;->setHasNonEmbeddedTabs(Z)V

    .line 283
    return-void

    .line 267
    .end local v0    # "isInTabMode":Z
    :cond_1
    iget-object v3, p0, Landroid/support/v7/app/WindowDecorActionBar;->mContainerView:Landroid/support/v7/widget/ActionBarContainer;

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/ActionBarContainer;->setTabContainer(Landroid/support/v7/widget/ScrollingTabContainerView;)V

    .line 268
    iget-object v3, p0, Landroid/support/v7/app/WindowDecorActionBar;->mDecorToolbar:Landroid/support/v7/widget/DecorToolbar;

    iget-object v4, p0, Landroid/support/v7/app/WindowDecorActionBar;->mTabScrollView:Landroid/support/v7/widget/ScrollingTabContainerView;

    invoke-interface {v3, v4}, Landroid/support/v7/widget/DecorToolbar;->setEmbeddedTabView(Landroid/support/v7/widget/ScrollingTabContainerView;)V

    goto :goto_0

    :cond_2
    move v0, v2

    .line 270
    goto :goto_1

    .line 278
    .restart local v0    # "isInTabMode":Z
    :cond_3
    iget-object v3, p0, Landroid/support/v7/app/WindowDecorActionBar;->mTabScrollView:Landroid/support/v7/widget/ScrollingTabContainerView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/ScrollingTabContainerView;->setVisibility(I)V

    goto :goto_2

    :cond_4
    move v3, v2

    .line 281
    goto :goto_3

    :cond_5
    move v1, v2

    .line 282
    goto :goto_4
.end method

.method private showForActionMode()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 651
    iget-boolean v0, p0, Landroid/support/v7/app/WindowDecorActionBar;->mShowingForMode:Z

    if-nez v0, :cond_1

    .line 652
    iput-boolean v1, p0, Landroid/support/v7/app/WindowDecorActionBar;->mShowingForMode:Z

    .line 653
    iget-object v0, p0, Landroid/support/v7/app/WindowDecorActionBar;->mOverlayLayout:Landroid/support/v7/widget/ActionBarOverlayLayout;

    if-eqz v0, :cond_0

    .line 654
    iget-object v0, p0, Landroid/support/v7/app/WindowDecorActionBar;->mOverlayLayout:Landroid/support/v7/widget/ActionBarOverlayLayout;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ActionBarOverlayLayout;->setShowingForActionMode(Z)V

    .line 656
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/v7/app/WindowDecorActionBar;->updateVisibility(Z)V

    .line 658
    :cond_1
    return-void
.end method

.method private updateVisibility(Z)V
    .locals 4
    .param p1, "fromSystem"    # Z

    .prologue
    .line 734
    iget-boolean v1, p0, Landroid/support/v7/app/WindowDecorActionBar;->mHiddenByApp:Z

    iget-boolean v2, p0, Landroid/support/v7/app/WindowDecorActionBar;->mHiddenBySystem:Z

    iget-boolean v3, p0, Landroid/support/v7/app/WindowDecorActionBar;->mShowingForMode:Z

    invoke-static {v1, v2, v3}, Landroid/support/v7/app/WindowDecorActionBar;->checkShowingFlags(ZZZ)Z

    move-result v0

    .line 737
    .local v0, "shown":Z
    if-eqz v0, :cond_1

    .line 738
    iget-boolean v1, p0, Landroid/support/v7/app/WindowDecorActionBar;->mNowShowing:Z

    if-nez v1, :cond_0

    .line 739
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/support/v7/app/WindowDecorActionBar;->mNowShowing:Z

    .line 740
    invoke-virtual {p0, p1}, Landroid/support/v7/app/WindowDecorActionBar;->doShow(Z)V

    .line 748
    :cond_0
    :goto_0
    return-void

    .line 743
    :cond_1
    iget-boolean v1, p0, Landroid/support/v7/app/WindowDecorActionBar;->mNowShowing:Z

    if-eqz v1, :cond_0

    .line 744
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/support/v7/app/WindowDecorActionBar;->mNowShowing:Z

    .line 745
    invoke-virtual {p0, p1}, Landroid/support/v7/app/WindowDecorActionBar;->doHide(Z)V

    goto :goto_0
.end method


# virtual methods
.method public addOnMenuVisibilityListener(Landroid/support/v7/app/ActionBar$OnMenuVisibilityListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/support/v7/app/ActionBar$OnMenuVisibilityListener;

    .prologue
    .line 336
    iget-object v0, p0, Landroid/support/v7/app/WindowDecorActionBar;->mMenuVisibilityListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 337
    return-void
.end method

.method public addTab(Landroid/support/v7/app/ActionBar$Tab;)V
    .locals 1
    .param p1, "tab"    # Landroid/support/v7/app/ActionBar$Tab;

    .prologue
    .line 528
    iget-object v0, p0, Landroid/support/v7/app/WindowDecorActionBar;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/support/v7/app/WindowDecorActionBar;->addTab(Landroid/support/v7/app/ActionBar$Tab;Z)V

    .line 529
    return-void
.end method

.method public addTab(Landroid/support/v7/app/ActionBar$Tab;I)V
    .locals 1
    .param p1, "tab"    # Landroid/support/v7/app/ActionBar$Tab;
    .param p2, "position"    # I

    .prologue
    .line 533
    iget-object v0, p0, Landroid/support/v7/app/WindowDecorActionBar;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Landroid/support/v7/app/WindowDecorActionBar;->addTab(Landroid/support/v7/app/ActionBar$Tab;IZ)V

    .line 534
    return-void
.end method

.method public addTab(Landroid/support/v7/app/ActionBar$Tab;IZ)V
    .locals 1
    .param p1, "tab"    # Landroid/support/v7/app/ActionBar$Tab;
    .param p2, "position"    # I
    .param p3, "setSelected"    # Z

    .prologue
    .line 548
    invoke-direct {p0}, Landroid/support/v7/app/WindowDecorActionBar;->ensureTabsExist()V

    .line 549
    iget-object v0, p0, Landroid/support/v7/app/WindowDecorActionBar;->mTabScrollView:Landroid/support/v7/widget/ScrollingTabContainerView;

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v7/widget/ScrollingTabContainerView;->addTab(Landroid/support/v7/app/ActionBar$Tab;IZ)V

    .line 550
    invoke-direct {p0, p1, p2}, Landroid/support/v7/app/WindowDecorActionBar;->configureTab(Landroid/support/v7/app/ActionBar$Tab;I)V

    .line 551
    if-eqz p3, :cond_0

    .line 552
    invoke-virtual {p0, p1}, Landroid/support/v7/app/WindowDecorActionBar;->selectTab(Landroid/support/v7/app/ActionBar$Tab;)V

    .line 554
    :cond_0
    return-void
.end method

.method public addTab(Landroid/support/v7/app/ActionBar$Tab;Z)V
    .locals 1
    .param p1, "tab"    # Landroid/support/v7/app/ActionBar$Tab;
    .param p2, "setSelected"    # Z

    .prologue
    .line 538
    invoke-direct {p0}, Landroid/support/v7/app/WindowDecorActionBar;->ensureTabsExist()V

    .line 539
    iget-object v0, p0, Landroid/support/v7/app/WindowDecorActionBar;->mTabScrollView:Landroid/support/v7/widget/ScrollingTabContainerView;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/ScrollingTabContainerView;->addTab(Landroid/support/v7/app/ActionBar$Tab;Z)V

    .line 540
    iget-object v0, p0, Landroid/support/v7/app/WindowDecorActionBar;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-direct {p0, p1, v0}, Landroid/support/v7/app/WindowDecorActionBar;->configureTab(Landroid/support/v7/app/ActionBar$Tab;I)V

    .line 541
    if-eqz p2, :cond_0

    .line 542
    invoke-virtual {p0, p1}, Landroid/support/v7/app/WindowDecorActionBar;->selectTab(Landroid/support/v7/app/ActionBar$Tab;)V

    .line 544
    :cond_0
    return-void
.end method

.method public animateToMode(Z)V
    .locals 10
    .param p1, "toActionMode"    # Z

    .prologue
    const-wide/16 v8, 0xc8

    const-wide/16 v6, 0x64

    const/4 v5, 0x0

    .line 839
    if-eqz p1, :cond_0

    .line 840
    invoke-direct {p0}, Landroid/support/v7/app/WindowDecorActionBar;->showForActionMode()V

    .line 846
    :goto_0
    if-eqz p1, :cond_1

    .line 851
    iget-object v3, p0, Landroid/support/v7/app/WindowDecorActionBar;->mDecorToolbar:Landroid/support/v7/widget/DecorToolbar;

    const/4 v4, 0x4

    invoke-interface {v3, v4, v6, v7}, Landroid/support/v7/widget/DecorToolbar;->setupAnimatorToVisibility(IJ)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v1

    .line 853
    .local v1, "fadeOut":Landroid/support/v4/view/ViewPropertyAnimatorCompat;
    iget-object v3, p0, Landroid/support/v7/app/WindowDecorActionBar;->mContextView:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {v3, v5, v8, v9}, Landroid/support/v7/widget/ActionBarContextView;->setupAnimatorToVisibility(IJ)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    .line 861
    .local v0, "fadeIn":Landroid/support/v4/view/ViewPropertyAnimatorCompat;
    :goto_1
    new-instance v2, Landroid/support/v7/view/ViewPropertyAnimatorCompatSet;

    invoke-direct {v2}, Landroid/support/v7/view/ViewPropertyAnimatorCompatSet;-><init>()V

    .line 862
    .local v2, "set":Landroid/support/v7/view/ViewPropertyAnimatorCompatSet;
    invoke-virtual {v2, v1, v0}, Landroid/support/v7/view/ViewPropertyAnimatorCompatSet;->playSequentially(Landroid/support/v4/view/ViewPropertyAnimatorCompat;Landroid/support/v4/view/ViewPropertyAnimatorCompat;)Landroid/support/v7/view/ViewPropertyAnimatorCompatSet;

    .line 863
    invoke-virtual {v2}, Landroid/support/v7/view/ViewPropertyAnimatorCompatSet;->start()V

    .line 865
    return-void

    .line 842
    .end local v0    # "fadeIn":Landroid/support/v4/view/ViewPropertyAnimatorCompat;
    .end local v1    # "fadeOut":Landroid/support/v4/view/ViewPropertyAnimatorCompat;
    .end local v2    # "set":Landroid/support/v7/view/ViewPropertyAnimatorCompatSet;
    :cond_0
    invoke-direct {p0}, Landroid/support/v7/app/WindowDecorActionBar;->hideForActionMode()V

    goto :goto_0

    .line 856
    :cond_1
    iget-object v3, p0, Landroid/support/v7/app/WindowDecorActionBar;->mDecorToolbar:Landroid/support/v7/widget/DecorToolbar;

    invoke-interface {v3, v5, v8, v9}, Landroid/support/v7/widget/DecorToolbar;->setupAnimatorToVisibility(IJ)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    .line 858
    .restart local v0    # "fadeIn":Landroid/support/v4/view/ViewPropertyAnimatorCompat;
    iget-object v3, p0, Landroid/support/v7/app/WindowDecorActionBar;->mContextView:Landroid/support/v7/widget/ActionBarContextView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4, v6, v7}, Landroid/support/v7/widget/ActionBarContextView;->setupAnimatorToVisibility(IJ)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v1

    .restart local v1    # "fadeOut":Landroid/support/v4/view/ViewPropertyAnimatorCompat;
    goto :goto_1
.end method

.method public collapseActionView()Z
    .locals 1

    .prologue
    .line 922
    iget-object v0, p0, Landroid/support/v7/app/WindowDecorActionBar;->mDecorToolbar:Landroid/support/v7/widget/DecorToolbar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/app/WindowDecorActionBar;->mDecorToolbar:Landroid/support/v7/widget/DecorToolbar;

    invoke-interface {v0}, Landroid/support/v7/widget/DecorToolbar;->hasExpandedActionView()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 923
    iget-object v0, p0, Landroid/support/v7/app/WindowDecorActionBar;->mDecorToolbar:Landroid/support/v7/widget/DecorToolbar;

    invoke-interface {v0}, Landroid/support/v7/widget/DecorToolbar;->collapseActionView()V

    .line 924
    const/4 v0, 0x1

    .line 926
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method completeDeferredDestroyActionMode()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 310
    iget-object v0, p0, Landroid/support/v7/app/WindowDecorActionBar;->mDeferredModeDestroyCallback:Landroid/support/v7/view/ActionMode$Callback;

    if-eqz v0, :cond_0

    .line 311
    iget-object v0, p0, Landroid/support/v7/app/WindowDecorActionBar;->mDeferredModeDestroyCallback:Landroid/support/v7/view/ActionMode$Callback;

    iget-object v1, p0, Landroid/support/v7/app/WindowDecorActionBar;->mDeferredDestroyActionMode:Landroid/support/v7/view/ActionMode;

    invoke-interface {v0, v1}, Landroid/support/v7/view/ActionMode$Callback;->onDestroyActionMode(Landroid/support/v7/view/ActionMode;)V

    .line 312
    iput-object v2, p0, Landroid/support/v7/app/WindowDecorActionBar;->mDeferredDestroyActionMode:Landroid/support/v7/view/ActionMode;

    .line 313
    iput-object v2, p0, Landroid/support/v7/app/WindowDecorActionBar;->mDeferredModeDestroyCallback:Landroid/support/v7/view/ActionMode$Callback;

    .line 315
    :cond_0
    return-void
.end method

.method public dispatchMenuVisibilityChanged(Z)V
    .locals 3
    .param p1, "isVisible"    # Z

    .prologue
    .line 344
    iget-boolean v2, p0, Landroid/support/v7/app/WindowDecorActionBar;->mLastMenuVisibility:Z

    if-ne p1, v2, :cond_1

    .line 353
    :cond_0
    return-void

    .line 347
    :cond_1
    iput-boolean p1, p0, Landroid/support/v7/app/WindowDecorActionBar;->mLastMenuVisibility:Z

    .line 349
    iget-object v2, p0, Landroid/support/v7/app/WindowDecorActionBar;->mMenuVisibilityListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 350
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 351
    iget-object v2, p0, Landroid/support/v7/app/WindowDecorActionBar;->mMenuVisibilityListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v7/app/ActionBar$OnMenuVisibilityListener;

    invoke-interface {v2, p1}, Landroid/support/v7/app/ActionBar$OnMenuVisibilityListener;->onMenuVisibilityChanged(Z)V

    .line 350
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public doHide(Z)V
    .locals 7
    .param p1, "fromSystem"    # Z

    .prologue
    const/4 v6, 0x1

    .line 801
    iget-object v4, p0, Landroid/support/v7/app/WindowDecorActionBar;->mCurrentShowAnim:Landroid/support/v7/view/ViewPropertyAnimatorCompatSet;

    if-eqz v4, :cond_0

    .line 802
    iget-object v4, p0, Landroid/support/v7/app/WindowDecorActionBar;->mCurrentShowAnim:Landroid/support/v7/view/ViewPropertyAnimatorCompatSet;

    invoke-virtual {v4}, Landroid/support/v7/view/ViewPropertyAnimatorCompatSet;->cancel()V

    .line 805
    :cond_0
    iget v4, p0, Landroid/support/v7/app/WindowDecorActionBar;->mCurWindowVisibility:I

    if-nez v4, :cond_4

    sget-boolean v4, Landroid/support/v7/app/WindowDecorActionBar;->ALLOW_SHOW_HIDE_ANIMATIONS:Z

    if-eqz v4, :cond_4

    iget-boolean v4, p0, Landroid/support/v7/app/WindowDecorActionBar;->mShowHideAnimationEnabled:Z

    if-nez v4, :cond_1

    if-eqz p1, :cond_4

    .line 807
    :cond_1
    iget-object v4, p0, Landroid/support/v7/app/WindowDecorActionBar;->mContainerView:Landroid/support/v7/widget/ActionBarContainer;

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {v4, v5}, Landroid/support/v4/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    .line 808
    iget-object v4, p0, Landroid/support/v7/app/WindowDecorActionBar;->mContainerView:Landroid/support/v7/widget/ActionBarContainer;

    invoke-virtual {v4, v6}, Landroid/support/v7/widget/ActionBarContainer;->setTransitioning(Z)V

    .line 809
    new-instance v1, Landroid/support/v7/view/ViewPropertyAnimatorCompatSet;

    invoke-direct {v1}, Landroid/support/v7/view/ViewPropertyAnimatorCompatSet;-><init>()V

    .line 810
    .local v1, "anim":Landroid/support/v7/view/ViewPropertyAnimatorCompatSet;
    iget-object v4, p0, Landroid/support/v7/app/WindowDecorActionBar;->mContainerView:Landroid/support/v7/widget/ActionBarContainer;

    invoke-virtual {v4}, Landroid/support/v7/widget/ActionBarContainer;->getHeight()I

    move-result v4

    neg-int v4, v4

    int-to-float v2, v4

    .line 811
    .local v2, "endingY":F
    if-eqz p1, :cond_2

    .line 812
    const/4 v4, 0x2

    new-array v3, v4, [I

    fill-array-data v3, :array_0

    .line 813
    .local v3, "topLeft":[I
    iget-object v4, p0, Landroid/support/v7/app/WindowDecorActionBar;->mContainerView:Landroid/support/v7/widget/ActionBarContainer;

    invoke-virtual {v4, v3}, Landroid/support/v7/widget/ActionBarContainer;->getLocationInWindow([I)V

    .line 814
    aget v4, v3, v6

    int-to-float v4, v4

    sub-float/2addr v2, v4

    .line 816
    .end local v3    # "topLeft":[I
    :cond_2
    iget-object v4, p0, Landroid/support/v7/app/WindowDecorActionBar;->mContainerView:Landroid/support/v7/widget/ActionBarContainer;

    invoke-static {v4}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->translationY(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    .line 817
    .local v0, "a":Landroid/support/v4/view/ViewPropertyAnimatorCompat;
    iget-object v4, p0, Landroid/support/v7/app/WindowDecorActionBar;->mUpdateListener:Landroid/support/v4/view/ViewPropertyAnimatorUpdateListener;

    invoke-virtual {v0, v4}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setUpdateListener(Landroid/support/v4/view/ViewPropertyAnimatorUpdateListener;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 818
    invoke-virtual {v1, v0}, Landroid/support/v7/view/ViewPropertyAnimatorCompatSet;->play(Landroid/support/v4/view/ViewPropertyAnimatorCompat;)Landroid/support/v7/view/ViewPropertyAnimatorCompatSet;

    .line 819
    iget-boolean v4, p0, Landroid/support/v7/app/WindowDecorActionBar;->mContentAnimations:Z

    if-eqz v4, :cond_3

    iget-object v4, p0, Landroid/support/v7/app/WindowDecorActionBar;->mContentView:Landroid/view/View;

    if-eqz v4, :cond_3

    .line 820
    iget-object v4, p0, Landroid/support/v7/app/WindowDecorActionBar;->mContentView:Landroid/view/View;

    invoke-static {v4}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->translationY(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/support/v7/view/ViewPropertyAnimatorCompatSet;->play(Landroid/support/v4/view/ViewPropertyAnimatorCompat;)Landroid/support/v7/view/ViewPropertyAnimatorCompatSet;

    .line 822
    :cond_3
    sget-object v4, Landroid/support/v7/app/WindowDecorActionBar;->sHideInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v4}, Landroid/support/v7/view/ViewPropertyAnimatorCompatSet;->setInterpolator(Landroid/view/animation/Interpolator;)Landroid/support/v7/view/ViewPropertyAnimatorCompatSet;

    .line 823
    const-wide/16 v4, 0xfa

    invoke-virtual {v1, v4, v5}, Landroid/support/v7/view/ViewPropertyAnimatorCompatSet;->setDuration(J)Landroid/support/v7/view/ViewPropertyAnimatorCompatSet;

    .line 824
    iget-object v4, p0, Landroid/support/v7/app/WindowDecorActionBar;->mHideListener:Landroid/support/v4/view/ViewPropertyAnimatorListener;

    invoke-virtual {v1, v4}, Landroid/support/v7/view/ViewPropertyAnimatorCompatSet;->setListener(Landroid/support/v4/view/ViewPropertyAnimatorListener;)Landroid/support/v7/view/ViewPropertyAnimatorCompatSet;

    .line 825
    iput-object v1, p0, Landroid/support/v7/app/WindowDecorActionBar;->mCurrentShowAnim:Landroid/support/v7/view/ViewPropertyAnimatorCompatSet;

    .line 826
    invoke-virtual {v1}, Landroid/support/v7/view/ViewPropertyAnimatorCompatSet;->start()V

    .line 830
    .end local v0    # "a":Landroid/support/v4/view/ViewPropertyAnimatorCompat;
    .end local v1    # "anim":Landroid/support/v7/view/ViewPropertyAnimatorCompatSet;
    .end local v2    # "endingY":F
    :goto_0
    return-void

    .line 828
    :cond_4
    iget-object v4, p0, Landroid/support/v7/app/WindowDecorActionBar;->mHideListener:Landroid/support/v4/view/ViewPropertyAnimatorListener;

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Landroid/support/v4/view/ViewPropertyAnimatorListener;->onAnimationEnd(Landroid/view/View;)V

    goto :goto_0

    .line 812
    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method public doShow(Z)V
    .locals 7
    .param p1, "fromSystem"    # Z

    .prologue
    const/4 v6, 0x0

    .line 751
    iget-object v4, p0, Landroid/support/v7/app/WindowDecorActionBar;->mCurrentShowAnim:Landroid/support/v7/view/ViewPropertyAnimatorCompatSet;

    if-eqz v4, :cond_0

    .line 752
    iget-object v4, p0, Landroid/support/v7/app/WindowDecorActionBar;->mCurrentShowAnim:Landroid/support/v7/view/ViewPropertyAnimatorCompatSet;

    invoke-virtual {v4}, Landroid/support/v7/view/ViewPropertyAnimatorCompatSet;->cancel()V

    .line 754
    :cond_0
    iget-object v4, p0, Landroid/support/v7/app/WindowDecorActionBar;->mContainerView:Landroid/support/v7/widget/ActionBarContainer;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/support/v7/widget/ActionBarContainer;->setVisibility(I)V

    .line 756
    iget v4, p0, Landroid/support/v7/app/WindowDecorActionBar;->mCurWindowVisibility:I

    if-nez v4, :cond_5

    sget-boolean v4, Landroid/support/v7/app/WindowDecorActionBar;->ALLOW_SHOW_HIDE_ANIMATIONS:Z

    if-eqz v4, :cond_5

    iget-boolean v4, p0, Landroid/support/v7/app/WindowDecorActionBar;->mShowHideAnimationEnabled:Z

    if-nez v4, :cond_1

    if-eqz p1, :cond_5

    .line 759
    :cond_1
    iget-object v4, p0, Landroid/support/v7/app/WindowDecorActionBar;->mContainerView:Landroid/support/v7/widget/ActionBarContainer;

    invoke-static {v4, v6}, Landroid/support/v4/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    .line 760
    iget-object v4, p0, Landroid/support/v7/app/WindowDecorActionBar;->mContainerView:Landroid/support/v7/widget/ActionBarContainer;

    invoke-virtual {v4}, Landroid/support/v7/widget/ActionBarContainer;->getHeight()I

    move-result v4

    neg-int v4, v4

    int-to-float v2, v4

    .line 761
    .local v2, "startingY":F
    if-eqz p1, :cond_2

    .line 762
    const/4 v4, 0x2

    new-array v3, v4, [I

    fill-array-data v3, :array_0

    .line 763
    .local v3, "topLeft":[I
    iget-object v4, p0, Landroid/support/v7/app/WindowDecorActionBar;->mContainerView:Landroid/support/v7/widget/ActionBarContainer;

    invoke-virtual {v4, v3}, Landroid/support/v7/widget/ActionBarContainer;->getLocationInWindow([I)V

    .line 764
    const/4 v4, 0x1

    aget v4, v3, v4

    int-to-float v4, v4

    sub-float/2addr v2, v4

    .line 766
    .end local v3    # "topLeft":[I
    :cond_2
    iget-object v4, p0, Landroid/support/v7/app/WindowDecorActionBar;->mContainerView:Landroid/support/v7/widget/ActionBarContainer;

    invoke-static {v4, v2}, Landroid/support/v4/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    .line 767
    new-instance v1, Landroid/support/v7/view/ViewPropertyAnimatorCompatSet;

    invoke-direct {v1}, Landroid/support/v7/view/ViewPropertyAnimatorCompatSet;-><init>()V

    .line 768
    .local v1, "anim":Landroid/support/v7/view/ViewPropertyAnimatorCompatSet;
    iget-object v4, p0, Landroid/support/v7/app/WindowDecorActionBar;->mContainerView:Landroid/support/v7/widget/ActionBarContainer;

    invoke-static {v4}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->translationY(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    .line 769
    .local v0, "a":Landroid/support/v4/view/ViewPropertyAnimatorCompat;
    iget-object v4, p0, Landroid/support/v7/app/WindowDecorActionBar;->mUpdateListener:Landroid/support/v4/view/ViewPropertyAnimatorUpdateListener;

    invoke-virtual {v0, v4}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setUpdateListener(Landroid/support/v4/view/ViewPropertyAnimatorUpdateListener;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 770
    invoke-virtual {v1, v0}, Landroid/support/v7/view/ViewPropertyAnimatorCompatSet;->play(Landroid/support/v4/view/ViewPropertyAnimatorCompat;)Landroid/support/v7/view/ViewPropertyAnimatorCompatSet;

    .line 771
    iget-boolean v4, p0, Landroid/support/v7/app/WindowDecorActionBar;->mContentAnimations:Z

    if-eqz v4, :cond_3

    iget-object v4, p0, Landroid/support/v7/app/WindowDecorActionBar;->mContentView:Landroid/view/View;

    if-eqz v4, :cond_3

    .line 772
    iget-object v4, p0, Landroid/support/v7/app/WindowDecorActionBar;->mContentView:Landroid/view/View;

    invoke-static {v4, v2}, Landroid/support/v4/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    .line 773
    iget-object v4, p0, Landroid/support/v7/app/WindowDecorActionBar;->mContentView:Landroid/view/View;

    invoke-static {v4}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->translationY(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/support/v7/view/ViewPropertyAnimatorCompatSet;->play(Landroid/support/v4/view/ViewPropertyAnimatorCompat;)Landroid/support/v7/view/ViewPropertyAnimatorCompatSet;

    .line 775
    :cond_3
    sget-object v4, Landroid/support/v7/app/WindowDecorActionBar;->sShowInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v4}, Landroid/support/v7/view/ViewPropertyAnimatorCompatSet;->setInterpolator(Landroid/view/animation/Interpolator;)Landroid/support/v7/view/ViewPropertyAnimatorCompatSet;

    .line 776
    const-wide/16 v4, 0xfa

    invoke-virtual {v1, v4, v5}, Landroid/support/v7/view/ViewPropertyAnimatorCompatSet;->setDuration(J)Landroid/support/v7/view/ViewPropertyAnimatorCompatSet;

    .line 784
    iget-object v4, p0, Landroid/support/v7/app/WindowDecorActionBar;->mShowListener:Landroid/support/v4/view/ViewPropertyAnimatorListener;

    invoke-virtual {v1, v4}, Landroid/support/v7/view/ViewPropertyAnimatorCompatSet;->setListener(Landroid/support/v4/view/ViewPropertyAnimatorListener;)Landroid/support/v7/view/ViewPropertyAnimatorCompatSet;

    .line 785
    iput-object v1, p0, Landroid/support/v7/app/WindowDecorActionBar;->mCurrentShowAnim:Landroid/support/v7/view/ViewPropertyAnimatorCompatSet;

    .line 786
    invoke-virtual {v1}, Landroid/support/v7/view/ViewPropertyAnimatorCompatSet;->start()V

    .line 795
    .end local v0    # "a":Landroid/support/v4/view/ViewPropertyAnimatorCompat;
    .end local v1    # "anim":Landroid/support/v7/view/ViewPropertyAnimatorCompatSet;
    .end local v2    # "startingY":F
    :goto_0
    iget-object v4, p0, Landroid/support/v7/app/WindowDecorActionBar;->mOverlayLayout:Landroid/support/v7/widget/ActionBarOverlayLayout;

    if-eqz v4, :cond_4

    .line 796
    iget-object v4, p0, Landroid/support/v7/app/WindowDecorActionBar;->mOverlayLayout:Landroid/support/v7/widget/ActionBarOverlayLayout;

    invoke-static {v4}, Landroid/support/v4/view/ViewCompat;->requestApplyInsets(Landroid/view/View;)V

    .line 798
    :cond_4
    return-void

    .line 788
    :cond_5
    iget-object v4, p0, Landroid/support/v7/app/WindowDecorActionBar;->mContainerView:Landroid/support/v7/widget/ActionBarContainer;

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {v4, v5}, Landroid/support/v4/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    .line 789
    iget-object v4, p0, Landroid/support/v7/app/WindowDecorActionBar;->mContainerView:Landroid/support/v7/widget/ActionBarContainer;

    invoke-static {v4, v6}, Landroid/support/v4/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    .line 790
    iget-boolean v4, p0, Landroid/support/v7/app/WindowDecorActionBar;->mContentAnimations:Z

    if-eqz v4, :cond_6

    iget-object v4, p0, Landroid/support/v7/app/WindowDecorActionBar;->mContentView:Landroid/view/View;

    if-eqz v4, :cond_6

    .line 791
    iget-object v4, p0, Landroid/support/v7/app/WindowDecorActionBar;->mContentView:Landroid/view/View;

    invoke-static {v4, v6}, Landroid/support/v4/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    .line 793
    :cond_6
    iget-object v4, p0, Landroid/support/v7/app/WindowDecorActionBar;->mShowListener:Landroid/support/v4/view/ViewPropertyAnimatorListener;

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Landroid/support/v4/view/ViewPropertyAnimatorListener;->onAnimationEnd(Landroid/view/View;)V

    goto :goto_0

    .line 762
    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method public enableContentAnimations(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 639
    iput-boolean p1, p0, Landroid/support/v7/app/WindowDecorActionBar;->mContentAnimations:Z

    .line 640
    return-void
.end method

.method public getCustomView()Landroid/view/View;
    .locals 1

    .prologue
    .line 471
    iget-object v0, p0, Landroid/support/v7/app/WindowDecorActionBar;->mDecorToolbar:Landroid/support/v7/widget/DecorToolbar;

    invoke-interface {v0}, Landroid/support/v7/widget/DecorToolbar;->getCustomView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayOptions()I
    .locals 1

    .prologue
    .line 487
    iget-object v0, p0, Landroid/support/v7/app/WindowDecorActionBar;->mDecorToolbar:Landroid/support/v7/widget/DecorToolbar;

    invoke-interface {v0}, Landroid/support/v7/widget/DecorToolbar;->getDisplayOptions()I

    move-result v0

    return v0
.end method

.method public getElevation()F
    .locals 1

    .prologue
    .line 253
    iget-object v0, p0, Landroid/support/v7/app/WindowDecorActionBar;->mContainerView:Landroid/support/v7/widget/ActionBarContainer;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->getElevation(Landroid/view/View;)F

    move-result v0

    return v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 635
    iget-object v0, p0, Landroid/support/v7/app/WindowDecorActionBar;->mContainerView:Landroid/support/v7/widget/ActionBarContainer;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionBarContainer;->getHeight()I

    move-result v0

    return v0
.end method

.method public getHideOffset()I
    .locals 1

    .prologue
    .line 709
    iget-object v0, p0, Landroid/support/v7/app/WindowDecorActionBar;->mOverlayLayout:Landroid/support/v7/widget/ActionBarOverlayLayout;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionBarOverlayLayout;->getActionBarHideOffset()I

    move-result v0

    return v0
.end method

.method public getNavigationItemCount()I
    .locals 1

    .prologue
    .line 1257
    iget-object v0, p0, Landroid/support/v7/app/WindowDecorActionBar;->mDecorToolbar:Landroid/support/v7/widget/DecorToolbar;

    invoke-interface {v0}, Landroid/support/v7/widget/DecorToolbar;->getNavigationMode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1263
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 1259
    :pswitch_0
    iget-object v0, p0, Landroid/support/v7/app/WindowDecorActionBar;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0

    .line 1261
    :pswitch_1
    iget-object v0, p0, Landroid/support/v7/app/WindowDecorActionBar;->mDecorToolbar:Landroid/support/v7/widget/DecorToolbar;

    invoke-interface {v0}, Landroid/support/v7/widget/DecorToolbar;->getDropdownItemCount()I

    move-result v0

    goto :goto_0

    .line 1257
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getNavigationMode()I
    .locals 1

    .prologue
    .line 483
    iget-object v0, p0, Landroid/support/v7/app/WindowDecorActionBar;->mDecorToolbar:Landroid/support/v7/widget/DecorToolbar;

    invoke-interface {v0}, Landroid/support/v7/widget/DecorToolbar;->getNavigationMode()I

    move-result v0

    return v0
.end method

.method public getSelectedNavigationIndex()I
    .locals 2

    .prologue
    const/4 v0, -0x1

    .line 1245
    iget-object v1, p0, Landroid/support/v7/app/WindowDecorActionBar;->mDecorToolbar:Landroid/support/v7/widget/DecorToolbar;

    invoke-interface {v1}, Landroid/support/v7/widget/DecorToolbar;->getNavigationMode()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 1251
    :cond_0
    :goto_0
    return v0

    .line 1247
    :pswitch_0
    iget-object v1, p0, Landroid/support/v7/app/WindowDecorActionBar;->mSelectedTab:Landroid/support/v7/app/WindowDecorActionBar$TabImpl;

    if-eqz v1, :cond_0

    iget-object v0, p0, Landroid/support/v7/app/WindowDecorActionBar;->mSelectedTab:Landroid/support/v7/app/WindowDecorActionBar$TabImpl;

    invoke-virtual {v0}, Landroid/support/v7/app/WindowDecorActionBar$TabImpl;->getPosition()I

    move-result v0

    goto :goto_0

    .line 1249
    :pswitch_1
    iget-object v0, p0, Landroid/support/v7/app/WindowDecorActionBar;->mDecorToolbar:Landroid/support/v7/widget/DecorToolbar;

    invoke-interface {v0}, Landroid/support/v7/widget/DecorToolbar;->getDropdownSelectedPosition()I

    move-result v0

    goto :goto_0

    .line 1245
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getSelectedTab()Landroid/support/v7/app/ActionBar$Tab;
    .locals 1

    .prologue
    .line 630
    iget-object v0, p0, Landroid/support/v7/app/WindowDecorActionBar;->mSelectedTab:Landroid/support/v7/app/WindowDecorActionBar$TabImpl;

    return-object v0
.end method

.method public getSubtitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 479
    iget-object v0, p0, Landroid/support/v7/app/WindowDecorActionBar;->mDecorToolbar:Landroid/support/v7/widget/DecorToolbar;

    invoke-interface {v0}, Landroid/support/v7/widget/DecorToolbar;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getTabAt(I)Landroid/support/v7/app/ActionBar$Tab;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 1304
    iget-object v0, p0, Landroid/support/v7/app/WindowDecorActionBar;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/app/ActionBar$Tab;

    return-object v0
.end method

.method public getTabCount()I
    .locals 1

    .prologue
    .line 1269
    iget-object v0, p0, Landroid/support/v7/app/WindowDecorActionBar;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getThemedContext()Landroid/content/Context;
    .locals 5

    .prologue
    .line 868
    iget-object v3, p0, Landroid/support/v7/app/WindowDecorActionBar;->mThemedContext:Landroid/content/Context;

    if-nez v3, :cond_0

    .line 869
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 870
    .local v1, "outValue":Landroid/util/TypedValue;
    iget-object v3, p0, Landroid/support/v7/app/WindowDecorActionBar;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    .line 871
    .local v0, "currentTheme":Landroid/content/res/Resources$Theme;
    sget v3, Landroid/support/v7/appcompat/R$attr;->actionBarWidgetTheme:I

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v1, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 872
    iget v2, v1, Landroid/util/TypedValue;->resourceId:I

    .line 874
    .local v2, "targetThemeRes":I
    if-eqz v2, :cond_1

    .line 875
    new-instance v3, Landroid/view/ContextThemeWrapper;

    iget-object v4, p0, Landroid/support/v7/app/WindowDecorActionBar;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v3, p0, Landroid/support/v7/app/WindowDecorActionBar;->mThemedContext:Landroid/content/Context;

    .line 880
    .end local v0    # "currentTheme":Landroid/content/res/Resources$Theme;
    .end local v1    # "outValue":Landroid/util/TypedValue;
    .end local v2    # "targetThemeRes":I
    :cond_0
    :goto_0
    iget-object v3, p0, Landroid/support/v7/app/WindowDecorActionBar;->mThemedContext:Landroid/content/Context;

    return-object v3

    .line 877
    .restart local v0    # "currentTheme":Landroid/content/res/Resources$Theme;
    .restart local v1    # "outValue":Landroid/util/TypedValue;
    .restart local v2    # "targetThemeRes":I
    :cond_1
    iget-object v3, p0, Landroid/support/v7/app/WindowDecorActionBar;->mContext:Landroid/content/Context;

    iput-object v3, p0, Landroid/support/v7/app/WindowDecorActionBar;->mThemedContext:Landroid/content/Context;

    goto :goto_0
.end method

.method getTintManager()Landroid/support/v7/widget/TintManager;
    .locals 1

    .prologue
    .line 1343
    iget-object v0, p0, Landroid/support/v7/app/WindowDecorActionBar;->mTintManager:Landroid/support/v7/widget/TintManager;

    if-nez v0, :cond_0

    .line 1344
    iget-object v0, p0, Landroid/support/v7/app/WindowDecorActionBar;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/support/v7/widget/TintManager;->get(Landroid/content/Context;)Landroid/support/v7/widget/TintManager;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/app/WindowDecorActionBar;->mTintManager:Landroid/support/v7/widget/TintManager;

    .line 1346
    :cond_0
    iget-object v0, p0, Landroid/support/v7/app/WindowDecorActionBar;->mTintManager:Landroid/support/v7/widget/TintManager;

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 475
    iget-object v0, p0, Landroid/support/v7/app/WindowDecorActionBar;->mDecorToolbar:Landroid/support/v7/widget/DecorToolbar;

    invoke-interface {v0}, Landroid/support/v7/widget/DecorToolbar;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public hasIcon()Z
    .locals 1

    .prologue
    .line 1319
    iget-object v0, p0, Landroid/support/v7/app/WindowDecorActionBar;->mDecorToolbar:Landroid/support/v7/widget/DecorToolbar;

    invoke-interface {v0}, Landroid/support/v7/widget/DecorToolbar;->hasIcon()Z

    move-result v0

    return v0
.end method

.method public hasLogo()Z
    .locals 1

    .prologue
    .line 1333
    iget-object v0, p0, Landroid/support/v7/app/WindowDecorActionBar;->mDecorToolbar:Landroid/support/v7/widget/DecorToolbar;

    invoke-interface {v0}, Landroid/support/v7/widget/DecorToolbar;->hasLogo()Z

    move-result v0

    return v0
.end method

.method public hide()V
    .locals 1

    .prologue
    .line 669
    iget-boolean v0, p0, Landroid/support/v7/app/WindowDecorActionBar;->mHiddenByApp:Z

    if-nez v0, :cond_0

    .line 670
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/app/WindowDecorActionBar;->mHiddenByApp:Z

    .line 671
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/v7/app/WindowDecorActionBar;->updateVisibility(Z)V

    .line 673
    :cond_0
    return-void
.end method

.method public hideForSystem()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 686
    iget-boolean v0, p0, Landroid/support/v7/app/WindowDecorActionBar;->mHiddenBySystem:Z

    if-nez v0, :cond_0

    .line 687
    iput-boolean v1, p0, Landroid/support/v7/app/WindowDecorActionBar;->mHiddenBySystem:Z

    .line 688
    invoke-direct {p0, v1}, Landroid/support/v7/app/WindowDecorActionBar;->updateVisibility(Z)V

    .line 690
    :cond_0
    return-void
.end method

.method public isHideOnContentScrollEnabled()Z
    .locals 1

    .prologue
    .line 704
    iget-object v0, p0, Landroid/support/v7/app/WindowDecorActionBar;->mOverlayLayout:Landroid/support/v7/widget/ActionBarOverlayLayout;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionBarOverlayLayout;->isHideOnContentScrollEnabled()Z

    move-result v0

    return v0
.end method

.method public isShowing()Z
    .locals 2

    .prologue
    .line 833
    invoke-virtual {p0}, Landroid/support/v7/app/WindowDecorActionBar;->getHeight()I

    move-result v0

    .line 835
    .local v0, "height":I
    iget-boolean v1, p0, Landroid/support/v7/app/WindowDecorActionBar;->mNowShowing:Z

    if-eqz v1, :cond_1

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/app/WindowDecorActionBar;->getHideOffset()I

    move-result v1

    if-ge v1, v0, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isTitleTruncated()Z
    .locals 1

    .prologue
    .line 885
    iget-object v0, p0, Landroid/support/v7/app/WindowDecorActionBar;->mDecorToolbar:Landroid/support/v7/widget/DecorToolbar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/app/WindowDecorActionBar;->mDecorToolbar:Landroid/support/v7/widget/DecorToolbar;

    invoke-interface {v0}, Landroid/support/v7/widget/DecorToolbar;->isTitleTruncated()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public newTab()Landroid/support/v7/app/ActionBar$Tab;
    .locals 1

    .prologue
    .line 558
    new-instance v0, Landroid/support/v7/app/WindowDecorActionBar$TabImpl;

    invoke-direct {v0, p0}, Landroid/support/v7/app/WindowDecorActionBar$TabImpl;-><init>(Landroid/support/v7/app/WindowDecorActionBar;)V

    return-object v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 257
    iget-object v0, p0, Landroid/support/v7/app/WindowDecorActionBar;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/support/v7/view/ActionBarPolicy;->get(Landroid/content/Context;)Landroid/support/v7/view/ActionBarPolicy;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/view/ActionBarPolicy;->hasEmbeddedTabs()Z

    move-result v0

    invoke-direct {p0, v0}, Landroid/support/v7/app/WindowDecorActionBar;->setHasEmbeddedTabs(Z)V

    .line 258
    return-void
.end method

.method public onContentScrollStarted()V
    .locals 1

    .prologue
    .line 910
    iget-object v0, p0, Landroid/support/v7/app/WindowDecorActionBar;->mCurrentShowAnim:Landroid/support/v7/view/ViewPropertyAnimatorCompatSet;

    if-eqz v0, :cond_0

    .line 911
    iget-object v0, p0, Landroid/support/v7/app/WindowDecorActionBar;->mCurrentShowAnim:Landroid/support/v7/view/ViewPropertyAnimatorCompatSet;

    invoke-virtual {v0}, Landroid/support/v7/view/ViewPropertyAnimatorCompatSet;->cancel()V

    .line 912
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/app/WindowDecorActionBar;->mCurrentShowAnim:Landroid/support/v7/view/ViewPropertyAnimatorCompatSet;

    .line 914
    :cond_0
    return-void
.end method

.method public onContentScrollStopped()V
    .locals 0

    .prologue
    .line 918
    return-void
.end method

.method public onWindowVisibilityChanged(I)V
    .locals 0
    .param p1, "visibility"    # I

    .prologue
    .line 318
    iput p1, p0, Landroid/support/v7/app/WindowDecorActionBar;->mCurWindowVisibility:I

    .line 319
    return-void
.end method

.method public removeAllTabs()V
    .locals 0

    .prologue
    .line 416
    invoke-direct {p0}, Landroid/support/v7/app/WindowDecorActionBar;->cleanupTabs()V

    .line 417
    return-void
.end method

.method public removeOnMenuVisibilityListener(Landroid/support/v7/app/ActionBar$OnMenuVisibilityListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/support/v7/app/ActionBar$OnMenuVisibilityListener;

    .prologue
    .line 340
    iget-object v0, p0, Landroid/support/v7/app/WindowDecorActionBar;->mMenuVisibilityListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 341
    return-void
.end method

.method public removeTab(Landroid/support/v7/app/ActionBar$Tab;)V
    .locals 1
    .param p1, "tab"    # Landroid/support/v7/app/ActionBar$Tab;

    .prologue
    .line 563
    invoke-virtual {p1}, Landroid/support/v7/app/ActionBar$Tab;->getPosition()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/support/v7/app/WindowDecorActionBar;->removeTabAt(I)V

    .line 564
    return-void
.end method

.method public removeTabAt(I)V
    .locals 7
    .param p1, "position"    # I

    .prologue
    .line 568
    iget-object v4, p0, Landroid/support/v7/app/WindowDecorActionBar;->mTabScrollView:Landroid/support/v7/widget/ScrollingTabContainerView;

    if-nez v4, :cond_1

    .line 589
    :cond_0
    :goto_0
    return-void

    .line 573
    :cond_1
    iget-object v4, p0, Landroid/support/v7/app/WindowDecorActionBar;->mSelectedTab:Landroid/support/v7/app/WindowDecorActionBar$TabImpl;

    if-eqz v4, :cond_3

    iget-object v4, p0, Landroid/support/v7/app/WindowDecorActionBar;->mSelectedTab:Landroid/support/v7/app/WindowDecorActionBar$TabImpl;

    invoke-virtual {v4}, Landroid/support/v7/app/WindowDecorActionBar$TabImpl;->getPosition()I

    move-result v3

    .line 575
    .local v3, "selectedTabPosition":I
    :goto_1
    iget-object v4, p0, Landroid/support/v7/app/WindowDecorActionBar;->mTabScrollView:Landroid/support/v7/widget/ScrollingTabContainerView;

    invoke-virtual {v4, p1}, Landroid/support/v7/widget/ScrollingTabContainerView;->removeTabAt(I)V

    .line 576
    iget-object v4, p0, Landroid/support/v7/app/WindowDecorActionBar;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v7/app/WindowDecorActionBar$TabImpl;

    .line 577
    .local v2, "removedTab":Landroid/support/v7/app/WindowDecorActionBar$TabImpl;
    if-eqz v2, :cond_2

    .line 578
    const/4 v4, -0x1

    invoke-virtual {v2, v4}, Landroid/support/v7/app/WindowDecorActionBar$TabImpl;->setPosition(I)V

    .line 581
    :cond_2
    iget-object v4, p0, Landroid/support/v7/app/WindowDecorActionBar;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 582
    .local v1, "newTabCount":I
    move v0, p1

    .local v0, "i":I
    :goto_2
    if-ge v0, v1, :cond_4

    .line 583
    iget-object v4, p0, Landroid/support/v7/app/WindowDecorActionBar;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v7/app/WindowDecorActionBar$TabImpl;

    invoke-virtual {v4, v0}, Landroid/support/v7/app/WindowDecorActionBar$TabImpl;->setPosition(I)V

    .line 582
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 573
    .end local v0    # "i":I
    .end local v1    # "newTabCount":I
    .end local v2    # "removedTab":Landroid/support/v7/app/WindowDecorActionBar$TabImpl;
    .end local v3    # "selectedTabPosition":I
    :cond_3
    iget v3, p0, Landroid/support/v7/app/WindowDecorActionBar;->mSavedTabPosition:I

    goto :goto_1

    .line 586
    .restart local v0    # "i":I
    .restart local v1    # "newTabCount":I
    .restart local v2    # "removedTab":Landroid/support/v7/app/WindowDecorActionBar$TabImpl;
    .restart local v3    # "selectedTabPosition":I
    :cond_4
    if-ne v3, p1, :cond_0

    .line 587
    iget-object v4, p0, Landroid/support/v7/app/WindowDecorActionBar;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_5

    const/4 v4, 0x0

    :goto_3
    invoke-virtual {p0, v4}, Landroid/support/v7/app/WindowDecorActionBar;->selectTab(Landroid/support/v7/app/ActionBar$Tab;)V

    goto :goto_0

    :cond_5
    iget-object v4, p0, Landroid/support/v7/app/WindowDecorActionBar;->mTabs:Ljava/util/ArrayList;

    const/4 v5, 0x0

    add-int/lit8 v6, p1, -0x1

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v7/app/WindowDecorActionBar$TabImpl;

    goto :goto_3
.end method

.method public selectTab(Landroid/support/v7/app/ActionBar$Tab;)V
    .locals 4
    .param p1, "tab"    # Landroid/support/v7/app/ActionBar$Tab;

    .prologue
    const/4 v2, -0x1

    .line 593
    invoke-virtual {p0}, Landroid/support/v7/app/WindowDecorActionBar;->getNavigationMode()I

    move-result v1

    const/4 v3, 0x2

    if-eq v1, v3, :cond_2

    .line 594
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/support/v7/app/ActionBar$Tab;->getPosition()I

    move-result v1

    :goto_0
    iput v1, p0, Landroid/support/v7/app/WindowDecorActionBar;->mSavedTabPosition:I

    .line 626
    .end local p1    # "tab":Landroid/support/v7/app/ActionBar$Tab;
    :cond_0
    :goto_1
    return-void

    .restart local p1    # "tab":Landroid/support/v7/app/ActionBar$Tab;
    :cond_1
    move v1, v2

    .line 594
    goto :goto_0

    .line 599
    :cond_2
    iget-object v1, p0, Landroid/support/v7/app/WindowDecorActionBar;->mActivity:Landroid/app/Activity;

    instance-of v1, v1, Landroid/support/v4/app/FragmentActivity;

    if-eqz v1, :cond_4

    iget-object v1, p0, Landroid/support/v7/app/WindowDecorActionBar;->mDecorToolbar:Landroid/support/v7/widget/DecorToolbar;

    invoke-interface {v1}, Landroid/support/v7/widget/DecorToolbar;->getViewGroup()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->isInEditMode()Z

    move-result v1

    if-nez v1, :cond_4

    .line 601
    iget-object v1, p0, Landroid/support/v7/app/WindowDecorActionBar;->mActivity:Landroid/app/Activity;

    check-cast v1, Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->disallowAddToBackStack()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 607
    .local v0, "trans":Landroid/support/v4/app/FragmentTransaction;
    :goto_2
    iget-object v1, p0, Landroid/support/v7/app/WindowDecorActionBar;->mSelectedTab:Landroid/support/v7/app/WindowDecorActionBar$TabImpl;

    if-ne v1, p1, :cond_5

    .line 608
    iget-object v1, p0, Landroid/support/v7/app/WindowDecorActionBar;->mSelectedTab:Landroid/support/v7/app/WindowDecorActionBar$TabImpl;

    if-eqz v1, :cond_3

    .line 609
    iget-object v1, p0, Landroid/support/v7/app/WindowDecorActionBar;->mSelectedTab:Landroid/support/v7/app/WindowDecorActionBar$TabImpl;

    invoke-virtual {v1}, Landroid/support/v7/app/WindowDecorActionBar$TabImpl;->getCallback()Landroid/support/v7/app/ActionBar$TabListener;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v7/app/WindowDecorActionBar;->mSelectedTab:Landroid/support/v7/app/WindowDecorActionBar$TabImpl;

    invoke-interface {v1, v2, v0}, Landroid/support/v7/app/ActionBar$TabListener;->onTabReselected(Landroid/support/v7/app/ActionBar$Tab;Landroid/support/v4/app/FragmentTransaction;)V

    .line 610
    iget-object v1, p0, Landroid/support/v7/app/WindowDecorActionBar;->mTabScrollView:Landroid/support/v7/widget/ScrollingTabContainerView;

    invoke-virtual {p1}, Landroid/support/v7/app/ActionBar$Tab;->getPosition()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/ScrollingTabContainerView;->animateToTab(I)V

    .line 623
    .end local p1    # "tab":Landroid/support/v7/app/ActionBar$Tab;
    :cond_3
    :goto_3
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 624
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    goto :goto_1

    .line 604
    .end local v0    # "trans":Landroid/support/v4/app/FragmentTransaction;
    .restart local p1    # "tab":Landroid/support/v7/app/ActionBar$Tab;
    :cond_4
    const/4 v0, 0x0

    .restart local v0    # "trans":Landroid/support/v4/app/FragmentTransaction;
    goto :goto_2

    .line 613
    :cond_5
    iget-object v1, p0, Landroid/support/v7/app/WindowDecorActionBar;->mTabScrollView:Landroid/support/v7/widget/ScrollingTabContainerView;

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Landroid/support/v7/app/ActionBar$Tab;->getPosition()I

    move-result v2

    :cond_6
    invoke-virtual {v1, v2}, Landroid/support/v7/widget/ScrollingTabContainerView;->setTabSelected(I)V

    .line 614
    iget-object v1, p0, Landroid/support/v7/app/WindowDecorActionBar;->mSelectedTab:Landroid/support/v7/app/WindowDecorActionBar$TabImpl;

    if-eqz v1, :cond_7

    .line 615
    iget-object v1, p0, Landroid/support/v7/app/WindowDecorActionBar;->mSelectedTab:Landroid/support/v7/app/WindowDecorActionBar$TabImpl;

    invoke-virtual {v1}, Landroid/support/v7/app/WindowDecorActionBar$TabImpl;->getCallback()Landroid/support/v7/app/ActionBar$TabListener;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v7/app/WindowDecorActionBar;->mSelectedTab:Landroid/support/v7/app/WindowDecorActionBar$TabImpl;

    invoke-interface {v1, v2, v0}, Landroid/support/v7/app/ActionBar$TabListener;->onTabUnselected(Landroid/support/v7/app/ActionBar$Tab;Landroid/support/v4/app/FragmentTransaction;)V

    .line 617
    :cond_7
    check-cast p1, Landroid/support/v7/app/WindowDecorActionBar$TabImpl;

    .end local p1    # "tab":Landroid/support/v7/app/ActionBar$Tab;
    iput-object p1, p0, Landroid/support/v7/app/WindowDecorActionBar;->mSelectedTab:Landroid/support/v7/app/WindowDecorActionBar$TabImpl;

    .line 618
    iget-object v1, p0, Landroid/support/v7/app/WindowDecorActionBar;->mSelectedTab:Landroid/support/v7/app/WindowDecorActionBar$TabImpl;

    if-eqz v1, :cond_3

    .line 619
    iget-object v1, p0, Landroid/support/v7/app/WindowDecorActionBar;->mSelectedTab:Landroid/support/v7/app/WindowDecorActionBar$TabImpl;

    invoke-virtual {v1}, Landroid/support/v7/app/WindowDecorActionBar$TabImpl;->getCallback()Landroid/support/v7/app/ActionBar$TabListener;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v7/app/WindowDecorActionBar;->mSelectedTab:Landroid/support/v7/app/WindowDecorActionBar$TabImpl;

    invoke-interface {v1, v2, v0}, Landroid/support/v7/app/ActionBar$TabListener;->onTabSelected(Landroid/support/v7/app/ActionBar$Tab;Landroid/support/v4/app/FragmentTransaction;)V

    goto :goto_3
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 459
    iget-object v0, p0, Landroid/support/v7/app/WindowDecorActionBar;->mContainerView:Landroid/support/v7/widget/ActionBarContainer;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/ActionBarContainer;->setPrimaryBackground(Landroid/graphics/drawable/Drawable;)V

    .line 460
    return-void
.end method

.method public setCustomView(I)V
    .locals 3
    .param p1, "resId"    # I

    .prologue
    .line 357
    invoke-virtual {p0}, Landroid/support/v7/app/WindowDecorActionBar;->getThemedContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/app/WindowDecorActionBar;->mDecorToolbar:Landroid/support/v7/widget/DecorToolbar;

    invoke-interface {v1}, Landroid/support/v7/widget/DecorToolbar;->getViewGroup()Landroid/view/ViewGroup;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v7/app/WindowDecorActionBar;->setCustomView(Landroid/view/View;)V

    .line 359
    return-void
.end method

.method public setCustomView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1229
    iget-object v0, p0, Landroid/support/v7/app/WindowDecorActionBar;->mDecorToolbar:Landroid/support/v7/widget/DecorToolbar;

    invoke-interface {v0, p1}, Landroid/support/v7/widget/DecorToolbar;->setCustomView(Landroid/view/View;)V

    .line 1230
    return-void
.end method

.method public setCustomView(Landroid/view/View;Landroid/support/v7/app/ActionBar$LayoutParams;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "layoutParams"    # Landroid/support/v7/app/ActionBar$LayoutParams;

    .prologue
    .line 1234
    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1235
    iget-object v0, p0, Landroid/support/v7/app/WindowDecorActionBar;->mDecorToolbar:Landroid/support/v7/widget/DecorToolbar;

    invoke-interface {v0, p1}, Landroid/support/v7/widget/DecorToolbar;->setCustomView(Landroid/view/View;)V

    .line 1236
    return-void
.end method

.method public setDefaultDisplayHomeAsUpEnabled(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 1337
    iget-boolean v0, p0, Landroid/support/v7/app/WindowDecorActionBar;->mDisplayHomeAsUpSet:Z

    if-nez v0, :cond_0

    .line 1338
    invoke-virtual {p0, p1}, Landroid/support/v7/app/WindowDecorActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 1340
    :cond_0
    return-void
.end method

.method public setDisplayHomeAsUpEnabled(Z)V
    .locals 2
    .param p1, "showHomeAsUp"    # Z

    .prologue
    const/4 v1, 0x4

    .line 373
    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p0, v0, v1}, Landroid/support/v7/app/WindowDecorActionBar;->setDisplayOptions(II)V

    .line 374
    return-void

    .line 373
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDisplayOptions(I)V
    .locals 1
    .param p1, "options"    # I

    .prologue
    .line 444
    and-int/lit8 v0, p1, 0x4

    if-eqz v0, :cond_0

    .line 445
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/app/WindowDecorActionBar;->mDisplayHomeAsUpSet:Z

    .line 447
    :cond_0
    iget-object v0, p0, Landroid/support/v7/app/WindowDecorActionBar;->mDecorToolbar:Landroid/support/v7/widget/DecorToolbar;

    invoke-interface {v0, p1}, Landroid/support/v7/widget/DecorToolbar;->setDisplayOptions(I)V

    .line 448
    return-void
.end method

.method public setDisplayOptions(II)V
    .locals 4
    .param p1, "options"    # I
    .param p2, "mask"    # I

    .prologue
    .line 451
    iget-object v1, p0, Landroid/support/v7/app/WindowDecorActionBar;->mDecorToolbar:Landroid/support/v7/widget/DecorToolbar;

    invoke-interface {v1}, Landroid/support/v7/widget/DecorToolbar;->getDisplayOptions()I

    move-result v0

    .line 452
    .local v0, "current":I
    and-int/lit8 v1, p2, 0x4

    if-eqz v1, :cond_0

    .line 453
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/support/v7/app/WindowDecorActionBar;->mDisplayHomeAsUpSet:Z

    .line 455
    :cond_0
    iget-object v1, p0, Landroid/support/v7/app/WindowDecorActionBar;->mDecorToolbar:Landroid/support/v7/widget/DecorToolbar;

    and-int v2, p1, p2

    xor-int/lit8 v3, p2, -0x1

    and-int/2addr v3, v0

    or-int/2addr v2, v3

    invoke-interface {v1, v2}, Landroid/support/v7/widget/DecorToolbar;->setDisplayOptions(I)V

    .line 456
    return-void
.end method

.method public setDisplayShowCustomEnabled(Z)V
    .locals 2
    .param p1, "showCustom"    # Z

    .prologue
    const/16 v1, 0x10

    .line 383
    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p0, v0, v1}, Landroid/support/v7/app/WindowDecorActionBar;->setDisplayOptions(II)V

    .line 384
    return-void

    .line 383
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDisplayShowHomeEnabled(Z)V
    .locals 2
    .param p1, "showHome"    # Z

    .prologue
    const/4 v1, 0x2

    .line 368
    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p0, v0, v1}, Landroid/support/v7/app/WindowDecorActionBar;->setDisplayOptions(II)V

    .line 369
    return-void

    .line 368
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDisplayShowTitleEnabled(Z)V
    .locals 2
    .param p1, "showTitle"    # Z

    .prologue
    const/16 v1, 0x8

    .line 378
    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p0, v0, v1}, Landroid/support/v7/app/WindowDecorActionBar;->setDisplayOptions(II)V

    .line 379
    return-void

    .line 378
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDisplayUseLogoEnabled(Z)V
    .locals 2
    .param p1, "useLogo"    # Z

    .prologue
    const/4 v1, 0x1

    .line 363
    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p0, v0, v1}, Landroid/support/v7/app/WindowDecorActionBar;->setDisplayOptions(II)V

    .line 364
    return-void

    .line 363
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setElevation(F)V
    .locals 1
    .param p1, "elevation"    # F

    .prologue
    .line 248
    iget-object v0, p0, Landroid/support/v7/app/WindowDecorActionBar;->mContainerView:Landroid/support/v7/widget/ActionBarContainer;

    invoke-static {v0, p1}, Landroid/support/v4/view/ViewCompat;->setElevation(Landroid/view/View;F)V

    .line 249
    return-void
.end method

.method public setHideOffset(I)V
    .locals 2
    .param p1, "offset"    # I

    .prologue
    .line 714
    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/support/v7/app/WindowDecorActionBar;->mOverlayLayout:Landroid/support/v7/widget/ActionBarOverlayLayout;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionBarOverlayLayout;->isInOverlayMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 715
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Action bar must be in overlay mode (Window.FEATURE_OVERLAY_ACTION_BAR) to set a non-zero hide offset"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 718
    :cond_0
    iget-object v0, p0, Landroid/support/v7/app/WindowDecorActionBar;->mOverlayLayout:Landroid/support/v7/widget/ActionBarOverlayLayout;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/ActionBarOverlayLayout;->setActionBarHideOffset(I)V

    .line 719
    return-void
.end method

.method public setHideOnContentScrollEnabled(Z)V
    .locals 2
    .param p1, "hideOnContentScroll"    # Z

    .prologue
    .line 694
    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/support/v7/app/WindowDecorActionBar;->mOverlayLayout:Landroid/support/v7/widget/ActionBarOverlayLayout;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionBarOverlayLayout;->isInOverlayMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 695
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Action bar must be in overlay mode (Window.FEATURE_OVERLAY_ACTION_BAR) to enable hide on content scroll"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 698
    :cond_0
    iput-boolean p1, p0, Landroid/support/v7/app/WindowDecorActionBar;->mHideOnContentScroll:Z

    .line 699
    iget-object v0, p0, Landroid/support/v7/app/WindowDecorActionBar;->mOverlayLayout:Landroid/support/v7/widget/ActionBarOverlayLayout;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/ActionBarOverlayLayout;->setHideOnContentScrollEnabled(Z)V

    .line 700
    return-void
.end method

.method public setHomeActionContentDescription(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 905
    iget-object v0, p0, Landroid/support/v7/app/WindowDecorActionBar;->mDecorToolbar:Landroid/support/v7/widget/DecorToolbar;

    invoke-interface {v0, p1}, Landroid/support/v7/widget/DecorToolbar;->setNavigationContentDescription(I)V

    .line 906
    return-void
.end method

.method public setHomeActionContentDescription(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "description"    # Ljava/lang/CharSequence;

    .prologue
    .line 900
    iget-object v0, p0, Landroid/support/v7/app/WindowDecorActionBar;->mDecorToolbar:Landroid/support/v7/widget/DecorToolbar;

    invoke-interface {v0, p1}, Landroid/support/v7/widget/DecorToolbar;->setNavigationContentDescription(Ljava/lang/CharSequence;)V

    .line 901
    return-void
.end method

.method public setHomeAsUpIndicator(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 895
    iget-object v0, p0, Landroid/support/v7/app/WindowDecorActionBar;->mDecorToolbar:Landroid/support/v7/widget/DecorToolbar;

    invoke-interface {v0, p1}, Landroid/support/v7/widget/DecorToolbar;->setNavigationIcon(I)V

    .line 896
    return-void
.end method

.method public setHomeAsUpIndicator(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "indicator"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 890
    iget-object v0, p0, Landroid/support/v7/app/WindowDecorActionBar;->mDecorToolbar:Landroid/support/v7/widget/DecorToolbar;

    invoke-interface {v0, p1}, Landroid/support/v7/widget/DecorToolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    .line 891
    return-void
.end method

.method public setHomeButtonEnabled(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 388
    iget-object v0, p0, Landroid/support/v7/app/WindowDecorActionBar;->mDecorToolbar:Landroid/support/v7/widget/DecorToolbar;

    invoke-interface {v0, p1}, Landroid/support/v7/widget/DecorToolbar;->setHomeButtonEnabled(Z)V

    .line 389
    return-void
.end method

.method public setIcon(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 1310
    iget-object v0, p0, Landroid/support/v7/app/WindowDecorActionBar;->mDecorToolbar:Landroid/support/v7/widget/DecorToolbar;

    invoke-interface {v0, p1}, Landroid/support/v7/widget/DecorToolbar;->setIcon(I)V

    .line 1311
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 1315
    iget-object v0, p0, Landroid/support/v7/app/WindowDecorActionBar;->mDecorToolbar:Landroid/support/v7/widget/DecorToolbar;

    invoke-interface {v0, p1}, Landroid/support/v7/widget/DecorToolbar;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 1316
    return-void
.end method

.method public setListNavigationCallbacks(Landroid/widget/SpinnerAdapter;Landroid/support/v7/app/ActionBar$OnNavigationListener;)V
    .locals 2
    .param p1, "adapter"    # Landroid/widget/SpinnerAdapter;
    .param p2, "callback"    # Landroid/support/v7/app/ActionBar$OnNavigationListener;

    .prologue
    .line 1240
    iget-object v0, p0, Landroid/support/v7/app/WindowDecorActionBar;->mDecorToolbar:Landroid/support/v7/widget/DecorToolbar;

    new-instance v1, Landroid/support/v7/app/NavItemSelectedListener;

    invoke-direct {v1, p2}, Landroid/support/v7/app/NavItemSelectedListener;-><init>(Landroid/support/v7/app/ActionBar$OnNavigationListener;)V

    invoke-interface {v0, p1, v1}, Landroid/support/v7/widget/DecorToolbar;->setDropdownParams(Landroid/widget/SpinnerAdapter;Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 1241
    return-void
.end method

.method public setLogo(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 1324
    iget-object v0, p0, Landroid/support/v7/app/WindowDecorActionBar;->mDecorToolbar:Landroid/support/v7/widget/DecorToolbar;

    invoke-interface {v0, p1}, Landroid/support/v7/widget/DecorToolbar;->setLogo(I)V

    .line 1325
    return-void
.end method

.method public setLogo(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "logo"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 1329
    iget-object v0, p0, Landroid/support/v7/app/WindowDecorActionBar;->mDecorToolbar:Landroid/support/v7/widget/DecorToolbar;

    invoke-interface {v0, p1}, Landroid/support/v7/widget/DecorToolbar;->setLogo(Landroid/graphics/drawable/Drawable;)V

    .line 1330
    return-void
.end method

.method public setNavigationMode(I)V
    .locals 7
    .param p1, "mode"    # I

    .prologue
    const/4 v6, 0x2

    const/4 v2, 0x1

    const/4 v5, -0x1

    const/4 v3, 0x0

    .line 1274
    iget-object v1, p0, Landroid/support/v7/app/WindowDecorActionBar;->mDecorToolbar:Landroid/support/v7/widget/DecorToolbar;

    invoke-interface {v1}, Landroid/support/v7/widget/DecorToolbar;->getNavigationMode()I

    move-result v0

    .line 1275
    .local v0, "oldMode":I
    packed-switch v0, :pswitch_data_0

    .line 1282
    :goto_0
    if-eq v0, p1, :cond_0

    iget-boolean v1, p0, Landroid/support/v7/app/WindowDecorActionBar;->mHasEmbeddedTabs:Z

    if-nez v1, :cond_0

    .line 1283
    iget-object v1, p0, Landroid/support/v7/app/WindowDecorActionBar;->mOverlayLayout:Landroid/support/v7/widget/ActionBarOverlayLayout;

    if-eqz v1, :cond_0

    .line 1284
    iget-object v1, p0, Landroid/support/v7/app/WindowDecorActionBar;->mOverlayLayout:Landroid/support/v7/widget/ActionBarOverlayLayout;

    invoke-static {v1}, Landroid/support/v4/view/ViewCompat;->requestApplyInsets(Landroid/view/View;)V

    .line 1287
    :cond_0
    iget-object v1, p0, Landroid/support/v7/app/WindowDecorActionBar;->mDecorToolbar:Landroid/support/v7/widget/DecorToolbar;

    invoke-interface {v1, p1}, Landroid/support/v7/widget/DecorToolbar;->setNavigationMode(I)V

    .line 1288
    packed-switch p1, :pswitch_data_1

    .line 1298
    :cond_1
    :goto_1
    iget-object v4, p0, Landroid/support/v7/app/WindowDecorActionBar;->mDecorToolbar:Landroid/support/v7/widget/DecorToolbar;

    if-ne p1, v6, :cond_2

    iget-boolean v1, p0, Landroid/support/v7/app/WindowDecorActionBar;->mHasEmbeddedTabs:Z

    if-nez v1, :cond_2

    move v1, v2

    :goto_2
    invoke-interface {v4, v1}, Landroid/support/v7/widget/DecorToolbar;->setCollapsible(Z)V

    .line 1299
    iget-object v1, p0, Landroid/support/v7/app/WindowDecorActionBar;->mOverlayLayout:Landroid/support/v7/widget/ActionBarOverlayLayout;

    if-ne p1, v6, :cond_3

    iget-boolean v4, p0, Landroid/support/v7/app/WindowDecorActionBar;->mHasEmbeddedTabs:Z

    if-nez v4, :cond_3

    :goto_3
    invoke-virtual {v1, v2}, Landroid/support/v7/widget/ActionBarOverlayLayout;->setHasNonEmbeddedTabs(Z)V

    .line 1300
    return-void

    .line 1277
    :pswitch_0
    invoke-virtual {p0}, Landroid/support/v7/app/WindowDecorActionBar;->getSelectedNavigationIndex()I

    move-result v1

    iput v1, p0, Landroid/support/v7/app/WindowDecorActionBar;->mSavedTabPosition:I

    .line 1278
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/support/v7/app/WindowDecorActionBar;->selectTab(Landroid/support/v7/app/ActionBar$Tab;)V

    .line 1279
    iget-object v1, p0, Landroid/support/v7/app/WindowDecorActionBar;->mTabScrollView:Landroid/support/v7/widget/ScrollingTabContainerView;

    const/16 v4, 0x8

    invoke-virtual {v1, v4}, Landroid/support/v7/widget/ScrollingTabContainerView;->setVisibility(I)V

    goto :goto_0

    .line 1290
    :pswitch_1
    invoke-direct {p0}, Landroid/support/v7/app/WindowDecorActionBar;->ensureTabsExist()V

    .line 1291
    iget-object v1, p0, Landroid/support/v7/app/WindowDecorActionBar;->mTabScrollView:Landroid/support/v7/widget/ScrollingTabContainerView;

    invoke-virtual {v1, v3}, Landroid/support/v7/widget/ScrollingTabContainerView;->setVisibility(I)V

    .line 1292
    iget v1, p0, Landroid/support/v7/app/WindowDecorActionBar;->mSavedTabPosition:I

    if-eq v1, v5, :cond_1

    .line 1293
    iget v1, p0, Landroid/support/v7/app/WindowDecorActionBar;->mSavedTabPosition:I

    invoke-virtual {p0, v1}, Landroid/support/v7/app/WindowDecorActionBar;->setSelectedNavigationItem(I)V

    .line 1294
    iput v5, p0, Landroid/support/v7/app/WindowDecorActionBar;->mSavedTabPosition:I

    goto :goto_1

    :cond_2
    move v1, v3

    .line 1298
    goto :goto_2

    :cond_3
    move v2, v3

    .line 1299
    goto :goto_3

    .line 1275
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch

    .line 1288
    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_1
    .end packed-switch
.end method

.method public setSelectedNavigationItem(I)V
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 402
    iget-object v0, p0, Landroid/support/v7/app/WindowDecorActionBar;->mDecorToolbar:Landroid/support/v7/widget/DecorToolbar;

    invoke-interface {v0}, Landroid/support/v7/widget/DecorToolbar;->getNavigationMode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 410
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "setSelectedNavigationIndex not valid for current navigation mode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 404
    :pswitch_0
    iget-object v0, p0, Landroid/support/v7/app/WindowDecorActionBar;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/app/ActionBar$Tab;

    invoke-virtual {p0, v0}, Landroid/support/v7/app/WindowDecorActionBar;->selectTab(Landroid/support/v7/app/ActionBar$Tab;)V

    .line 413
    :goto_0
    return-void

    .line 407
    :pswitch_1
    iget-object v0, p0, Landroid/support/v7/app/WindowDecorActionBar;->mDecorToolbar:Landroid/support/v7/widget/DecorToolbar;

    invoke-interface {v0, p1}, Landroid/support/v7/widget/DecorToolbar;->setDropdownSelectedPosition(I)V

    goto :goto_0

    .line 402
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setShowHideAnimationEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 329
    iput-boolean p1, p0, Landroid/support/v7/app/WindowDecorActionBar;->mShowHideAnimationEnabled:Z

    .line 330
    if-nez p1, :cond_0

    iget-object v0, p0, Landroid/support/v7/app/WindowDecorActionBar;->mCurrentShowAnim:Landroid/support/v7/view/ViewPropertyAnimatorCompatSet;

    if-eqz v0, :cond_0

    .line 331
    iget-object v0, p0, Landroid/support/v7/app/WindowDecorActionBar;->mCurrentShowAnim:Landroid/support/v7/view/ViewPropertyAnimatorCompatSet;

    invoke-virtual {v0}, Landroid/support/v7/view/ViewPropertyAnimatorCompatSet;->cancel()V

    .line 333
    :cond_0
    return-void
.end method

.method public setSplitBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 468
    return-void
.end method

.method public setStackedBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 463
    iget-object v0, p0, Landroid/support/v7/app/WindowDecorActionBar;->mContainerView:Landroid/support/v7/widget/ActionBarContainer;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/ActionBarContainer;->setStackedBackground(Landroid/graphics/drawable/Drawable;)V

    .line 464
    return-void
.end method

.method public setSubtitle(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 398
    iget-object v0, p0, Landroid/support/v7/app/WindowDecorActionBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v7/app/WindowDecorActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 399
    return-void
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "subtitle"    # Ljava/lang/CharSequence;

    .prologue
    .line 440
    iget-object v0, p0, Landroid/support/v7/app/WindowDecorActionBar;->mDecorToolbar:Landroid/support/v7/widget/DecorToolbar;

    invoke-interface {v0, p1}, Landroid/support/v7/widget/DecorToolbar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 441
    return-void
.end method

.method public setTitle(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 393
    iget-object v0, p0, Landroid/support/v7/app/WindowDecorActionBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v7/app/WindowDecorActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 394
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 431
    iget-object v0, p0, Landroid/support/v7/app/WindowDecorActionBar;->mDecorToolbar:Landroid/support/v7/widget/DecorToolbar;

    invoke-interface {v0, p1}, Landroid/support/v7/widget/DecorToolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 432
    return-void
.end method

.method public setWindowTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 436
    iget-object v0, p0, Landroid/support/v7/app/WindowDecorActionBar;->mDecorToolbar:Landroid/support/v7/widget/DecorToolbar;

    invoke-interface {v0, p1}, Landroid/support/v7/widget/DecorToolbar;->setWindowTitle(Ljava/lang/CharSequence;)V

    .line 437
    return-void
.end method

.method public show()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 644
    iget-boolean v0, p0, Landroid/support/v7/app/WindowDecorActionBar;->mHiddenByApp:Z

    if-eqz v0, :cond_0

    .line 645
    iput-boolean v1, p0, Landroid/support/v7/app/WindowDecorActionBar;->mHiddenByApp:Z

    .line 646
    invoke-direct {p0, v1}, Landroid/support/v7/app/WindowDecorActionBar;->updateVisibility(Z)V

    .line 648
    :cond_0
    return-void
.end method

.method public showForSystem()V
    .locals 1

    .prologue
    .line 661
    iget-boolean v0, p0, Landroid/support/v7/app/WindowDecorActionBar;->mHiddenBySystem:Z

    if-eqz v0, :cond_0

    .line 662
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/app/WindowDecorActionBar;->mHiddenBySystem:Z

    .line 663
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/support/v7/app/WindowDecorActionBar;->updateVisibility(Z)V

    .line 665
    :cond_0
    return-void
.end method

.method public startActionMode(Landroid/support/v7/view/ActionMode$Callback;)Landroid/support/v7/view/ActionMode;
    .locals 3
    .param p1, "callback"    # Landroid/support/v7/view/ActionMode$Callback;

    .prologue
    .line 491
    iget-object v1, p0, Landroid/support/v7/app/WindowDecorActionBar;->mActionMode:Landroid/support/v7/app/WindowDecorActionBar$ActionModeImpl;

    if-eqz v1, :cond_0

    .line 492
    iget-object v1, p0, Landroid/support/v7/app/WindowDecorActionBar;->mActionMode:Landroid/support/v7/app/WindowDecorActionBar$ActionModeImpl;

    invoke-virtual {v1}, Landroid/support/v7/app/WindowDecorActionBar$ActionModeImpl;->finish()V

    .line 495
    :cond_0
    iget-object v1, p0, Landroid/support/v7/app/WindowDecorActionBar;->mOverlayLayout:Landroid/support/v7/widget/ActionBarOverlayLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/ActionBarOverlayLayout;->setHideOnContentScrollEnabled(Z)V

    .line 496
    iget-object v1, p0, Landroid/support/v7/app/WindowDecorActionBar;->mContextView:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {v1}, Landroid/support/v7/widget/ActionBarContextView;->killMode()V

    .line 497
    new-instance v0, Landroid/support/v7/app/WindowDecorActionBar$ActionModeImpl;

    iget-object v1, p0, Landroid/support/v7/app/WindowDecorActionBar;->mContextView:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {v1}, Landroid/support/v7/widget/ActionBarContextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Landroid/support/v7/app/WindowDecorActionBar$ActionModeImpl;-><init>(Landroid/support/v7/app/WindowDecorActionBar;Landroid/content/Context;Landroid/support/v7/view/ActionMode$Callback;)V

    .line 498
    .local v0, "mode":Landroid/support/v7/app/WindowDecorActionBar$ActionModeImpl;
    invoke-virtual {v0}, Landroid/support/v7/app/WindowDecorActionBar$ActionModeImpl;->dispatchOnCreate()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 499
    invoke-virtual {v0}, Landroid/support/v7/app/WindowDecorActionBar$ActionModeImpl;->invalidate()V

    .line 500
    iget-object v1, p0, Landroid/support/v7/app/WindowDecorActionBar;->mContextView:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/ActionBarContextView;->initForMode(Landroid/support/v7/view/ActionMode;)V

    .line 501
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/support/v7/app/WindowDecorActionBar;->animateToMode(Z)V

    .line 502
    iget-object v1, p0, Landroid/support/v7/app/WindowDecorActionBar;->mContextView:Landroid/support/v7/widget/ActionBarContextView;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/ActionBarContextView;->sendAccessibilityEvent(I)V

    .line 503
    iput-object v0, p0, Landroid/support/v7/app/WindowDecorActionBar;->mActionMode:Landroid/support/v7/app/WindowDecorActionBar$ActionModeImpl;

    .line 506
    .end local v0    # "mode":Landroid/support/v7/app/WindowDecorActionBar$ActionModeImpl;
    :goto_0
    return-object v0

    .restart local v0    # "mode":Landroid/support/v7/app/WindowDecorActionBar$ActionModeImpl;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
