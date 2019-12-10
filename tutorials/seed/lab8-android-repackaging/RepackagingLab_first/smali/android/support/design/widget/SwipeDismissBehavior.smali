.class public Landroid/support/design/widget/SwipeDismissBehavior;
.super Landroid/support/design/widget/CoordinatorLayout$Behavior;
.source "SwipeDismissBehavior.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/design/widget/SwipeDismissBehavior$SettleRunnable;,
        Landroid/support/design/widget/SwipeDismissBehavior$OnDismissListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Landroid/view/View;",
        ">",
        "Landroid/support/design/widget/CoordinatorLayout$Behavior",
        "<TV;>;"
    }
.end annotation


# static fields
.field private static final DEFAULT_ALPHA_END_DISTANCE:F = 0.5f

.field private static final DEFAULT_ALPHA_START_DISTANCE:F = 0.0f

.field private static final DEFAULT_DRAG_DISMISS_THRESHOLD:F = 0.5f

.field public static final STATE_DRAGGING:I = 0x1

.field public static final STATE_IDLE:I = 0x0

.field public static final STATE_SETTLING:I = 0x2

.field public static final SWIPE_DIRECTION_ANY:I = 0x2

.field public static final SWIPE_DIRECTION_END_TO_START:I = 0x1

.field public static final SWIPE_DIRECTION_START_TO_END:I


# instance fields
.field private mAlphaEndSwipeDistance:F

.field private mAlphaStartSwipeDistance:F

.field private final mDragCallback:Landroid/support/v4/widget/ViewDragHelper$Callback;

.field private mDragDismissThreshold:F

.field private mIgnoreEvents:Z

.field private mListener:Landroid/support/design/widget/SwipeDismissBehavior$OnDismissListener;

.field private mSensitivity:F

.field private mSensitivitySet:Z

.field private mSwipeDirection:I

.field private mViewDragHelper:Landroid/support/v4/widget/ViewDragHelper;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .local p0, "this":Landroid/support/design/widget/SwipeDismissBehavior;, "Landroid/support/design/widget/SwipeDismissBehavior<TV;>;"
    const/high16 v2, 0x3f000000    # 0.5f

    const/4 v1, 0x0

    .line 35
    invoke-direct {p0}, Landroid/support/design/widget/CoordinatorLayout$Behavior;-><init>()V

    .line 84
    iput v1, p0, Landroid/support/design/widget/SwipeDismissBehavior;->mSensitivity:F

    .line 87
    const/4 v0, 0x2

    iput v0, p0, Landroid/support/design/widget/SwipeDismissBehavior;->mSwipeDirection:I

    .line 88
    iput v2, p0, Landroid/support/design/widget/SwipeDismissBehavior;->mDragDismissThreshold:F

    .line 89
    iput v1, p0, Landroid/support/design/widget/SwipeDismissBehavior;->mAlphaStartSwipeDistance:F

    .line 90
    iput v2, p0, Landroid/support/design/widget/SwipeDismissBehavior;->mAlphaEndSwipeDistance:F

    .line 212
    new-instance v0, Landroid/support/design/widget/SwipeDismissBehavior$1;

    invoke-direct {v0, p0}, Landroid/support/design/widget/SwipeDismissBehavior$1;-><init>(Landroid/support/design/widget/SwipeDismissBehavior;)V

    iput-object v0, p0, Landroid/support/design/widget/SwipeDismissBehavior;->mDragCallback:Landroid/support/v4/widget/ViewDragHelper$Callback;

    .line 348
    return-void
.end method

.method static synthetic access$000(Landroid/support/design/widget/SwipeDismissBehavior;)Landroid/support/design/widget/SwipeDismissBehavior$OnDismissListener;
    .locals 1
    .param p0, "x0"    # Landroid/support/design/widget/SwipeDismissBehavior;

    .prologue
    .line 35
    iget-object v0, p0, Landroid/support/design/widget/SwipeDismissBehavior;->mListener:Landroid/support/design/widget/SwipeDismissBehavior$OnDismissListener;

    return-object v0
.end method

.method static synthetic access$100(Landroid/support/design/widget/SwipeDismissBehavior;)Landroid/support/v4/widget/ViewDragHelper;
    .locals 1
    .param p0, "x0"    # Landroid/support/design/widget/SwipeDismissBehavior;

    .prologue
    .line 35
    iget-object v0, p0, Landroid/support/design/widget/SwipeDismissBehavior;->mViewDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    return-object v0
.end method

.method static synthetic access$200(Landroid/support/design/widget/SwipeDismissBehavior;)I
    .locals 1
    .param p0, "x0"    # Landroid/support/design/widget/SwipeDismissBehavior;

    .prologue
    .line 35
    iget v0, p0, Landroid/support/design/widget/SwipeDismissBehavior;->mSwipeDirection:I

    return v0
.end method

.method static synthetic access$300(Landroid/support/design/widget/SwipeDismissBehavior;)F
    .locals 1
    .param p0, "x0"    # Landroid/support/design/widget/SwipeDismissBehavior;

    .prologue
    .line 35
    iget v0, p0, Landroid/support/design/widget/SwipeDismissBehavior;->mDragDismissThreshold:F

    return v0
.end method

.method static synthetic access$400(III)I
    .locals 1
    .param p0, "x0"    # I
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 35
    invoke-static {p0, p1, p2}, Landroid/support/design/widget/SwipeDismissBehavior;->clamp(III)I

    move-result v0

    return v0
.end method

.method static synthetic access$500(Landroid/support/design/widget/SwipeDismissBehavior;)F
    .locals 1
    .param p0, "x0"    # Landroid/support/design/widget/SwipeDismissBehavior;

    .prologue
    .line 35
    iget v0, p0, Landroid/support/design/widget/SwipeDismissBehavior;->mAlphaStartSwipeDistance:F

    return v0
.end method

.method static synthetic access$600(Landroid/support/design/widget/SwipeDismissBehavior;)F
    .locals 1
    .param p0, "x0"    # Landroid/support/design/widget/SwipeDismissBehavior;

    .prologue
    .line 35
    iget v0, p0, Landroid/support/design/widget/SwipeDismissBehavior;->mAlphaEndSwipeDistance:F

    return v0
.end method

.method static synthetic access$700(FFF)F
    .locals 1
    .param p0, "x0"    # F
    .param p1, "x1"    # F
    .param p2, "x2"    # F

    .prologue
    .line 35
    invoke-static {p0, p1, p2}, Landroid/support/design/widget/SwipeDismissBehavior;->clamp(FFF)F

    move-result v0

    return v0
.end method

.method private static clamp(FFF)F
    .locals 1
    .param p0, "min"    # F
    .param p1, "value"    # F
    .param p2, "max"    # F

    .prologue
    .line 370
    invoke-static {p0, p1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-static {v0, p2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    return v0
.end method

.method private static clamp(III)I
    .locals 1
    .param p0, "min"    # I
    .param p1, "value"    # I
    .param p2, "max"    # I

    .prologue
    .line 374
    invoke-static {p0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method private ensureViewDragHelper(Landroid/view/ViewGroup;)V
    .locals 2
    .param p1, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 341
    .local p0, "this":Landroid/support/design/widget/SwipeDismissBehavior;, "Landroid/support/design/widget/SwipeDismissBehavior<TV;>;"
    iget-object v0, p0, Landroid/support/design/widget/SwipeDismissBehavior;->mViewDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    if-nez v0, :cond_0

    .line 342
    iget-boolean v0, p0, Landroid/support/design/widget/SwipeDismissBehavior;->mSensitivitySet:Z

    if-eqz v0, :cond_1

    iget v0, p0, Landroid/support/design/widget/SwipeDismissBehavior;->mSensitivity:F

    iget-object v1, p0, Landroid/support/design/widget/SwipeDismissBehavior;->mDragCallback:Landroid/support/v4/widget/ViewDragHelper$Callback;

    invoke-static {p1, v0, v1}, Landroid/support/v4/widget/ViewDragHelper;->create(Landroid/view/ViewGroup;FLandroid/support/v4/widget/ViewDragHelper$Callback;)Landroid/support/v4/widget/ViewDragHelper;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Landroid/support/design/widget/SwipeDismissBehavior;->mViewDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    .line 346
    :cond_0
    return-void

    .line 342
    :cond_1
    iget-object v0, p0, Landroid/support/design/widget/SwipeDismissBehavior;->mDragCallback:Landroid/support/v4/widget/ViewDragHelper$Callback;

    invoke-static {p1, v0}, Landroid/support/v4/widget/ViewDragHelper;->create(Landroid/view/ViewGroup;Landroid/support/v4/widget/ViewDragHelper$Callback;)Landroid/support/v4/widget/ViewDragHelper;

    move-result-object v0

    goto :goto_0
.end method

.method static fraction(FFF)F
    .locals 2
    .param p0, "startValue"    # F
    .param p1, "endValue"    # F
    .param p2, "value"    # F

    .prologue
    .line 391
    sub-float v0, p2, p0

    sub-float v1, p1, p0

    div-float/2addr v0, v1

    return v0
.end method


# virtual methods
.method public canSwipeDismissView(Landroid/view/View;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 209
    .local p0, "this":Landroid/support/design/widget/SwipeDismissBehavior;, "Landroid/support/design/widget/SwipeDismissBehavior<TV;>;"
    const/4 v0, 0x1

    return v0
.end method

.method public getDragState()I
    .locals 1

    .prologue
    .line 384
    .local p0, "this":Landroid/support/design/widget/SwipeDismissBehavior;, "Landroid/support/design/widget/SwipeDismissBehavior<TV;>;"
    iget-object v0, p0, Landroid/support/design/widget/SwipeDismissBehavior;->mViewDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/SwipeDismissBehavior;->mViewDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v0}, Landroid/support/v4/widget/ViewDragHelper;->getViewDragState()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "parent"    # Landroid/support/design/widget/CoordinatorLayout;
    .param p3, "event"    # Landroid/view/MotionEvent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/MotionEvent;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Landroid/support/design/widget/SwipeDismissBehavior;, "Landroid/support/design/widget/SwipeDismissBehavior<TV;>;"
    .local p2, "child":Landroid/view/View;, "TV;"
    const/4 v1, 0x0

    .line 170
    invoke-static {p3}, Landroid/support/v4/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 180
    :pswitch_0
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1, p2, v0, v2}, Landroid/support/design/widget/CoordinatorLayout;->isPointInChildBounds(Landroid/view/View;II)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Landroid/support/design/widget/SwipeDismissBehavior;->mIgnoreEvents:Z

    .line 185
    :cond_0
    iget-boolean v0, p0, Landroid/support/design/widget/SwipeDismissBehavior;->mIgnoreEvents:Z

    if-eqz v0, :cond_2

    .line 190
    :goto_1
    return v1

    .line 174
    :pswitch_1
    iget-boolean v0, p0, Landroid/support/design/widget/SwipeDismissBehavior;->mIgnoreEvents:Z

    if-eqz v0, :cond_0

    .line 175
    iput-boolean v1, p0, Landroid/support/design/widget/SwipeDismissBehavior;->mIgnoreEvents:Z

    goto :goto_1

    :cond_1
    move v0, v1

    .line 180
    goto :goto_0

    .line 189
    :cond_2
    invoke-direct {p0, p1}, Landroid/support/design/widget/SwipeDismissBehavior;->ensureViewDragHelper(Landroid/view/ViewGroup;)V

    .line 190
    iget-object v0, p0, Landroid/support/design/widget/SwipeDismissBehavior;->mViewDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v0, p3}, Landroid/support/v4/widget/ViewDragHelper;->shouldInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_1

    .line 170
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "parent"    # Landroid/support/design/widget/CoordinatorLayout;
    .param p3, "event"    # Landroid/view/MotionEvent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/MotionEvent;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 195
    .local p0, "this":Landroid/support/design/widget/SwipeDismissBehavior;, "Landroid/support/design/widget/SwipeDismissBehavior<TV;>;"
    .local p2, "child":Landroid/view/View;, "TV;"
    iget-object v0, p0, Landroid/support/design/widget/SwipeDismissBehavior;->mViewDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    if-eqz v0, :cond_0

    .line 196
    iget-object v0, p0, Landroid/support/design/widget/SwipeDismissBehavior;->mViewDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v0, p3}, Landroid/support/v4/widget/ViewDragHelper;->processTouchEvent(Landroid/view/MotionEvent;)V

    .line 197
    const/4 v0, 0x1

    .line 199
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDragDismissDistance(F)V
    .locals 2
    .param p1, "distance"    # F

    .prologue
    .line 135
    .local p0, "this":Landroid/support/design/widget/SwipeDismissBehavior;, "Landroid/support/design/widget/SwipeDismissBehavior<TV;>;"
    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, p1, v1}, Landroid/support/design/widget/SwipeDismissBehavior;->clamp(FFF)F

    move-result v0

    iput v0, p0, Landroid/support/design/widget/SwipeDismissBehavior;->mDragDismissThreshold:F

    .line 136
    return-void
.end method

.method public setEndAlphaSwipeDistance(F)V
    .locals 2
    .param p1, "fraction"    # F

    .prologue
    .line 153
    .local p0, "this":Landroid/support/design/widget/SwipeDismissBehavior;, "Landroid/support/design/widget/SwipeDismissBehavior<TV;>;"
    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, p1, v1}, Landroid/support/design/widget/SwipeDismissBehavior;->clamp(FFF)F

    move-result v0

    iput v0, p0, Landroid/support/design/widget/SwipeDismissBehavior;->mAlphaEndSwipeDistance:F

    .line 154
    return-void
.end method

.method public setListener(Landroid/support/design/widget/SwipeDismissBehavior$OnDismissListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/support/design/widget/SwipeDismissBehavior$OnDismissListener;

    .prologue
    .line 116
    .local p0, "this":Landroid/support/design/widget/SwipeDismissBehavior;, "Landroid/support/design/widget/SwipeDismissBehavior<TV;>;"
    iput-object p1, p0, Landroid/support/design/widget/SwipeDismissBehavior;->mListener:Landroid/support/design/widget/SwipeDismissBehavior$OnDismissListener;

    .line 117
    return-void
.end method

.method public setSensitivity(F)V
    .locals 1
    .param p1, "sensitivity"    # F

    .prologue
    .line 164
    .local p0, "this":Landroid/support/design/widget/SwipeDismissBehavior;, "Landroid/support/design/widget/SwipeDismissBehavior<TV;>;"
    iput p1, p0, Landroid/support/design/widget/SwipeDismissBehavior;->mSensitivity:F

    .line 165
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/design/widget/SwipeDismissBehavior;->mSensitivitySet:Z

    .line 166
    return-void
.end method

.method public setStartAlphaSwipeDistance(F)V
    .locals 2
    .param p1, "fraction"    # F

    .prologue
    .line 144
    .local p0, "this":Landroid/support/design/widget/SwipeDismissBehavior;, "Landroid/support/design/widget/SwipeDismissBehavior<TV;>;"
    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, p1, v1}, Landroid/support/design/widget/SwipeDismissBehavior;->clamp(FFF)F

    move-result v0

    iput v0, p0, Landroid/support/design/widget/SwipeDismissBehavior;->mAlphaStartSwipeDistance:F

    .line 145
    return-void
.end method

.method public setSwipeDirection(I)V
    .locals 0
    .param p1, "direction"    # I

    .prologue
    .line 126
    .local p0, "this":Landroid/support/design/widget/SwipeDismissBehavior;, "Landroid/support/design/widget/SwipeDismissBehavior<TV;>;"
    iput p1, p0, Landroid/support/design/widget/SwipeDismissBehavior;->mSwipeDirection:I

    .line 127
    return-void
.end method
