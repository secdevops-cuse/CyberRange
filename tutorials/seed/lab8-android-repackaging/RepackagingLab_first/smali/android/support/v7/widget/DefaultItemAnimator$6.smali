.class Landroid/support/v7/widget/DefaultItemAnimator$6;
.super Landroid/support/v7/widget/DefaultItemAnimator$VpaListenerAdapter;
.source "DefaultItemAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v7/widget/DefaultItemAnimator;->animateMoveImpl(Landroid/support/v7/widget/RecyclerView$ViewHolder;IIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v7/widget/DefaultItemAnimator;

.field final synthetic val$animation:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

.field final synthetic val$deltaX:I

.field final synthetic val$deltaY:I

.field final synthetic val$holder:Landroid/support/v7/widget/RecyclerView$ViewHolder;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/DefaultItemAnimator;Landroid/support/v7/widget/RecyclerView$ViewHolder;IILandroid/support/v4/view/ViewPropertyAnimatorCompat;)V
    .locals 1

    .prologue
    .line 285
    iput-object p1, p0, Landroid/support/v7/widget/DefaultItemAnimator$6;->this$0:Landroid/support/v7/widget/DefaultItemAnimator;

    iput-object p2, p0, Landroid/support/v7/widget/DefaultItemAnimator$6;->val$holder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    iput p3, p0, Landroid/support/v7/widget/DefaultItemAnimator$6;->val$deltaX:I

    iput p4, p0, Landroid/support/v7/widget/DefaultItemAnimator$6;->val$deltaY:I

    iput-object p5, p0, Landroid/support/v7/widget/DefaultItemAnimator$6;->val$animation:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/v7/widget/DefaultItemAnimator$VpaListenerAdapter;-><init>(Landroid/support/v7/widget/DefaultItemAnimator$1;)V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x0

    .line 292
    iget v0, p0, Landroid/support/v7/widget/DefaultItemAnimator$6;->val$deltaX:I

    if-eqz v0, :cond_0

    .line 293
    invoke-static {p1, v1}, Landroid/support/v4/view/ViewCompat;->setTranslationX(Landroid/view/View;F)V

    .line 295
    :cond_0
    iget v0, p0, Landroid/support/v7/widget/DefaultItemAnimator$6;->val$deltaY:I

    if-eqz v0, :cond_1

    .line 296
    invoke-static {p1, v1}, Landroid/support/v4/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    .line 298
    :cond_1
    return-void
.end method

.method public onAnimationEnd(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 301
    iget-object v0, p0, Landroid/support/v7/widget/DefaultItemAnimator$6;->val$animation:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setListener(Landroid/support/v4/view/ViewPropertyAnimatorListener;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 302
    iget-object v0, p0, Landroid/support/v7/widget/DefaultItemAnimator$6;->this$0:Landroid/support/v7/widget/DefaultItemAnimator;

    iget-object v1, p0, Landroid/support/v7/widget/DefaultItemAnimator$6;->val$holder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/DefaultItemAnimator;->dispatchMoveFinished(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 303
    iget-object v0, p0, Landroid/support/v7/widget/DefaultItemAnimator$6;->this$0:Landroid/support/v7/widget/DefaultItemAnimator;

    # getter for: Landroid/support/v7/widget/DefaultItemAnimator;->mMoveAnimations:Ljava/util/ArrayList;
    invoke-static {v0}, Landroid/support/v7/widget/DefaultItemAnimator;->access$1100(Landroid/support/v7/widget/DefaultItemAnimator;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/widget/DefaultItemAnimator$6;->val$holder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 304
    iget-object v0, p0, Landroid/support/v7/widget/DefaultItemAnimator$6;->this$0:Landroid/support/v7/widget/DefaultItemAnimator;

    # invokes: Landroid/support/v7/widget/DefaultItemAnimator;->dispatchFinishedWhenDone()V
    invoke-static {v0}, Landroid/support/v7/widget/DefaultItemAnimator;->access$800(Landroid/support/v7/widget/DefaultItemAnimator;)V

    .line 305
    return-void
.end method

.method public onAnimationStart(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 288
    iget-object v0, p0, Landroid/support/v7/widget/DefaultItemAnimator$6;->this$0:Landroid/support/v7/widget/DefaultItemAnimator;

    iget-object v1, p0, Landroid/support/v7/widget/DefaultItemAnimator$6;->val$holder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/DefaultItemAnimator;->dispatchMoveStarting(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 289
    return-void
.end method
