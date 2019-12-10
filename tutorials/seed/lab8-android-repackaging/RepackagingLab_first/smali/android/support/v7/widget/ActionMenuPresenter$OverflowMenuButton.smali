.class Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;
.super Landroid/support/v7/widget/AppCompatImageView;
.source "ActionMenuPresenter.java"

# interfaces
.implements Landroid/support/v7/widget/ActionMenuView$ActionMenuChildView;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/ActionMenuPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OverflowMenuButton"
.end annotation


# instance fields
.field private final mTempPts:[F

.field final synthetic this$0:Landroid/support/v7/widget/ActionMenuPresenter;


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/ActionMenuPresenter;Landroid/content/Context;)V
    .locals 3
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    .line 610
    iput-object p1, p0, Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;->this$0:Landroid/support/v7/widget/ActionMenuPresenter;

    .line 611
    const/4 v0, 0x0

    sget v1, Landroid/support/v7/appcompat/R$attr;->actionOverflowButtonStyle:I

    invoke-direct {p0, p2, v0, v1}, Landroid/support/v7/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 608
    const/4 v0, 0x2

    new-array v0, v0, [F

    iput-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;->mTempPts:[F

    .line 613
    invoke-virtual {p0, v2}, Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;->setClickable(Z)V

    .line 614
    invoke-virtual {p0, v2}, Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;->setFocusable(Z)V

    .line 615
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;->setVisibility(I)V

    .line 616
    invoke-virtual {p0, v2}, Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;->setEnabled(Z)V

    .line 618
    new-instance v0, Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton$1;

    invoke-direct {v0, p0, p0, p1}, Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton$1;-><init>(Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;Landroid/view/View;Landroid/support/v7/widget/ActionMenuPresenter;)V

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 647
    return-void
.end method


# virtual methods
.method public needsDividerAfter()Z
    .locals 1

    .prologue
    .line 667
    const/4 v0, 0x0

    return v0
.end method

.method public needsDividerBefore()Z
    .locals 1

    .prologue
    .line 662
    const/4 v0, 0x0

    return v0
.end method

.method public performClick()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 651
    invoke-super {p0}, Landroid/support/v7/widget/AppCompatImageView;->performClick()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 657
    :goto_0
    return v1

    .line 655
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;->playSoundEffect(I)V

    .line 656
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;->this$0:Landroid/support/v7/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionMenuPresenter;->showOverflowMenu()Z

    goto :goto_0
.end method

.method protected setFrame(IIII)Z
    .locals 14
    .param p1, "l"    # I
    .param p2, "t"    # I
    .param p3, "r"    # I
    .param p4, "b"    # I

    .prologue
    .line 672
    invoke-super/range {p0 .. p4}, Landroid/support/v7/widget/AppCompatImageView;->setFrame(IIII)Z

    move-result v3

    .line 675
    .local v3, "changed":Z
    invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 676
    .local v4, "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 677
    .local v0, "bg":Landroid/graphics/drawable/Drawable;
    if-eqz v4, :cond_0

    if-eqz v0, :cond_0

    .line 678
    invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;->getWidth()I

    move-result v9

    .line 679
    .local v9, "width":I
    invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;->getHeight()I

    move-result v6

    .line 680
    .local v6, "height":I
    invoke-static {v9, v6}, Ljava/lang/Math;->max(II)I

    move-result v10

    div-int/lit8 v5, v10, 0x2

    .line 681
    .local v5, "halfEdge":I
    invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;->getPaddingLeft()I

    move-result v10

    invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;->getPaddingRight()I

    move-result v11

    sub-int v7, v10, v11

    .line 682
    .local v7, "offsetX":I
    invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;->getPaddingTop()I

    move-result v10

    invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;->getPaddingBottom()I

    move-result v11

    sub-int v8, v10, v11

    .line 683
    .local v8, "offsetY":I
    add-int v10, v9, v7

    div-int/lit8 v1, v10, 0x2

    .line 684
    .local v1, "centerX":I
    add-int v10, v6, v8

    div-int/lit8 v2, v10, 0x2

    .line 685
    .local v2, "centerY":I
    sub-int v10, v1, v5

    sub-int v11, v2, v5

    add-int v12, v1, v5

    add-int v13, v2, v5

    invoke-static {v0, v10, v11, v12, v13}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setHotspotBounds(Landroid/graphics/drawable/Drawable;IIII)V

    .line 689
    .end local v1    # "centerX":I
    .end local v2    # "centerY":I
    .end local v5    # "halfEdge":I
    .end local v6    # "height":I
    .end local v7    # "offsetX":I
    .end local v8    # "offsetY":I
    .end local v9    # "width":I
    :cond_0
    return v3
.end method
