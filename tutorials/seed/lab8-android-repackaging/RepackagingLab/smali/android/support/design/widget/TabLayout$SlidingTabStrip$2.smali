.class Landroid/support/design/widget/TabLayout$SlidingTabStrip$2;
.super Landroid/support/design/widget/ValueAnimatorCompat$AnimatorListenerAdapter;
.source "TabLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/design/widget/TabLayout$SlidingTabStrip;->animateIndicatorToPosition(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/support/design/widget/TabLayout$SlidingTabStrip;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Landroid/support/design/widget/TabLayout$SlidingTabStrip;I)V
    .locals 0

    .prologue
    .line 1642
    iput-object p1, p0, Landroid/support/design/widget/TabLayout$SlidingTabStrip$2;->this$1:Landroid/support/design/widget/TabLayout$SlidingTabStrip;

    iput p2, p0, Landroid/support/design/widget/TabLayout$SlidingTabStrip$2;->val$position:I

    invoke-direct {p0}, Landroid/support/design/widget/ValueAnimatorCompat$AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/support/design/widget/ValueAnimatorCompat;)V
    .locals 2
    .param p1, "animator"    # Landroid/support/design/widget/ValueAnimatorCompat;

    .prologue
    .line 1651
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$SlidingTabStrip$2;->this$1:Landroid/support/design/widget/TabLayout$SlidingTabStrip;

    iget v1, p0, Landroid/support/design/widget/TabLayout$SlidingTabStrip$2;->val$position:I

    # setter for: Landroid/support/design/widget/TabLayout$SlidingTabStrip;->mSelectedPosition:I
    invoke-static {v0, v1}, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->access$2002(Landroid/support/design/widget/TabLayout$SlidingTabStrip;I)I

    .line 1652
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$SlidingTabStrip$2;->this$1:Landroid/support/design/widget/TabLayout$SlidingTabStrip;

    const/4 v1, 0x0

    # setter for: Landroid/support/design/widget/TabLayout$SlidingTabStrip;->mSelectionOffset:F
    invoke-static {v0, v1}, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->access$2102(Landroid/support/design/widget/TabLayout$SlidingTabStrip;F)F

    .line 1653
    return-void
.end method

.method public onAnimationEnd(Landroid/support/design/widget/ValueAnimatorCompat;)V
    .locals 2
    .param p1, "animator"    # Landroid/support/design/widget/ValueAnimatorCompat;

    .prologue
    .line 1645
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$SlidingTabStrip$2;->this$1:Landroid/support/design/widget/TabLayout$SlidingTabStrip;

    iget v1, p0, Landroid/support/design/widget/TabLayout$SlidingTabStrip$2;->val$position:I

    # setter for: Landroid/support/design/widget/TabLayout$SlidingTabStrip;->mSelectedPosition:I
    invoke-static {v0, v1}, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->access$2002(Landroid/support/design/widget/TabLayout$SlidingTabStrip;I)I

    .line 1646
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$SlidingTabStrip$2;->this$1:Landroid/support/design/widget/TabLayout$SlidingTabStrip;

    const/4 v1, 0x0

    # setter for: Landroid/support/design/widget/TabLayout$SlidingTabStrip;->mSelectionOffset:F
    invoke-static {v0, v1}, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->access$2102(Landroid/support/design/widget/TabLayout$SlidingTabStrip;F)F

    .line 1647
    return-void
.end method
