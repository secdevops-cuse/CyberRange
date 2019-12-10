.class Landroid/support/design/widget/FloatingActionButtonHoneycombMr1$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "FloatingActionButtonHoneycombMr1.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/design/widget/FloatingActionButtonHoneycombMr1;->hide(Landroid/support/design/widget/FloatingActionButtonImpl$InternalVisibilityChangedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/design/widget/FloatingActionButtonHoneycombMr1;

.field final synthetic val$listener:Landroid/support/design/widget/FloatingActionButtonImpl$InternalVisibilityChangedListener;


# direct methods
.method constructor <init>(Landroid/support/design/widget/FloatingActionButtonHoneycombMr1;Landroid/support/design/widget/FloatingActionButtonImpl$InternalVisibilityChangedListener;)V
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Landroid/support/design/widget/FloatingActionButtonHoneycombMr1$1;->this$0:Landroid/support/design/widget/FloatingActionButtonHoneycombMr1;

    iput-object p2, p0, Landroid/support/design/widget/FloatingActionButtonHoneycombMr1$1;->val$listener:Landroid/support/design/widget/FloatingActionButtonImpl$InternalVisibilityChangedListener;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 75
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonHoneycombMr1$1;->this$0:Landroid/support/design/widget/FloatingActionButtonHoneycombMr1;

    const/4 v1, 0x0

    # setter for: Landroid/support/design/widget/FloatingActionButtonHoneycombMr1;->mIsHiding:Z
    invoke-static {v0, v1}, Landroid/support/design/widget/FloatingActionButtonHoneycombMr1;->access$002(Landroid/support/design/widget/FloatingActionButtonHoneycombMr1;Z)Z

    .line 76
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 80
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonHoneycombMr1$1;->this$0:Landroid/support/design/widget/FloatingActionButtonHoneycombMr1;

    const/4 v1, 0x0

    # setter for: Landroid/support/design/widget/FloatingActionButtonHoneycombMr1;->mIsHiding:Z
    invoke-static {v0, v1}, Landroid/support/design/widget/FloatingActionButtonHoneycombMr1;->access$002(Landroid/support/design/widget/FloatingActionButtonHoneycombMr1;Z)Z

    .line 81
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonHoneycombMr1$1;->this$0:Landroid/support/design/widget/FloatingActionButtonHoneycombMr1;

    iget-object v0, v0, Landroid/support/design/widget/FloatingActionButtonHoneycombMr1;->mView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 82
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonHoneycombMr1$1;->val$listener:Landroid/support/design/widget/FloatingActionButtonImpl$InternalVisibilityChangedListener;

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonHoneycombMr1$1;->val$listener:Landroid/support/design/widget/FloatingActionButtonImpl$InternalVisibilityChangedListener;

    invoke-interface {v0}, Landroid/support/design/widget/FloatingActionButtonImpl$InternalVisibilityChangedListener;->onHidden()V

    .line 85
    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 69
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonHoneycombMr1$1;->this$0:Landroid/support/design/widget/FloatingActionButtonHoneycombMr1;

    const/4 v1, 0x1

    # setter for: Landroid/support/design/widget/FloatingActionButtonHoneycombMr1;->mIsHiding:Z
    invoke-static {v0, v1}, Landroid/support/design/widget/FloatingActionButtonHoneycombMr1;->access$002(Landroid/support/design/widget/FloatingActionButtonHoneycombMr1;Z)Z

    .line 70
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonHoneycombMr1$1;->this$0:Landroid/support/design/widget/FloatingActionButtonHoneycombMr1;

    iget-object v0, v0, Landroid/support/design/widget/FloatingActionButtonHoneycombMr1;->mView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 71
    return-void
.end method
