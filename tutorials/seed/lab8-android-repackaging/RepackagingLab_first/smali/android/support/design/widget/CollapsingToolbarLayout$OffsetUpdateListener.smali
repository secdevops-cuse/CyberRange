.class Landroid/support/design/widget/CollapsingToolbarLayout$OffsetUpdateListener;
.super Ljava/lang/Object;
.source "CollapsingToolbarLayout.java"

# interfaces
.implements Landroid/support/design/widget/AppBarLayout$OnOffsetChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/widget/CollapsingToolbarLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OffsetUpdateListener"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/design/widget/CollapsingToolbarLayout;


# direct methods
.method private constructor <init>(Landroid/support/design/widget/CollapsingToolbarLayout;)V
    .locals 0

    .prologue
    .line 915
    iput-object p1, p0, Landroid/support/design/widget/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Landroid/support/design/widget/CollapsingToolbarLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/design/widget/CollapsingToolbarLayout;Landroid/support/design/widget/CollapsingToolbarLayout$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/support/design/widget/CollapsingToolbarLayout;
    .param p2, "x1"    # Landroid/support/design/widget/CollapsingToolbarLayout$1;

    .prologue
    .line 915
    invoke-direct {p0, p1}, Landroid/support/design/widget/CollapsingToolbarLayout$OffsetUpdateListener;-><init>(Landroid/support/design/widget/CollapsingToolbarLayout;)V

    return-void
.end method


# virtual methods
.method public onOffsetChanged(Landroid/support/design/widget/AppBarLayout;I)V
    .locals 12
    .param p1, "layout"    # Landroid/support/design/widget/AppBarLayout;
    .param p2, "verticalOffset"    # I

    .prologue
    const/4 v8, 0x0

    .line 918
    iget-object v9, p0, Landroid/support/design/widget/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Landroid/support/design/widget/CollapsingToolbarLayout;

    # setter for: Landroid/support/design/widget/CollapsingToolbarLayout;->mCurrentOffset:I
    invoke-static {v9, p2}, Landroid/support/design/widget/CollapsingToolbarLayout;->access$302(Landroid/support/design/widget/CollapsingToolbarLayout;I)I

    .line 920
    iget-object v9, p0, Landroid/support/design/widget/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Landroid/support/design/widget/CollapsingToolbarLayout;

    # getter for: Landroid/support/design/widget/CollapsingToolbarLayout;->mLastInsets:Landroid/support/v4/view/WindowInsetsCompat;
    invoke-static {v9}, Landroid/support/design/widget/CollapsingToolbarLayout;->access$000(Landroid/support/design/widget/CollapsingToolbarLayout;)Landroid/support/v4/view/WindowInsetsCompat;

    move-result-object v9

    if-eqz v9, :cond_1

    iget-object v9, p0, Landroid/support/design/widget/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Landroid/support/design/widget/CollapsingToolbarLayout;

    # getter for: Landroid/support/design/widget/CollapsingToolbarLayout;->mLastInsets:Landroid/support/v4/view/WindowInsetsCompat;
    invoke-static {v9}, Landroid/support/design/widget/CollapsingToolbarLayout;->access$000(Landroid/support/design/widget/CollapsingToolbarLayout;)Landroid/support/v4/view/WindowInsetsCompat;

    move-result-object v9

    invoke-virtual {v9}, Landroid/support/v4/view/WindowInsetsCompat;->getSystemWindowInsetTop()I

    move-result v3

    .line 921
    .local v3, "insetTop":I
    :goto_0
    invoke-virtual {p1}, Landroid/support/design/widget/AppBarLayout;->getTotalScrollRange()I

    move-result v6

    .line 923
    .local v6, "scrollRange":I
    const/4 v2, 0x0

    .local v2, "i":I
    iget-object v9, p0, Landroid/support/design/widget/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Landroid/support/design/widget/CollapsingToolbarLayout;

    invoke-virtual {v9}, Landroid/support/design/widget/CollapsingToolbarLayout;->getChildCount()I

    move-result v7

    .local v7, "z":I
    :goto_1
    if-ge v2, v7, :cond_2

    .line 924
    iget-object v9, p0, Landroid/support/design/widget/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Landroid/support/design/widget/CollapsingToolbarLayout;

    invoke-virtual {v9, v2}, Landroid/support/design/widget/CollapsingToolbarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 925
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/support/design/widget/CollapsingToolbarLayout$LayoutParams;

    .line 926
    .local v4, "lp":Landroid/support/design/widget/CollapsingToolbarLayout$LayoutParams;
    # invokes: Landroid/support/design/widget/CollapsingToolbarLayout;->getViewOffsetHelper(Landroid/view/View;)Landroid/support/design/widget/ViewOffsetHelper;
    invoke-static {v0}, Landroid/support/design/widget/CollapsingToolbarLayout;->access$400(Landroid/view/View;)Landroid/support/design/widget/ViewOffsetHelper;

    move-result-object v5

    .line 928
    .local v5, "offsetHelper":Landroid/support/design/widget/ViewOffsetHelper;
    iget v9, v4, Landroid/support/design/widget/CollapsingToolbarLayout$LayoutParams;->mCollapseMode:I

    packed-switch v9, :pswitch_data_0

    .line 923
    :cond_0
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v0    # "child":Landroid/view/View;
    .end local v2    # "i":I
    .end local v3    # "insetTop":I
    .end local v4    # "lp":Landroid/support/design/widget/CollapsingToolbarLayout$LayoutParams;
    .end local v5    # "offsetHelper":Landroid/support/design/widget/ViewOffsetHelper;
    .end local v6    # "scrollRange":I
    .end local v7    # "z":I
    :cond_1
    move v3, v8

    .line 920
    goto :goto_0

    .line 930
    .restart local v0    # "child":Landroid/view/View;
    .restart local v2    # "i":I
    .restart local v3    # "insetTop":I
    .restart local v4    # "lp":Landroid/support/design/widget/CollapsingToolbarLayout$LayoutParams;
    .restart local v5    # "offsetHelper":Landroid/support/design/widget/ViewOffsetHelper;
    .restart local v6    # "scrollRange":I
    .restart local v7    # "z":I
    :pswitch_0
    iget-object v9, p0, Landroid/support/design/widget/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Landroid/support/design/widget/CollapsingToolbarLayout;

    invoke-virtual {v9}, Landroid/support/design/widget/CollapsingToolbarLayout;->getHeight()I

    move-result v9

    sub-int/2addr v9, v3

    add-int/2addr v9, p2

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v10

    if-lt v9, v10, :cond_0

    .line 931
    neg-int v9, p2

    invoke-virtual {v5, v9}, Landroid/support/design/widget/ViewOffsetHelper;->setTopAndBottomOffset(I)Z

    goto :goto_2

    .line 935
    :pswitch_1
    neg-int v9, p2

    int-to-float v9, v9

    iget v10, v4, Landroid/support/design/widget/CollapsingToolbarLayout$LayoutParams;->mParallaxMult:F

    mul-float/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v9

    invoke-virtual {v5, v9}, Landroid/support/design/widget/ViewOffsetHelper;->setTopAndBottomOffset(I)Z

    goto :goto_2

    .line 942
    .end local v0    # "child":Landroid/view/View;
    .end local v4    # "lp":Landroid/support/design/widget/CollapsingToolbarLayout$LayoutParams;
    .end local v5    # "offsetHelper":Landroid/support/design/widget/ViewOffsetHelper;
    :cond_2
    iget-object v9, p0, Landroid/support/design/widget/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Landroid/support/design/widget/CollapsingToolbarLayout;

    # getter for: Landroid/support/design/widget/CollapsingToolbarLayout;->mContentScrim:Landroid/graphics/drawable/Drawable;
    invoke-static {v9}, Landroid/support/design/widget/CollapsingToolbarLayout;->access$500(Landroid/support/design/widget/CollapsingToolbarLayout;)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    if-nez v9, :cond_3

    iget-object v9, p0, Landroid/support/design/widget/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Landroid/support/design/widget/CollapsingToolbarLayout;

    # getter for: Landroid/support/design/widget/CollapsingToolbarLayout;->mStatusBarScrim:Landroid/graphics/drawable/Drawable;
    invoke-static {v9}, Landroid/support/design/widget/CollapsingToolbarLayout;->access$600(Landroid/support/design/widget/CollapsingToolbarLayout;)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    if-eqz v9, :cond_5

    .line 943
    :cond_3
    iget-object v9, p0, Landroid/support/design/widget/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Landroid/support/design/widget/CollapsingToolbarLayout;

    iget-object v10, p0, Landroid/support/design/widget/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Landroid/support/design/widget/CollapsingToolbarLayout;

    invoke-virtual {v10}, Landroid/support/design/widget/CollapsingToolbarLayout;->getHeight()I

    move-result v10

    add-int/2addr v10, p2

    iget-object v11, p0, Landroid/support/design/widget/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Landroid/support/design/widget/CollapsingToolbarLayout;

    invoke-virtual {v11}, Landroid/support/design/widget/CollapsingToolbarLayout;->getScrimTriggerOffset()I

    move-result v11

    add-int/2addr v11, v3

    if-ge v10, v11, :cond_4

    const/4 v8, 0x1

    :cond_4
    invoke-virtual {v9, v8}, Landroid/support/design/widget/CollapsingToolbarLayout;->setScrimsShown(Z)V

    .line 946
    :cond_5
    iget-object v8, p0, Landroid/support/design/widget/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Landroid/support/design/widget/CollapsingToolbarLayout;

    # getter for: Landroid/support/design/widget/CollapsingToolbarLayout;->mStatusBarScrim:Landroid/graphics/drawable/Drawable;
    invoke-static {v8}, Landroid/support/design/widget/CollapsingToolbarLayout;->access$600(Landroid/support/design/widget/CollapsingToolbarLayout;)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    if-eqz v8, :cond_6

    if-lez v3, :cond_6

    .line 947
    iget-object v8, p0, Landroid/support/design/widget/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Landroid/support/design/widget/CollapsingToolbarLayout;

    invoke-static {v8}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 951
    :cond_6
    iget-object v8, p0, Landroid/support/design/widget/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Landroid/support/design/widget/CollapsingToolbarLayout;

    invoke-virtual {v8}, Landroid/support/design/widget/CollapsingToolbarLayout;->getHeight()I

    move-result v8

    iget-object v9, p0, Landroid/support/design/widget/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Landroid/support/design/widget/CollapsingToolbarLayout;

    invoke-static {v9}, Landroid/support/v4/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result v9

    sub-int/2addr v8, v9

    sub-int v1, v8, v3

    .line 953
    .local v1, "expandRange":I
    iget-object v8, p0, Landroid/support/design/widget/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Landroid/support/design/widget/CollapsingToolbarLayout;

    # getter for: Landroid/support/design/widget/CollapsingToolbarLayout;->mCollapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;
    invoke-static {v8}, Landroid/support/design/widget/CollapsingToolbarLayout;->access$700(Landroid/support/design/widget/CollapsingToolbarLayout;)Landroid/support/design/widget/CollapsingTextHelper;

    move-result-object v8

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v9

    int-to-float v9, v9

    int-to-float v10, v1

    div-float/2addr v9, v10

    invoke-virtual {v8, v9}, Landroid/support/design/widget/CollapsingTextHelper;->setExpansionFraction(F)V

    .line 956
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v8

    if-ne v8, v6, :cond_7

    .line 959
    invoke-virtual {p1}, Landroid/support/design/widget/AppBarLayout;->getTargetElevation()F

    move-result v8

    invoke-static {p1, v8}, Landroid/support/v4/view/ViewCompat;->setElevation(Landroid/view/View;F)V

    .line 964
    :goto_3
    return-void

    .line 962
    :cond_7
    const/4 v8, 0x0

    invoke-static {p1, v8}, Landroid/support/v4/view/ViewCompat;->setElevation(Landroid/view/View;F)V

    goto :goto_3

    .line 928
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
