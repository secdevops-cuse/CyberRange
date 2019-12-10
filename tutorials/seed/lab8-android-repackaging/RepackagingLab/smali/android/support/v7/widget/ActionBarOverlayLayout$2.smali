.class Landroid/support/v7/widget/ActionBarOverlayLayout$2;
.super Ljava/lang/Object;
.source "ActionBarOverlayLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/ActionBarOverlayLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v7/widget/ActionBarOverlayLayout;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/ActionBarOverlayLayout;)V
    .locals 0

    .prologue
    .line 105
    iput-object p1, p0, Landroid/support/v7/widget/ActionBarOverlayLayout$2;->this$0:Landroid/support/v7/widget/ActionBarOverlayLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 107
    iget-object v0, p0, Landroid/support/v7/widget/ActionBarOverlayLayout$2;->this$0:Landroid/support/v7/widget/ActionBarOverlayLayout;

    # invokes: Landroid/support/v7/widget/ActionBarOverlayLayout;->haltActionBarHideOffsetAnimations()V
    invoke-static {v0}, Landroid/support/v7/widget/ActionBarOverlayLayout;->access$200(Landroid/support/v7/widget/ActionBarOverlayLayout;)V

    .line 108
    iget-object v0, p0, Landroid/support/v7/widget/ActionBarOverlayLayout$2;->this$0:Landroid/support/v7/widget/ActionBarOverlayLayout;

    iget-object v1, p0, Landroid/support/v7/widget/ActionBarOverlayLayout$2;->this$0:Landroid/support/v7/widget/ActionBarOverlayLayout;

    # getter for: Landroid/support/v7/widget/ActionBarOverlayLayout;->mActionBarTop:Landroid/support/v7/widget/ActionBarContainer;
    invoke-static {v1}, Landroid/support/v7/widget/ActionBarOverlayLayout;->access$400(Landroid/support/v7/widget/ActionBarOverlayLayout;)Landroid/support/v7/widget/ActionBarContainer;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->translationY(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v7/widget/ActionBarOverlayLayout$2;->this$0:Landroid/support/v7/widget/ActionBarOverlayLayout;

    # getter for: Landroid/support/v7/widget/ActionBarOverlayLayout;->mTopAnimatorListener:Landroid/support/v4/view/ViewPropertyAnimatorListener;
    invoke-static {v2}, Landroid/support/v7/widget/ActionBarOverlayLayout;->access$300(Landroid/support/v7/widget/ActionBarOverlayLayout;)Landroid/support/v4/view/ViewPropertyAnimatorListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setListener(Landroid/support/v4/view/ViewPropertyAnimatorListener;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v1

    # setter for: Landroid/support/v7/widget/ActionBarOverlayLayout;->mCurrentActionBarTopAnimator:Landroid/support/v4/view/ViewPropertyAnimatorCompat;
    invoke-static {v0, v1}, Landroid/support/v7/widget/ActionBarOverlayLayout;->access$002(Landroid/support/v7/widget/ActionBarOverlayLayout;Landroid/support/v4/view/ViewPropertyAnimatorCompat;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 110
    return-void
.end method
