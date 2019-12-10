.class abstract Landroid/support/design/widget/HeaderScrollingViewBehavior;
.super Landroid/support/design/widget/ViewOffsetBehavior;
.source "HeaderScrollingViewBehavior.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/design/widget/ViewOffsetBehavior",
        "<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/support/design/widget/ViewOffsetBehavior;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Landroid/support/design/widget/ViewOffsetBehavior;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    return-void
.end method


# virtual methods
.method abstract findFirstDependency(Ljava/util/List;)Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;)",
            "Landroid/view/View;"
        }
    .end annotation
.end method

.method getScrollRange(Landroid/view/View;)I
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 90
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    return v0
.end method

.method public onMeasureChild(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;IIII)Z
    .locals 11
    .param p1, "parent"    # Landroid/support/design/widget/CoordinatorLayout;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "parentWidthMeasureSpec"    # I
    .param p4, "widthUsed"    # I
    .param p5, "parentHeightMeasureSpec"    # I
    .param p6, "heightUsed"    # I

    .prologue
    .line 44
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v7, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 45
    .local v7, "childLpHeight":I
    const/4 v0, -0x1

    if-eq v7, v0, :cond_0

    const/4 v0, -0x2

    if-ne v7, v0, :cond_5

    .line 50
    :cond_0
    invoke-virtual {p1, p2}, Landroid/support/design/widget/CoordinatorLayout;->getDependencies(Landroid/view/View;)Ljava/util/List;

    move-result-object v8

    .line 51
    .local v8, "dependencies":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 53
    const/4 v0, 0x0

    .line 84
    .end local v8    # "dependencies":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    :goto_0
    return v0

    .line 56
    .restart local v8    # "dependencies":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    :cond_1
    invoke-virtual {p0, v8}, Landroid/support/design/widget/HeaderScrollingViewBehavior;->findFirstDependency(Ljava/util/List;)Landroid/view/View;

    move-result-object v9

    .line 57
    .local v9, "header":Landroid/view/View;
    if-eqz v9, :cond_5

    invoke-static {v9}, Landroid/support/v4/view/ViewCompat;->isLaidOut(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 58
    invoke-static {v9}, Landroid/support/v4/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 61
    const/4 v0, 0x1

    invoke-static {p2, v0}, Landroid/support/v4/view/ViewCompat;->setFitsSystemWindows(Landroid/view/View;Z)V

    .line 64
    :cond_2
    invoke-static/range {p5 .. p5}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v6

    .line 65
    .local v6, "availableHeight":I
    if-nez v6, :cond_3

    .line 67
    invoke-virtual {p1}, Landroid/support/design/widget/CoordinatorLayout;->getHeight()I

    move-result v6

    .line 70
    :cond_3
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    sub-int v0, v6, v0

    invoke-virtual {p0, v9}, Landroid/support/design/widget/HeaderScrollingViewBehavior;->getScrollRange(Landroid/view/View;)I

    move-result v1

    add-int v10, v0, v1

    .line 72
    .local v10, "height":I
    const/4 v0, -0x1

    if-ne v7, v0, :cond_4

    const/high16 v0, 0x40000000    # 2.0f

    :goto_1
    invoke-static {v10, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .local v4, "heightMeasureSpec":I
    move-object v0, p1

    move-object v1, p2

    move v2, p3

    move v3, p4

    move/from16 v5, p6

    .line 78
    invoke-virtual/range {v0 .. v5}, Landroid/support/design/widget/CoordinatorLayout;->onMeasureChild(Landroid/view/View;IIII)V

    .line 81
    const/4 v0, 0x1

    goto :goto_0

    .line 72
    .end local v4    # "heightMeasureSpec":I
    :cond_4
    const/high16 v0, -0x80000000

    goto :goto_1

    .line 84
    .end local v6    # "availableHeight":I
    .end local v8    # "dependencies":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    .end local v9    # "header":Landroid/view/View;
    .end local v10    # "height":I
    :cond_5
    const/4 v0, 0x0

    goto :goto_0
.end method
