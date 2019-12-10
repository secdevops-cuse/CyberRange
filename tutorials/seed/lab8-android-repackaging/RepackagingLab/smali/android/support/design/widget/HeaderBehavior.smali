.class abstract Landroid/support/design/widget/HeaderBehavior;
.super Landroid/support/design/widget/ViewOffsetBehavior;
.source "HeaderBehavior.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/design/widget/HeaderBehavior$FlingRunnable;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Landroid/view/View;",
        ">",
        "Landroid/support/design/widget/ViewOffsetBehavior",
        "<TV;>;"
    }
.end annotation


# static fields
.field private static final INVALID_POINTER:I = -0x1


# instance fields
.field private mActivePointerId:I

.field private mFlingRunnable:Ljava/lang/Runnable;

.field private mIsBeingDragged:Z

.field private mLastMotionY:I

.field private mScroller:Landroid/support/v4/widget/ScrollerCompat;

.field private mTouchSlop:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .local p0, "this":Landroid/support/design/widget/HeaderBehavior;, "Landroid/support/design/widget/HeaderBehavior<TV;>;"
    const/4 v0, -0x1

    .line 48
    invoke-direct {p0}, Landroid/support/design/widget/ViewOffsetBehavior;-><init>()V

    .line 43
    iput v0, p0, Landroid/support/design/widget/HeaderBehavior;->mActivePointerId:I

    .line 45
    iput v0, p0, Landroid/support/design/widget/HeaderBehavior;->mTouchSlop:I

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .local p0, "this":Landroid/support/design/widget/HeaderBehavior;, "Landroid/support/design/widget/HeaderBehavior<TV;>;"
    const/4 v0, -0x1

    .line 51
    invoke-direct {p0, p1, p2}, Landroid/support/design/widget/ViewOffsetBehavior;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    iput v0, p0, Landroid/support/design/widget/HeaderBehavior;->mActivePointerId:I

    .line 45
    iput v0, p0, Landroid/support/design/widget/HeaderBehavior;->mTouchSlop:I

    .line 52
    return-void
.end method

.method static synthetic access$000(Landroid/support/design/widget/HeaderBehavior;)Landroid/support/v4/widget/ScrollerCompat;
    .locals 1
    .param p0, "x0"    # Landroid/support/design/widget/HeaderBehavior;

    .prologue
    .line 35
    iget-object v0, p0, Landroid/support/design/widget/HeaderBehavior;->mScroller:Landroid/support/v4/widget/ScrollerCompat;

    return-object v0
.end method

.method private ensureVelocityTracker()V
    .locals 1

    .prologue
    .line 273
    .local p0, "this":Landroid/support/design/widget/HeaderBehavior;, "Landroid/support/design/widget/HeaderBehavior<TV;>;"
    iget-object v0, p0, Landroid/support/design/widget/HeaderBehavior;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 274
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Landroid/support/design/widget/HeaderBehavior;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 276
    :cond_0
    return-void
.end method


# virtual methods
.method canDragView(Landroid/view/View;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)Z"
        }
    .end annotation

    .prologue
    .line 258
    .local p0, "this":Landroid/support/design/widget/HeaderBehavior;, "Landroid/support/design/widget/HeaderBehavior<TV;>;"
    .local p1, "view":Landroid/view/View;, "TV;"
    const/4 v0, 0x0

    return v0
.end method

.method final fling(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;IIF)Z
    .locals 9
    .param p1, "coordinatorLayout"    # Landroid/support/design/widget/CoordinatorLayout;
    .param p3, "minOffset"    # I
    .param p4, "maxOffset"    # I
    .param p5, "velocityY"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/CoordinatorLayout;",
            "TV;IIF)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Landroid/support/design/widget/HeaderBehavior;, "Landroid/support/design/widget/HeaderBehavior<TV;>;"
    .local p2, "layout":Landroid/view/View;, "TV;"
    const/4 v1, 0x0

    .line 231
    iget-object v0, p0, Landroid/support/design/widget/HeaderBehavior;->mFlingRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 232
    iget-object v0, p0, Landroid/support/design/widget/HeaderBehavior;->mFlingRunnable:Ljava/lang/Runnable;

    invoke-virtual {p2, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 233
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/design/widget/HeaderBehavior;->mFlingRunnable:Ljava/lang/Runnable;

    .line 236
    :cond_0
    iget-object v0, p0, Landroid/support/design/widget/HeaderBehavior;->mScroller:Landroid/support/v4/widget/ScrollerCompat;

    if-nez v0, :cond_1

    .line 237
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/widget/ScrollerCompat;->create(Landroid/content/Context;)Landroid/support/v4/widget/ScrollerCompat;

    move-result-object v0

    iput-object v0, p0, Landroid/support/design/widget/HeaderBehavior;->mScroller:Landroid/support/v4/widget/ScrollerCompat;

    .line 240
    :cond_1
    iget-object v0, p0, Landroid/support/design/widget/HeaderBehavior;->mScroller:Landroid/support/v4/widget/ScrollerCompat;

    invoke-virtual {p0}, Landroid/support/design/widget/HeaderBehavior;->getTopAndBottomOffset()I

    move-result v2

    invoke-static {p5}, Ljava/lang/Math;->round(F)I

    move-result v4

    move v3, v1

    move v5, v1

    move v6, v1

    move v7, p3

    move v8, p4

    invoke-virtual/range {v0 .. v8}, Landroid/support/v4/widget/ScrollerCompat;->fling(IIIIIIII)V

    .line 246
    iget-object v0, p0, Landroid/support/design/widget/HeaderBehavior;->mScroller:Landroid/support/v4/widget/ScrollerCompat;

    invoke-virtual {v0}, Landroid/support/v4/widget/ScrollerCompat;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 247
    new-instance v0, Landroid/support/design/widget/HeaderBehavior$FlingRunnable;

    invoke-direct {v0, p0, p1, p2}, Landroid/support/design/widget/HeaderBehavior$FlingRunnable;-><init>(Landroid/support/design/widget/HeaderBehavior;Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;)V

    iput-object v0, p0, Landroid/support/design/widget/HeaderBehavior;->mFlingRunnable:Ljava/lang/Runnable;

    .line 248
    iget-object v0, p0, Landroid/support/design/widget/HeaderBehavior;->mFlingRunnable:Ljava/lang/Runnable;

    invoke-static {p2, v0}, Landroid/support/v4/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 249
    const/4 v1, 0x1

    .line 251
    :cond_2
    return v1
.end method

.method getMaxDragOffset(Landroid/view/View;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)I"
        }
    .end annotation

    .prologue
    .line 265
    .local p0, "this":Landroid/support/design/widget/HeaderBehavior;, "Landroid/support/design/widget/HeaderBehavior<TV;>;"
    .local p1, "view":Landroid/view/View;, "TV;"
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    neg-int v0, v0

    return v0
.end method

.method getScrollRangeForDragFling(Landroid/view/View;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)I"
        }
    .end annotation

    .prologue
    .line 269
    .local p0, "this":Landroid/support/design/widget/HeaderBehavior;, "Landroid/support/design/widget/HeaderBehavior<TV;>;"
    .local p1, "view":Landroid/view/View;, "TV;"
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    return v0
.end method

.method getTopBottomOffsetForScrollingSibling()I
    .locals 1

    .prologue
    .line 220
    .local p0, "this":Landroid/support/design/widget/HeaderBehavior;, "Landroid/support/design/widget/HeaderBehavior<TV;>;"
    invoke-virtual {p0}, Landroid/support/design/widget/HeaderBehavior;->getTopAndBottomOffset()I

    move-result v0

    return v0
.end method

.method public onInterceptTouchEvent(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 10
    .param p1, "parent"    # Landroid/support/design/widget/CoordinatorLayout;
    .param p3, "ev"    # Landroid/view/MotionEvent;
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
    .local p0, "this":Landroid/support/design/widget/HeaderBehavior;, "Landroid/support/design/widget/HeaderBehavior<TV;>;"
    .local p2, "child":Landroid/view/View;, "TV;"
    const/4 v6, 0x1

    const/4 v9, 0x0

    const/4 v8, -0x1

    .line 56
    iget v7, p0, Landroid/support/design/widget/HeaderBehavior;->mTouchSlop:I

    if-gez v7, :cond_0

    .line 57
    invoke-virtual {p1}, Landroid/support/design/widget/CoordinatorLayout;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v7

    iput v7, p0, Landroid/support/design/widget/HeaderBehavior;->mTouchSlop:I

    .line 60
    :cond_0
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 63
    .local v0, "action":I
    const/4 v7, 0x2

    if-ne v0, v7, :cond_1

    iget-boolean v7, p0, Landroid/support/design/widget/HeaderBehavior;->mIsBeingDragged:Z

    if-eqz v7, :cond_1

    .line 116
    :goto_0
    return v6

    .line 67
    :cond_1
    invoke-static {p3}, Landroid/support/v4/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    move-result v7

    packed-switch v7, :pswitch_data_0

    .line 112
    :cond_2
    :goto_1
    iget-object v6, p0, Landroid/support/design/widget/HeaderBehavior;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v6, :cond_3

    .line 113
    iget-object v6, p0, Landroid/support/design/widget/HeaderBehavior;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v6, p3}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 116
    :cond_3
    iget-boolean v6, p0, Landroid/support/design/widget/HeaderBehavior;->mIsBeingDragged:Z

    goto :goto_0

    .line 69
    :pswitch_0
    iput-boolean v9, p0, Landroid/support/design/widget/HeaderBehavior;->mIsBeingDragged:Z

    .line 70
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    float-to-int v3, v6

    .line 71
    .local v3, "x":I
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    float-to-int v4, v6

    .line 72
    .local v4, "y":I
    invoke-virtual {p0, p2}, Landroid/support/design/widget/HeaderBehavior;->canDragView(Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {p1, p2, v3, v4}, Landroid/support/design/widget/CoordinatorLayout;->isPointInChildBounds(Landroid/view/View;II)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 73
    iput v4, p0, Landroid/support/design/widget/HeaderBehavior;->mLastMotionY:I

    .line 74
    invoke-static {p3, v9}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v6

    iput v6, p0, Landroid/support/design/widget/HeaderBehavior;->mActivePointerId:I

    .line 75
    invoke-direct {p0}, Landroid/support/design/widget/HeaderBehavior;->ensureVelocityTracker()V

    goto :goto_1

    .line 81
    .end local v3    # "x":I
    .end local v4    # "y":I
    :pswitch_1
    iget v1, p0, Landroid/support/design/widget/HeaderBehavior;->mActivePointerId:I

    .line 82
    .local v1, "activePointerId":I
    if-eq v1, v8, :cond_2

    .line 86
    invoke-static {p3, v1}, Landroid/support/v4/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v2

    .line 87
    .local v2, "pointerIndex":I
    if-eq v2, v8, :cond_2

    .line 91
    invoke-static {p3, v2}, Landroid/support/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result v7

    float-to-int v4, v7

    .line 92
    .restart local v4    # "y":I
    iget v7, p0, Landroid/support/design/widget/HeaderBehavior;->mLastMotionY:I

    sub-int v7, v4, v7

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v5

    .line 93
    .local v5, "yDiff":I
    iget v7, p0, Landroid/support/design/widget/HeaderBehavior;->mTouchSlop:I

    if-le v5, v7, :cond_2

    .line 94
    iput-boolean v6, p0, Landroid/support/design/widget/HeaderBehavior;->mIsBeingDragged:Z

    .line 95
    iput v4, p0, Landroid/support/design/widget/HeaderBehavior;->mLastMotionY:I

    goto :goto_1

    .line 102
    .end local v1    # "activePointerId":I
    .end local v2    # "pointerIndex":I
    .end local v4    # "y":I
    .end local v5    # "yDiff":I
    :pswitch_2
    iput-boolean v9, p0, Landroid/support/design/widget/HeaderBehavior;->mIsBeingDragged:Z

    .line 103
    iput v8, p0, Landroid/support/design/widget/HeaderBehavior;->mActivePointerId:I

    .line 104
    iget-object v6, p0, Landroid/support/design/widget/HeaderBehavior;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v6, :cond_2

    .line 105
    iget-object v6, p0, Landroid/support/design/widget/HeaderBehavior;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v6}, Landroid/view/VelocityTracker;->recycle()V

    .line 106
    const/4 v6, 0x0

    iput-object v6, p0, Landroid/support/design/widget/HeaderBehavior;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto :goto_1

    .line 67
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 14
    .param p1, "parent"    # Landroid/support/design/widget/CoordinatorLayout;
    .param p3, "ev"    # Landroid/view/MotionEvent;
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
    .line 121
    .local p0, "this":Landroid/support/design/widget/HeaderBehavior;, "Landroid/support/design/widget/HeaderBehavior<TV;>;"
    .local p2, "child":Landroid/view/View;, "TV;"
    iget v1, p0, Landroid/support/design/widget/HeaderBehavior;->mTouchSlop:I

    if-gez v1, :cond_0

    .line 122
    invoke-virtual {p1}, Landroid/support/design/widget/CoordinatorLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Landroid/support/design/widget/HeaderBehavior;->mTouchSlop:I

    .line 125
    :cond_0
    invoke-static/range {p3 .. p3}, Landroid/support/v4/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 187
    :cond_1
    :goto_0
    iget-object v1, p0, Landroid/support/design/widget/HeaderBehavior;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v1, :cond_2

    .line 188
    iget-object v1, p0, Landroid/support/design/widget/HeaderBehavior;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v0, p3

    invoke-virtual {v1, v0}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 191
    :cond_2
    const/4 v1, 0x1

    :goto_1
    return v1

    .line 127
    :pswitch_0
    invoke-virtual/range {p3 .. p3}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v12, v1

    .line 128
    .local v12, "x":I
    invoke-virtual/range {p3 .. p3}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v13, v1

    .line 130
    .local v13, "y":I
    move-object/from16 v0, p2

    invoke-virtual {p1, v0, v12, v13}, Landroid/support/design/widget/CoordinatorLayout;->isPointInChildBounds(Landroid/view/View;II)Z

    move-result v1

    if-eqz v1, :cond_3

    move-object/from16 v0, p2

    invoke-virtual {p0, v0}, Landroid/support/design/widget/HeaderBehavior;->canDragView(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 131
    iput v13, p0, Landroid/support/design/widget/HeaderBehavior;->mLastMotionY:I

    .line 132
    const/4 v1, 0x0

    move-object/from16 v0, p3

    invoke-static {v0, v1}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v1

    iput v1, p0, Landroid/support/design/widget/HeaderBehavior;->mActivePointerId:I

    .line 133
    invoke-direct {p0}, Landroid/support/design/widget/HeaderBehavior;->ensureVelocityTracker()V

    goto :goto_0

    .line 135
    :cond_3
    const/4 v1, 0x0

    goto :goto_1

    .line 141
    .end local v12    # "x":I
    .end local v13    # "y":I
    :pswitch_1
    iget v1, p0, Landroid/support/design/widget/HeaderBehavior;->mActivePointerId:I

    move-object/from16 v0, p3

    invoke-static {v0, v1}, Landroid/support/v4/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v11

    .line 143
    .local v11, "activePointerIndex":I
    const/4 v1, -0x1

    if-ne v11, v1, :cond_4

    .line 144
    const/4 v1, 0x0

    goto :goto_1

    .line 147
    :cond_4
    move-object/from16 v0, p3

    invoke-static {v0, v11}, Landroid/support/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result v1

    float-to-int v13, v1

    .line 148
    .restart local v13    # "y":I
    iget v1, p0, Landroid/support/design/widget/HeaderBehavior;->mLastMotionY:I

    sub-int v4, v1, v13

    .line 150
    .local v4, "dy":I
    iget-boolean v1, p0, Landroid/support/design/widget/HeaderBehavior;->mIsBeingDragged:Z

    if-nez v1, :cond_5

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v2, p0, Landroid/support/design/widget/HeaderBehavior;->mTouchSlop:I

    if-le v1, v2, :cond_5

    .line 151
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/support/design/widget/HeaderBehavior;->mIsBeingDragged:Z

    .line 152
    if-lez v4, :cond_6

    .line 153
    iget v1, p0, Landroid/support/design/widget/HeaderBehavior;->mTouchSlop:I

    sub-int/2addr v4, v1

    .line 159
    :cond_5
    :goto_2
    iget-boolean v1, p0, Landroid/support/design/widget/HeaderBehavior;->mIsBeingDragged:Z

    if-eqz v1, :cond_1

    .line 160
    iput v13, p0, Landroid/support/design/widget/HeaderBehavior;->mLastMotionY:I

    .line 162
    move-object/from16 v0, p2

    invoke-virtual {p0, v0}, Landroid/support/design/widget/HeaderBehavior;->getMaxDragOffset(Landroid/view/View;)I

    move-result v5

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p2

    invoke-virtual/range {v1 .. v6}, Landroid/support/design/widget/HeaderBehavior;->scroll(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;III)I

    goto :goto_0

    .line 155
    :cond_6
    iget v1, p0, Landroid/support/design/widget/HeaderBehavior;->mTouchSlop:I

    add-int/2addr v4, v1

    goto :goto_2

    .line 168
    .end local v4    # "dy":I
    .end local v11    # "activePointerIndex":I
    .end local v13    # "y":I
    :pswitch_2
    iget-object v1, p0, Landroid/support/design/widget/HeaderBehavior;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v1, :cond_7

    .line 169
    iget-object v1, p0, Landroid/support/design/widget/HeaderBehavior;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v0, p3

    invoke-virtual {v1, v0}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 170
    iget-object v1, p0, Landroid/support/design/widget/HeaderBehavior;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v2, 0x3e8

    invoke-virtual {v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 171
    iget-object v1, p0, Landroid/support/design/widget/HeaderBehavior;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v2, p0, Landroid/support/design/widget/HeaderBehavior;->mActivePointerId:I

    invoke-static {v1, v2}, Landroid/support/v4/view/VelocityTrackerCompat;->getYVelocity(Landroid/view/VelocityTracker;I)F

    move-result v10

    .line 173
    .local v10, "yvel":F
    move-object/from16 v0, p2

    invoke-virtual {p0, v0}, Landroid/support/design/widget/HeaderBehavior;->getScrollRangeForDragFling(Landroid/view/View;)I

    move-result v1

    neg-int v8, v1

    const/4 v9, 0x0

    move-object v5, p0

    move-object v6, p1

    move-object/from16 v7, p2

    invoke-virtual/range {v5 .. v10}, Landroid/support/design/widget/HeaderBehavior;->fling(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;IIF)Z

    .line 177
    .end local v10    # "yvel":F
    :cond_7
    :pswitch_3
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/support/design/widget/HeaderBehavior;->mIsBeingDragged:Z

    .line 178
    const/4 v1, -0x1

    iput v1, p0, Landroid/support/design/widget/HeaderBehavior;->mActivePointerId:I

    .line 179
    iget-object v1, p0, Landroid/support/design/widget/HeaderBehavior;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v1, :cond_1

    .line 180
    iget-object v1, p0, Landroid/support/design/widget/HeaderBehavior;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1}, Landroid/view/VelocityTracker;->recycle()V

    .line 181
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/support/design/widget/HeaderBehavior;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto/16 :goto_0

    .line 125
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method final scroll(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;III)I
    .locals 6
    .param p1, "coordinatorLayout"    # Landroid/support/design/widget/CoordinatorLayout;
    .param p3, "dy"    # I
    .param p4, "minOffset"    # I
    .param p5, "maxOffset"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/CoordinatorLayout;",
            "TV;III)I"
        }
    .end annotation

    .prologue
    .line 225
    .local p0, "this":Landroid/support/design/widget/HeaderBehavior;, "Landroid/support/design/widget/HeaderBehavior<TV;>;"
    .local p2, "header":Landroid/view/View;, "TV;"
    invoke-virtual {p0}, Landroid/support/design/widget/HeaderBehavior;->getTopBottomOffsetForScrollingSibling()I

    move-result v0

    sub-int v3, v0, p3

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/support/design/widget/HeaderBehavior;->setHeaderTopBottomOffset(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;III)I

    move-result v0

    return v0
.end method

.method setHeaderTopBottomOffset(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;I)I
    .locals 6
    .param p1, "parent"    # Landroid/support/design/widget/CoordinatorLayout;
    .param p3, "newOffset"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/CoordinatorLayout;",
            "TV;I)I"
        }
    .end annotation

    .prologue
    .line 195
    .local p0, "this":Landroid/support/design/widget/HeaderBehavior;, "Landroid/support/design/widget/HeaderBehavior<TV;>;"
    .local p2, "header":Landroid/view/View;, "TV;"
    const/high16 v4, -0x80000000

    const v5, 0x7fffffff

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Landroid/support/design/widget/HeaderBehavior;->setHeaderTopBottomOffset(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;III)I

    move-result v0

    return v0
.end method

.method setHeaderTopBottomOffset(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;III)I
    .locals 2
    .param p1, "parent"    # Landroid/support/design/widget/CoordinatorLayout;
    .param p3, "newOffset"    # I
    .param p4, "minOffset"    # I
    .param p5, "maxOffset"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/CoordinatorLayout;",
            "TV;III)I"
        }
    .end annotation

    .prologue
    .line 201
    .local p0, "this":Landroid/support/design/widget/HeaderBehavior;, "Landroid/support/design/widget/HeaderBehavior<TV;>;"
    .local p2, "header":Landroid/view/View;, "TV;"
    invoke-virtual {p0}, Landroid/support/design/widget/HeaderBehavior;->getTopAndBottomOffset()I

    move-result v1

    .line 202
    .local v1, "curOffset":I
    const/4 v0, 0x0

    .line 204
    .local v0, "consumed":I
    if-eqz p4, :cond_0

    if-lt v1, p4, :cond_0

    if-gt v1, p5, :cond_0

    .line 207
    invoke-static {p3, p4, p5}, Landroid/support/design/widget/MathUtils;->constrain(III)I

    move-result p3

    .line 209
    if-eq v1, p3, :cond_0

    .line 210
    invoke-virtual {p0, p3}, Landroid/support/design/widget/HeaderBehavior;->setTopAndBottomOffset(I)Z

    .line 212
    sub-int v0, v1, p3

    .line 216
    :cond_0
    return v0
.end method
