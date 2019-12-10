.class Landroid/support/design/widget/FloatingActionButtonHoneycombMr1$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "FloatingActionButtonHoneycombMr1.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/design/widget/FloatingActionButtonHoneycombMr1;->show(Landroid/support/design/widget/FloatingActionButtonImpl$InternalVisibilityChangedListener;)V
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
    .line 103
    iput-object p1, p0, Landroid/support/design/widget/FloatingActionButtonHoneycombMr1$2;->this$0:Landroid/support/design/widget/FloatingActionButtonHoneycombMr1;

    iput-object p2, p0, Landroid/support/design/widget/FloatingActionButtonHoneycombMr1$2;->val$listener:Landroid/support/design/widget/FloatingActionButtonImpl$InternalVisibilityChangedListener;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 111
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonHoneycombMr1$2;->val$listener:Landroid/support/design/widget/FloatingActionButtonImpl$InternalVisibilityChangedListener;

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonHoneycombMr1$2;->val$listener:Landroid/support/design/widget/FloatingActionButtonImpl$InternalVisibilityChangedListener;

    invoke-interface {v0}, Landroid/support/design/widget/FloatingActionButtonImpl$InternalVisibilityChangedListener;->onShown()V

    .line 114
    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 106
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonHoneycombMr1$2;->this$0:Landroid/support/design/widget/FloatingActionButtonHoneycombMr1;

    iget-object v0, v0, Landroid/support/design/widget/FloatingActionButtonHoneycombMr1;->mView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 107
    return-void
.end method
