.class Landroid/support/v4/widget/ScrollerCompat$ScrollerCompatImplBase;
.super Ljava/lang/Object;
.source "ScrollerCompat.java"

# interfaces
.implements Landroid/support/v4/widget/ScrollerCompat$ScrollerCompatImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/widget/ScrollerCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ScrollerCompatImplBase"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abortAnimation(Ljava/lang/Object;)V
    .locals 0
    .param p1, "scroller"    # Ljava/lang/Object;

    .prologue
    .line 121
    check-cast p1, Landroid/widget/Scroller;

    .end local p1    # "scroller":Ljava/lang/Object;
    invoke-virtual {p1}, Landroid/widget/Scroller;->abortAnimation()V

    .line 122
    return-void
.end method

.method public computeScrollOffset(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "scroller"    # Ljava/lang/Object;

    .prologue
    .line 92
    move-object v0, p1

    check-cast v0, Landroid/widget/Scroller;

    .line 93
    .local v0, "s":Landroid/widget/Scroller;
    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v1

    return v1
.end method

.method public createScroller(Landroid/content/Context;Landroid/view/animation/Interpolator;)Ljava/lang/Object;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "interpolator"    # Landroid/view/animation/Interpolator;

    .prologue
    .line 66
    if-eqz p2, :cond_0

    new-instance v0, Landroid/widget/Scroller;

    invoke-direct {v0, p1, p2}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/widget/Scroller;

    invoke-direct {v0, p1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public fling(Ljava/lang/Object;IIIIIIII)V
    .locals 9
    .param p1, "scroller"    # Ljava/lang/Object;
    .param p2, "startX"    # I
    .param p3, "startY"    # I
    .param p4, "velX"    # I
    .param p5, "velY"    # I
    .param p6, "minX"    # I
    .param p7, "maxX"    # I
    .param p8, "minY"    # I
    .param p9, "maxY"    # I

    .prologue
    .line 110
    move-object v0, p1

    check-cast v0, Landroid/widget/Scroller;

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    move/from16 v8, p9

    invoke-virtual/range {v0 .. v8}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    .line 111
    return-void
.end method

.method public fling(Ljava/lang/Object;IIIIIIIIII)V
    .locals 9
    .param p1, "scroller"    # Ljava/lang/Object;
    .param p2, "startX"    # I
    .param p3, "startY"    # I
    .param p4, "velX"    # I
    .param p5, "velY"    # I
    .param p6, "minX"    # I
    .param p7, "maxX"    # I
    .param p8, "minY"    # I
    .param p9, "maxY"    # I
    .param p10, "overX"    # I
    .param p11, "overY"    # I

    .prologue
    .line 116
    move-object v0, p1

    check-cast v0, Landroid/widget/Scroller;

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    move/from16 v8, p9

    invoke-virtual/range {v0 .. v8}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    .line 117
    return-void
.end method

.method public getCurrVelocity(Ljava/lang/Object;)F
    .locals 1
    .param p1, "scroller"    # Ljava/lang/Object;

    .prologue
    .line 87
    const/4 v0, 0x0

    return v0
.end method

.method public getCurrX(Ljava/lang/Object;)I
    .locals 1
    .param p1, "scroller"    # Ljava/lang/Object;

    .prologue
    .line 77
    check-cast p1, Landroid/widget/Scroller;

    .end local p1    # "scroller":Ljava/lang/Object;
    invoke-virtual {p1}, Landroid/widget/Scroller;->getCurrX()I

    move-result v0

    return v0
.end method

.method public getCurrY(Ljava/lang/Object;)I
    .locals 1
    .param p1, "scroller"    # Ljava/lang/Object;

    .prologue
    .line 82
    check-cast p1, Landroid/widget/Scroller;

    .end local p1    # "scroller":Ljava/lang/Object;
    invoke-virtual {p1}, Landroid/widget/Scroller;->getCurrY()I

    move-result v0

    return v0
.end method

.method public getFinalX(Ljava/lang/Object;)I
    .locals 1
    .param p1, "scroller"    # Ljava/lang/Object;

    .prologue
    .line 143
    check-cast p1, Landroid/widget/Scroller;

    .end local p1    # "scroller":Ljava/lang/Object;
    invoke-virtual {p1}, Landroid/widget/Scroller;->getFinalX()I

    move-result v0

    return v0
.end method

.method public getFinalY(Ljava/lang/Object;)I
    .locals 1
    .param p1, "scroller"    # Ljava/lang/Object;

    .prologue
    .line 148
    check-cast p1, Landroid/widget/Scroller;

    .end local p1    # "scroller":Ljava/lang/Object;
    invoke-virtual {p1}, Landroid/widget/Scroller;->getFinalY()I

    move-result v0

    return v0
.end method

.method public isFinished(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "scroller"    # Ljava/lang/Object;

    .prologue
    .line 72
    check-cast p1, Landroid/widget/Scroller;

    .end local p1    # "scroller":Ljava/lang/Object;
    invoke-virtual {p1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    return v0
.end method

.method public isOverScrolled(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "scroller"    # Ljava/lang/Object;

    .prologue
    .line 138
    const/4 v0, 0x0

    return v0
.end method

.method public notifyHorizontalEdgeReached(Ljava/lang/Object;III)V
    .locals 0
    .param p1, "scroller"    # Ljava/lang/Object;
    .param p2, "startX"    # I
    .param p3, "finalX"    # I
    .param p4, "overX"    # I

    .prologue
    .line 128
    return-void
.end method

.method public notifyVerticalEdgeReached(Ljava/lang/Object;III)V
    .locals 0
    .param p1, "scroller"    # Ljava/lang/Object;
    .param p2, "startY"    # I
    .param p3, "finalY"    # I
    .param p4, "overY"    # I

    .prologue
    .line 133
    return-void
.end method

.method public springBack(Ljava/lang/Object;IIIIII)Z
    .locals 1
    .param p1, "scroller"    # Ljava/lang/Object;
    .param p2, "startX"    # I
    .param p3, "startY"    # I
    .param p4, "minX"    # I
    .param p5, "maxX"    # I
    .param p6, "minY"    # I
    .param p7, "maxY"    # I

    .prologue
    .line 154
    const/4 v0, 0x0

    return v0
.end method

.method public startScroll(Ljava/lang/Object;IIII)V
    .locals 0
    .param p1, "scroller"    # Ljava/lang/Object;
    .param p2, "startX"    # I
    .param p3, "startY"    # I
    .param p4, "dx"    # I
    .param p5, "dy"    # I

    .prologue
    .line 98
    check-cast p1, Landroid/widget/Scroller;

    .end local p1    # "scroller":Ljava/lang/Object;
    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/widget/Scroller;->startScroll(IIII)V

    .line 99
    return-void
.end method

.method public startScroll(Ljava/lang/Object;IIIII)V
    .locals 6
    .param p1, "scroller"    # Ljava/lang/Object;
    .param p2, "startX"    # I
    .param p3, "startY"    # I
    .param p4, "dx"    # I
    .param p5, "dy"    # I
    .param p6, "duration"    # I

    .prologue
    .line 104
    move-object v0, p1

    check-cast v0, Landroid/widget/Scroller;

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 105
    return-void
.end method
