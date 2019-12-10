.class Landroid/support/v4/view/ViewPropertyAnimatorCompatKK;
.super Ljava/lang/Object;
.source "ViewPropertyAnimatorCompatKK.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setUpdateListener(Landroid/view/View;Landroid/support/v4/view/ViewPropertyAnimatorUpdateListener;)V
    .locals 2
    .param p0, "view"    # Landroid/view/View;
    .param p1, "listener"    # Landroid/support/v4/view/ViewPropertyAnimatorUpdateListener;

    .prologue
    .line 25
    const/4 v0, 0x0

    .line 26
    .local v0, "wrapped":Landroid/animation/ValueAnimator$AnimatorUpdateListener;
    if-eqz p1, :cond_0

    .line 27
    new-instance v0, Landroid/support/v4/view/ViewPropertyAnimatorCompatKK$1;

    .end local v0    # "wrapped":Landroid/animation/ValueAnimator$AnimatorUpdateListener;
    invoke-direct {v0, p1, p0}, Landroid/support/v4/view/ViewPropertyAnimatorCompatKK$1;-><init>(Landroid/support/v4/view/ViewPropertyAnimatorUpdateListener;Landroid/view/View;)V

    .line 34
    .restart local v0    # "wrapped":Landroid/animation/ValueAnimator$AnimatorUpdateListener;
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewPropertyAnimator;->setUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/view/ViewPropertyAnimator;

    .line 35
    return-void
.end method
