.class public Landroid/support/v7/widget/ButtonBarLayout;
.super Landroid/widget/LinearLayout;
.source "ButtonBarLayout.java"


# instance fields
.field private mAllowStacking:Z

.field private mLastWidthSize:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    const/4 v1, -0x1

    iput v1, p0, Landroid/support/v7/widget/ButtonBarLayout;->mLastWidthSize:I

    .line 40
    sget-object v1, Landroid/support/v7/appcompat/R$styleable;->ButtonBarLayout:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 41
    .local v0, "ta":Landroid/content/res/TypedArray;
    sget v1, Landroid/support/v7/appcompat/R$styleable;->ButtonBarLayout_allowStacking:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Landroid/support/v7/widget/ButtonBarLayout;->mAllowStacking:Z

    .line 42
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 43
    return-void
.end method

.method private isStacked()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 108
    invoke-virtual {p0}, Landroid/support/v7/widget/ButtonBarLayout;->getOrientation()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setStacked(Z)V
    .locals 4
    .param p1, "stacked"    # Z

    .prologue
    .line 93
    if-eqz p1, :cond_1

    const/4 v3, 0x1

    :goto_0
    invoke-virtual {p0, v3}, Landroid/support/v7/widget/ButtonBarLayout;->setOrientation(I)V

    .line 94
    if-eqz p1, :cond_2

    const/4 v3, 0x5

    :goto_1
    invoke-virtual {p0, v3}, Landroid/support/v7/widget/ButtonBarLayout;->setGravity(I)V

    .line 95
    sget v3, Landroid/support/v7/appcompat/R$id;->spacer:I

    invoke-virtual {p0, v3}, Landroid/support/v7/widget/ButtonBarLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 96
    .local v2, "spacer":Landroid/view/View;
    if-eqz v2, :cond_0

    .line 97
    if-eqz p1, :cond_3

    const/16 v3, 0x8

    :goto_2
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 101
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/ButtonBarLayout;->getChildCount()I

    move-result v0

    .line 102
    .local v0, "childCount":I
    add-int/lit8 v1, v0, -0x2

    .local v1, "i":I
    :goto_3
    if-ltz v1, :cond_4

    .line 103
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/ButtonBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/support/v7/widget/ButtonBarLayout;->bringChildToFront(Landroid/view/View;)V

    .line 102
    add-int/lit8 v1, v1, -0x1

    goto :goto_3

    .line 93
    .end local v0    # "childCount":I
    .end local v1    # "i":I
    .end local v2    # "spacer":Landroid/view/View;
    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    .line 94
    :cond_2
    const/16 v3, 0x50

    goto :goto_1

    .line 97
    .restart local v2    # "spacer":Landroid/view/View;
    :cond_3
    const/4 v3, 0x4

    goto :goto_2

    .line 105
    .restart local v0    # "childCount":I
    .restart local v1    # "i":I
    :cond_4
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 7
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 57
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    .line 58
    .local v4, "widthSize":I
    iget-boolean v5, p0, Landroid/support/v7/widget/ButtonBarLayout;->mAllowStacking:Z

    if-eqz v5, :cond_1

    .line 59
    iget v5, p0, Landroid/support/v7/widget/ButtonBarLayout;->mLastWidthSize:I

    if-le v4, v5, :cond_0

    invoke-direct {p0}, Landroid/support/v7/widget/ButtonBarLayout;->isStacked()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 61
    const/4 v5, 0x0

    invoke-direct {p0, v5}, Landroid/support/v7/widget/ButtonBarLayout;->setStacked(Z)V

    .line 63
    :cond_0
    iput v4, p0, Landroid/support/v7/widget/ButtonBarLayout;->mLastWidthSize:I

    .line 65
    :cond_1
    const/4 v3, 0x0

    .line 70
    .local v3, "needsRemeasure":Z
    invoke-direct {p0}, Landroid/support/v7/widget/ButtonBarLayout;->isStacked()Z

    move-result v5

    if-nez v5, :cond_4

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    const/high16 v6, 0x40000000    # 2.0f

    if-ne v5, v6, :cond_4

    .line 71
    const/high16 v5, -0x80000000

    invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 73
    .local v0, "initialWidthMeasureSpec":I
    const/4 v3, 0x1

    .line 77
    :goto_0
    invoke-super {p0, v0, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 78
    iget-boolean v5, p0, Landroid/support/v7/widget/ButtonBarLayout;->mAllowStacking:Z

    if-eqz v5, :cond_2

    invoke-direct {p0}, Landroid/support/v7/widget/ButtonBarLayout;->isStacked()Z

    move-result v5

    if-nez v5, :cond_2

    .line 79
    invoke-virtual {p0}, Landroid/support/v7/widget/ButtonBarLayout;->getMeasuredWidthAndState()I

    move-result v1

    .line 80
    .local v1, "measuredWidth":I
    const/high16 v5, -0x1000000

    and-int v2, v1, v5

    .line 81
    .local v2, "measuredWidthState":I
    const/high16 v5, 0x1000000

    if-ne v2, v5, :cond_2

    .line 82
    const/4 v5, 0x1

    invoke-direct {p0, v5}, Landroid/support/v7/widget/ButtonBarLayout;->setStacked(Z)V

    .line 84
    const/4 v3, 0x1

    .line 87
    .end local v1    # "measuredWidth":I
    .end local v2    # "measuredWidthState":I
    :cond_2
    if-eqz v3, :cond_3

    .line 88
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 90
    :cond_3
    return-void

    .line 75
    .end local v0    # "initialWidthMeasureSpec":I
    :cond_4
    move v0, p1

    .restart local v0    # "initialWidthMeasureSpec":I
    goto :goto_0
.end method

.method public setAllowStacking(Z)V
    .locals 2
    .param p1, "allowStacking"    # Z

    .prologue
    .line 46
    iget-boolean v0, p0, Landroid/support/v7/widget/ButtonBarLayout;->mAllowStacking:Z

    if-eq v0, p1, :cond_1

    .line 47
    iput-boolean p1, p0, Landroid/support/v7/widget/ButtonBarLayout;->mAllowStacking:Z

    .line 48
    iget-boolean v0, p0, Landroid/support/v7/widget/ButtonBarLayout;->mAllowStacking:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/widget/ButtonBarLayout;->getOrientation()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 49
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/v7/widget/ButtonBarLayout;->setStacked(Z)V

    .line 51
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/ButtonBarLayout;->requestLayout()V

    .line 53
    :cond_1
    return-void
.end method
