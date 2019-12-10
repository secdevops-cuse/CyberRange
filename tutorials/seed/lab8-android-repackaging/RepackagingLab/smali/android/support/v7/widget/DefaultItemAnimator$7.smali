.class Landroid/support/v7/widget/DefaultItemAnimator$7;
.super Landroid/support/v7/widget/DefaultItemAnimator$VpaListenerAdapter;
.source "DefaultItemAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v7/widget/DefaultItemAnimator;->animateChangeImpl(Landroid/support/v7/widget/DefaultItemAnimator$ChangeInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v7/widget/DefaultItemAnimator;

.field final synthetic val$changeInfo:Landroid/support/v7/widget/DefaultItemAnimator$ChangeInfo;

.field final synthetic val$oldViewAnim:Landroid/support/v4/view/ViewPropertyAnimatorCompat;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/DefaultItemAnimator;Landroid/support/v7/widget/DefaultItemAnimator$ChangeInfo;Landroid/support/v4/view/ViewPropertyAnimatorCompat;)V
    .locals 1

    .prologue
    .line 349
    iput-object p1, p0, Landroid/support/v7/widget/DefaultItemAnimator$7;->this$0:Landroid/support/v7/widget/DefaultItemAnimator;

    iput-object p2, p0, Landroid/support/v7/widget/DefaultItemAnimator$7;->val$changeInfo:Landroid/support/v7/widget/DefaultItemAnimator$ChangeInfo;

    iput-object p3, p0, Landroid/support/v7/widget/DefaultItemAnimator$7;->val$oldViewAnim:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/v7/widget/DefaultItemAnimator$VpaListenerAdapter;-><init>(Landroid/support/v7/widget/DefaultItemAnimator$1;)V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 357
    iget-object v0, p0, Landroid/support/v7/widget/DefaultItemAnimator$7;->val$oldViewAnim:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setListener(Landroid/support/v4/view/ViewPropertyAnimatorListener;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 358
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p1, v0}, Landroid/support/v4/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    .line 359
    invoke-static {p1, v2}, Landroid/support/v4/view/ViewCompat;->setTranslationX(Landroid/view/View;F)V

    .line 360
    invoke-static {p1, v2}, Landroid/support/v4/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    .line 361
    iget-object v0, p0, Landroid/support/v7/widget/DefaultItemAnimator$7;->this$0:Landroid/support/v7/widget/DefaultItemAnimator;

    iget-object v1, p0, Landroid/support/v7/widget/DefaultItemAnimator$7;->val$changeInfo:Landroid/support/v7/widget/DefaultItemAnimator$ChangeInfo;

    iget-object v1, v1, Landroid/support/v7/widget/DefaultItemAnimator$ChangeInfo;->oldHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/widget/DefaultItemAnimator;->dispatchChangeFinished(Landroid/support/v7/widget/RecyclerView$ViewHolder;Z)V

    .line 362
    iget-object v0, p0, Landroid/support/v7/widget/DefaultItemAnimator$7;->this$0:Landroid/support/v7/widget/DefaultItemAnimator;

    # getter for: Landroid/support/v7/widget/DefaultItemAnimator;->mChangeAnimations:Ljava/util/ArrayList;
    invoke-static {v0}, Landroid/support/v7/widget/DefaultItemAnimator;->access$1300(Landroid/support/v7/widget/DefaultItemAnimator;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/widget/DefaultItemAnimator$7;->val$changeInfo:Landroid/support/v7/widget/DefaultItemAnimator$ChangeInfo;

    iget-object v1, v1, Landroid/support/v7/widget/DefaultItemAnimator$ChangeInfo;->oldHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 363
    iget-object v0, p0, Landroid/support/v7/widget/DefaultItemAnimator$7;->this$0:Landroid/support/v7/widget/DefaultItemAnimator;

    # invokes: Landroid/support/v7/widget/DefaultItemAnimator;->dispatchFinishedWhenDone()V
    invoke-static {v0}, Landroid/support/v7/widget/DefaultItemAnimator;->access$800(Landroid/support/v7/widget/DefaultItemAnimator;)V

    .line 364
    return-void
.end method

.method public onAnimationStart(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 352
    iget-object v0, p0, Landroid/support/v7/widget/DefaultItemAnimator$7;->this$0:Landroid/support/v7/widget/DefaultItemAnimator;

    iget-object v1, p0, Landroid/support/v7/widget/DefaultItemAnimator$7;->val$changeInfo:Landroid/support/v7/widget/DefaultItemAnimator$ChangeInfo;

    iget-object v1, v1, Landroid/support/v7/widget/DefaultItemAnimator$ChangeInfo;->oldHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/widget/DefaultItemAnimator;->dispatchChangeStarting(Landroid/support/v7/widget/RecyclerView$ViewHolder;Z)V

    .line 353
    return-void
.end method
