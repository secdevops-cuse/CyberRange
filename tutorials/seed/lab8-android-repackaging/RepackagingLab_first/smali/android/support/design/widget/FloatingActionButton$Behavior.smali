.class public Landroid/support/design/widget/FloatingActionButton$Behavior;
.super Landroid/support/design/widget/CoordinatorLayout$Behavior;
.source "FloatingActionButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/widget/FloatingActionButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Behavior"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/design/widget/CoordinatorLayout$Behavior",
        "<",
        "Landroid/support/design/widget/FloatingActionButton;",
        ">;"
    }
.end annotation


# static fields
.field private static final SNACKBAR_BEHAVIOR_ENABLED:Z


# instance fields
.field private mFabTranslationY:F

.field private mFabTranslationYAnimator:Landroid/support/design/widget/ValueAnimatorCompat;

.field private mTmpRect:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 408
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Landroid/support/design/widget/FloatingActionButton$Behavior;->SNACKBAR_BEHAVIOR_ENABLED:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 405
    invoke-direct {p0}, Landroid/support/design/widget/CoordinatorLayout$Behavior;-><init>()V

    return-void
.end method

.method private getFabTranslationYForSnackbar(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/FloatingActionButton;)F
    .locals 7
    .param p1, "parent"    # Landroid/support/design/widget/CoordinatorLayout;
    .param p2, "fab"    # Landroid/support/design/widget/FloatingActionButton;

    .prologue
    .line 509
    const/4 v2, 0x0

    .line 510
    .local v2, "minOffset":F
    invoke-virtual {p1, p2}, Landroid/support/design/widget/CoordinatorLayout;->getDependencies(Landroid/view/View;)Ljava/util/List;

    move-result-object v0

    .line 511
    .local v0, "dependencies":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    .local v4, "z":I
    :goto_0
    if-ge v1, v4, :cond_1

    .line 512
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 513
    .local v3, "view":Landroid/view/View;
    instance-of v5, v3, Landroid/support/design/widget/Snackbar$SnackbarLayout;

    if-eqz v5, :cond_0

    invoke-virtual {p1, p2, v3}, Landroid/support/design/widget/CoordinatorLayout;->doViewsOverlap(Landroid/view/View;Landroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 514
    invoke-static {v3}, Landroid/support/v4/view/ViewCompat;->getTranslationY(Landroid/view/View;)F

    move-result v5

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v5, v6

    invoke-static {v2, v5}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 511
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 519
    .end local v3    # "view":Landroid/view/View;
    :cond_1
    return v2
.end method

.method private offsetIfNeeded(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/FloatingActionButton;)V
    .locals 7
    .param p1, "parent"    # Landroid/support/design/widget/CoordinatorLayout;
    .param p2, "fab"    # Landroid/support/design/widget/FloatingActionButton;

    .prologue
    .line 547
    # getter for: Landroid/support/design/widget/FloatingActionButton;->mShadowPadding:Landroid/graphics/Rect;
    invoke-static {p2}, Landroid/support/design/widget/FloatingActionButton;->access$000(Landroid/support/design/widget/FloatingActionButton;)Landroid/graphics/Rect;

    move-result-object v3

    .line 549
    .local v3, "padding":Landroid/graphics/Rect;
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroid/graphics/Rect;->centerX()I

    move-result v4

    if-lez v4, :cond_2

    invoke-virtual {v3}, Landroid/graphics/Rect;->centerY()I

    move-result v4

    if-lez v4, :cond_2

    .line 550
    invoke-virtual {p2}, Landroid/support/design/widget/FloatingActionButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    .line 553
    .local v0, "lp":Landroid/support/design/widget/CoordinatorLayout$LayoutParams;
    const/4 v2, 0x0

    .local v2, "offsetTB":I
    const/4 v1, 0x0

    .line 555
    .local v1, "offsetLR":I
    invoke-virtual {p2}, Landroid/support/design/widget/FloatingActionButton;->getRight()I

    move-result v4

    invoke-virtual {p1}, Landroid/support/design/widget/CoordinatorLayout;->getWidth()I

    move-result v5

    iget v6, v0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->rightMargin:I

    sub-int/2addr v5, v6

    if-lt v4, v5, :cond_3

    .line 557
    iget v1, v3, Landroid/graphics/Rect;->right:I

    .line 562
    :cond_0
    :goto_0
    invoke-virtual {p2}, Landroid/support/design/widget/FloatingActionButton;->getBottom()I

    move-result v4

    invoke-virtual {p1}, Landroid/support/design/widget/CoordinatorLayout;->getBottom()I

    move-result v5

    iget v6, v0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->bottomMargin:I

    sub-int/2addr v5, v6

    if-lt v4, v5, :cond_4

    .line 564
    iget v2, v3, Landroid/graphics/Rect;->bottom:I

    .line 570
    :cond_1
    :goto_1
    invoke-virtual {p2, v2}, Landroid/support/design/widget/FloatingActionButton;->offsetTopAndBottom(I)V

    .line 571
    invoke-virtual {p2, v1}, Landroid/support/design/widget/FloatingActionButton;->offsetLeftAndRight(I)V

    .line 573
    .end local v0    # "lp":Landroid/support/design/widget/CoordinatorLayout$LayoutParams;
    .end local v1    # "offsetLR":I
    .end local v2    # "offsetTB":I
    :cond_2
    return-void

    .line 558
    .restart local v0    # "lp":Landroid/support/design/widget/CoordinatorLayout$LayoutParams;
    .restart local v1    # "offsetLR":I
    .restart local v2    # "offsetTB":I
    :cond_3
    invoke-virtual {p2}, Landroid/support/design/widget/FloatingActionButton;->getLeft()I

    move-result v4

    iget v5, v0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->leftMargin:I

    if-gt v4, v5, :cond_0

    .line 560
    iget v4, v3, Landroid/graphics/Rect;->left:I

    neg-int v1, v4

    goto :goto_0

    .line 565
    :cond_4
    invoke-virtual {p2}, Landroid/support/design/widget/FloatingActionButton;->getTop()I

    move-result v4

    iget v5, v0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->topMargin:I

    if-gt v4, v5, :cond_1

    .line 567
    iget v4, v3, Landroid/graphics/Rect;->top:I

    neg-int v2, v4

    goto :goto_1
.end method

.method private updateFabTranslationForSnackbar(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/FloatingActionButton;Landroid/view/View;)V
    .locals 5
    .param p1, "parent"    # Landroid/support/design/widget/CoordinatorLayout;
    .param p2, "fab"    # Landroid/support/design/widget/FloatingActionButton;
    .param p3, "snackbar"    # Landroid/view/View;

    .prologue
    .line 464
    invoke-virtual {p2}, Landroid/support/design/widget/FloatingActionButton;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_1

    .line 505
    :cond_0
    :goto_0
    return-void

    .line 468
    :cond_1
    invoke-direct {p0, p1, p2}, Landroid/support/design/widget/FloatingActionButton$Behavior;->getFabTranslationYForSnackbar(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/FloatingActionButton;)F

    move-result v1

    .line 469
    .local v1, "targetTransY":F
    iget v2, p0, Landroid/support/design/widget/FloatingActionButton$Behavior;->mFabTranslationY:F

    cmpl-float v2, v2, v1

    if-eqz v2, :cond_0

    .line 474
    invoke-static {p2}, Landroid/support/v4/view/ViewCompat;->getTranslationY(Landroid/view/View;)F

    move-result v0

    .line 477
    .local v0, "currentTransY":F
    iget-object v2, p0, Landroid/support/design/widget/FloatingActionButton$Behavior;->mFabTranslationYAnimator:Landroid/support/design/widget/ValueAnimatorCompat;

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/support/design/widget/FloatingActionButton$Behavior;->mFabTranslationYAnimator:Landroid/support/design/widget/ValueAnimatorCompat;

    invoke-virtual {v2}, Landroid/support/design/widget/ValueAnimatorCompat;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 478
    iget-object v2, p0, Landroid/support/design/widget/FloatingActionButton$Behavior;->mFabTranslationYAnimator:Landroid/support/design/widget/ValueAnimatorCompat;

    invoke-virtual {v2}, Landroid/support/design/widget/ValueAnimatorCompat;->cancel()V

    .line 481
    :cond_2
    sub-float v2, v0, v1

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    invoke-virtual {p2}, Landroid/support/design/widget/FloatingActionButton;->getHeight()I

    move-result v3

    int-to-float v3, v3

    const v4, 0x3f2ac083    # 0.667f

    mul-float/2addr v3, v4

    cmpl-float v2, v2, v3

    if-lez v2, :cond_4

    .line 484
    iget-object v2, p0, Landroid/support/design/widget/FloatingActionButton$Behavior;->mFabTranslationYAnimator:Landroid/support/design/widget/ValueAnimatorCompat;

    if-nez v2, :cond_3

    .line 485
    invoke-static {}, Landroid/support/design/widget/ViewUtils;->createAnimator()Landroid/support/design/widget/ValueAnimatorCompat;

    move-result-object v2

    iput-object v2, p0, Landroid/support/design/widget/FloatingActionButton$Behavior;->mFabTranslationYAnimator:Landroid/support/design/widget/ValueAnimatorCompat;

    .line 486
    iget-object v2, p0, Landroid/support/design/widget/FloatingActionButton$Behavior;->mFabTranslationYAnimator:Landroid/support/design/widget/ValueAnimatorCompat;

    sget-object v3, Landroid/support/design/widget/AnimationUtils;->FAST_OUT_SLOW_IN_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v3}, Landroid/support/design/widget/ValueAnimatorCompat;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 488
    iget-object v2, p0, Landroid/support/design/widget/FloatingActionButton$Behavior;->mFabTranslationYAnimator:Landroid/support/design/widget/ValueAnimatorCompat;

    new-instance v3, Landroid/support/design/widget/FloatingActionButton$Behavior$1;

    invoke-direct {v3, p0, p2}, Landroid/support/design/widget/FloatingActionButton$Behavior$1;-><init>(Landroid/support/design/widget/FloatingActionButton$Behavior;Landroid/support/design/widget/FloatingActionButton;)V

    invoke-virtual {v2, v3}, Landroid/support/design/widget/ValueAnimatorCompat;->setUpdateListener(Landroid/support/design/widget/ValueAnimatorCompat$AnimatorUpdateListener;)V

    .line 497
    :cond_3
    iget-object v2, p0, Landroid/support/design/widget/FloatingActionButton$Behavior;->mFabTranslationYAnimator:Landroid/support/design/widget/ValueAnimatorCompat;

    invoke-virtual {v2, v0, v1}, Landroid/support/design/widget/ValueAnimatorCompat;->setFloatValues(FF)V

    .line 498
    iget-object v2, p0, Landroid/support/design/widget/FloatingActionButton$Behavior;->mFabTranslationYAnimator:Landroid/support/design/widget/ValueAnimatorCompat;

    invoke-virtual {v2}, Landroid/support/design/widget/ValueAnimatorCompat;->start()V

    .line 504
    :goto_1
    iput v1, p0, Landroid/support/design/widget/FloatingActionButton$Behavior;->mFabTranslationY:F

    goto :goto_0

    .line 501
    :cond_4
    invoke-static {p2, v1}, Landroid/support/v4/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    goto :goto_1
.end method

.method private updateFabVisibility(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;Landroid/support/design/widget/FloatingActionButton;)Z
    .locals 4
    .param p1, "parent"    # Landroid/support/design/widget/CoordinatorLayout;
    .param p2, "appBarLayout"    # Landroid/support/design/widget/AppBarLayout;
    .param p3, "child"    # Landroid/support/design/widget/FloatingActionButton;

    .prologue
    .line 436
    invoke-virtual {p3}, Landroid/support/design/widget/FloatingActionButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    .line 438
    .local v0, "lp":Landroid/support/design/widget/CoordinatorLayout$LayoutParams;
    invoke-virtual {v0}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->getAnchorId()I

    move-result v2

    invoke-virtual {p2}, Landroid/support/design/widget/AppBarLayout;->getId()I

    move-result v3

    if-eq v2, v3, :cond_0

    .line 441
    const/4 v2, 0x0

    .line 459
    :goto_0
    return v2

    .line 444
    :cond_0
    iget-object v2, p0, Landroid/support/design/widget/FloatingActionButton$Behavior;->mTmpRect:Landroid/graphics/Rect;

    if-nez v2, :cond_1

    .line 445
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Landroid/support/design/widget/FloatingActionButton$Behavior;->mTmpRect:Landroid/graphics/Rect;

    .line 449
    :cond_1
    iget-object v1, p0, Landroid/support/design/widget/FloatingActionButton$Behavior;->mTmpRect:Landroid/graphics/Rect;

    .line 450
    .local v1, "rect":Landroid/graphics/Rect;
    invoke-static {p1, p2, v1}, Landroid/support/design/widget/ViewGroupUtils;->getDescendantRect(Landroid/view/ViewGroup;Landroid/view/View;Landroid/graphics/Rect;)V

    .line 452
    iget v2, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p2}, Landroid/support/design/widget/AppBarLayout;->getMinimumHeightForVisibleOverlappingContent()I

    move-result v3

    if-gt v2, v3, :cond_2

    .line 454
    invoke-virtual {p3}, Landroid/support/design/widget/FloatingActionButton;->hide()V

    .line 459
    :goto_1
    const/4 v2, 0x1

    goto :goto_0

    .line 457
    :cond_2
    invoke-virtual {p3}, Landroid/support/design/widget/FloatingActionButton;->show()V

    goto :goto_1
.end method


# virtual methods
.method public layoutDependsOn(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/FloatingActionButton;Landroid/view/View;)Z
    .locals 1
    .param p1, "parent"    # Landroid/support/design/widget/CoordinatorLayout;
    .param p2, "child"    # Landroid/support/design/widget/FloatingActionButton;
    .param p3, "dependency"    # Landroid/view/View;

    .prologue
    .line 418
    sget-boolean v0, Landroid/support/design/widget/FloatingActionButton$Behavior;->SNACKBAR_BEHAVIOR_ENABLED:Z

    if-eqz v0, :cond_0

    instance-of v0, p3, Landroid/support/design/widget/Snackbar$SnackbarLayout;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic layoutDependsOn(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z
    .locals 1

    .prologue
    .line 405
    check-cast p2, Landroid/support/design/widget/FloatingActionButton;

    invoke-virtual {p0, p1, p2, p3}, Landroid/support/design/widget/FloatingActionButton$Behavior;->layoutDependsOn(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/FloatingActionButton;Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public onDependentViewChanged(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/FloatingActionButton;Landroid/view/View;)Z
    .locals 1
    .param p1, "parent"    # Landroid/support/design/widget/CoordinatorLayout;
    .param p2, "child"    # Landroid/support/design/widget/FloatingActionButton;
    .param p3, "dependency"    # Landroid/view/View;

    .prologue
    .line 424
    instance-of v0, p3, Landroid/support/design/widget/Snackbar$SnackbarLayout;

    if-eqz v0, :cond_1

    .line 425
    invoke-direct {p0, p1, p2, p3}, Landroid/support/design/widget/FloatingActionButton$Behavior;->updateFabTranslationForSnackbar(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/FloatingActionButton;Landroid/view/View;)V

    .line 431
    .end local p3    # "dependency":Landroid/view/View;
    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 426
    .restart local p3    # "dependency":Landroid/view/View;
    :cond_1
    instance-of v0, p3, Landroid/support/design/widget/AppBarLayout;

    if-eqz v0, :cond_0

    .line 429
    check-cast p3, Landroid/support/design/widget/AppBarLayout;

    .end local p3    # "dependency":Landroid/view/View;
    invoke-direct {p0, p1, p3, p2}, Landroid/support/design/widget/FloatingActionButton$Behavior;->updateFabVisibility(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;Landroid/support/design/widget/FloatingActionButton;)Z

    goto :goto_0
.end method

.method public bridge synthetic onDependentViewChanged(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z
    .locals 1

    .prologue
    .line 405
    check-cast p2, Landroid/support/design/widget/FloatingActionButton;

    invoke-virtual {p0, p1, p2, p3}, Landroid/support/design/widget/FloatingActionButton$Behavior;->onDependentViewChanged(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/FloatingActionButton;Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public onLayoutChild(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/FloatingActionButton;I)Z
    .locals 5
    .param p1, "parent"    # Landroid/support/design/widget/CoordinatorLayout;
    .param p2, "child"    # Landroid/support/design/widget/FloatingActionButton;
    .param p3, "layoutDirection"    # I

    .prologue
    .line 526
    invoke-virtual {p1, p2}, Landroid/support/design/widget/CoordinatorLayout;->getDependencies(Landroid/view/View;)Ljava/util/List;

    move-result-object v1

    .line 527
    .local v1, "dependencies":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .local v0, "count":I
    :goto_0
    if-ge v3, v0, :cond_0

    .line 528
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 529
    .local v2, "dependency":Landroid/view/View;
    instance-of v4, v2, Landroid/support/design/widget/AppBarLayout;

    if-eqz v4, :cond_1

    check-cast v2, Landroid/support/design/widget/AppBarLayout;

    .end local v2    # "dependency":Landroid/view/View;
    invoke-direct {p0, p1, v2, p2}, Landroid/support/design/widget/FloatingActionButton$Behavior;->updateFabVisibility(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;Landroid/support/design/widget/FloatingActionButton;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 535
    :cond_0
    invoke-virtual {p1, p2, p3}, Landroid/support/design/widget/CoordinatorLayout;->onLayoutChild(Landroid/view/View;I)V

    .line 537
    invoke-direct {p0, p1, p2}, Landroid/support/design/widget/FloatingActionButton$Behavior;->offsetIfNeeded(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/FloatingActionButton;)V

    .line 538
    const/4 v4, 0x1

    return v4

    .line 527
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public bridge synthetic onLayoutChild(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;I)Z
    .locals 1

    .prologue
    .line 405
    check-cast p2, Landroid/support/design/widget/FloatingActionButton;

    invoke-virtual {p0, p1, p2, p3}, Landroid/support/design/widget/FloatingActionButton$Behavior;->onLayoutChild(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/FloatingActionButton;I)Z

    move-result v0

    return v0
.end method
