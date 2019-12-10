.class Landroid/support/v7/view/ViewPropertyAnimatorCompatSet$1;
.super Landroid/support/v4/view/ViewPropertyAnimatorListenerAdapter;
.source "ViewPropertyAnimatorCompatSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/view/ViewPropertyAnimatorCompatSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mProxyEndCount:I

.field private mProxyStarted:Z

.field final synthetic this$0:Landroid/support/v7/view/ViewPropertyAnimatorCompatSet;


# direct methods
.method constructor <init>(Landroid/support/v7/view/ViewPropertyAnimatorCompatSet;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 116
    iput-object p1, p0, Landroid/support/v7/view/ViewPropertyAnimatorCompatSet$1;->this$0:Landroid/support/v7/view/ViewPropertyAnimatorCompatSet;

    invoke-direct {p0}, Landroid/support/v4/view/ViewPropertyAnimatorListenerAdapter;-><init>()V

    .line 117
    iput-boolean v0, p0, Landroid/support/v7/view/ViewPropertyAnimatorCompatSet$1;->mProxyStarted:Z

    .line 118
    iput v0, p0, Landroid/support/v7/view/ViewPropertyAnimatorCompatSet$1;->mProxyEndCount:I

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 139
    iget v0, p0, Landroid/support/v7/view/ViewPropertyAnimatorCompatSet$1;->mProxyEndCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/support/v7/view/ViewPropertyAnimatorCompatSet$1;->mProxyEndCount:I

    iget-object v1, p0, Landroid/support/v7/view/ViewPropertyAnimatorCompatSet$1;->this$0:Landroid/support/v7/view/ViewPropertyAnimatorCompatSet;

    # getter for: Landroid/support/v7/view/ViewPropertyAnimatorCompatSet;->mAnimators:Ljava/util/ArrayList;
    invoke-static {v1}, Landroid/support/v7/view/ViewPropertyAnimatorCompatSet;->access$200(Landroid/support/v7/view/ViewPropertyAnimatorCompatSet;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 140
    iget-object v0, p0, Landroid/support/v7/view/ViewPropertyAnimatorCompatSet$1;->this$0:Landroid/support/v7/view/ViewPropertyAnimatorCompatSet;

    # getter for: Landroid/support/v7/view/ViewPropertyAnimatorCompatSet;->mListener:Landroid/support/v4/view/ViewPropertyAnimatorListener;
    invoke-static {v0}, Landroid/support/v7/view/ViewPropertyAnimatorCompatSet;->access$000(Landroid/support/v7/view/ViewPropertyAnimatorCompatSet;)Landroid/support/v4/view/ViewPropertyAnimatorListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Landroid/support/v7/view/ViewPropertyAnimatorCompatSet$1;->this$0:Landroid/support/v7/view/ViewPropertyAnimatorCompatSet;

    # getter for: Landroid/support/v7/view/ViewPropertyAnimatorCompatSet;->mListener:Landroid/support/v4/view/ViewPropertyAnimatorListener;
    invoke-static {v0}, Landroid/support/v7/view/ViewPropertyAnimatorCompatSet;->access$000(Landroid/support/v7/view/ViewPropertyAnimatorCompatSet;)Landroid/support/v4/view/ViewPropertyAnimatorListener;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorListener;->onAnimationEnd(Landroid/view/View;)V

    .line 143
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/view/ViewPropertyAnimatorCompatSet$1;->onEnd()V

    .line 145
    :cond_1
    return-void
.end method

.method public onAnimationStart(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 122
    iget-boolean v0, p0, Landroid/support/v7/view/ViewPropertyAnimatorCompatSet$1;->mProxyStarted:Z

    if-eqz v0, :cond_1

    .line 129
    :cond_0
    :goto_0
    return-void

    .line 125
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/view/ViewPropertyAnimatorCompatSet$1;->mProxyStarted:Z

    .line 126
    iget-object v0, p0, Landroid/support/v7/view/ViewPropertyAnimatorCompatSet$1;->this$0:Landroid/support/v7/view/ViewPropertyAnimatorCompatSet;

    # getter for: Landroid/support/v7/view/ViewPropertyAnimatorCompatSet;->mListener:Landroid/support/v4/view/ViewPropertyAnimatorListener;
    invoke-static {v0}, Landroid/support/v7/view/ViewPropertyAnimatorCompatSet;->access$000(Landroid/support/v7/view/ViewPropertyAnimatorCompatSet;)Landroid/support/v4/view/ViewPropertyAnimatorListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Landroid/support/v7/view/ViewPropertyAnimatorCompatSet$1;->this$0:Landroid/support/v7/view/ViewPropertyAnimatorCompatSet;

    # getter for: Landroid/support/v7/view/ViewPropertyAnimatorCompatSet;->mListener:Landroid/support/v4/view/ViewPropertyAnimatorListener;
    invoke-static {v0}, Landroid/support/v7/view/ViewPropertyAnimatorCompatSet;->access$000(Landroid/support/v7/view/ViewPropertyAnimatorCompatSet;)Landroid/support/v4/view/ViewPropertyAnimatorListener;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorListener;->onAnimationStart(Landroid/view/View;)V

    goto :goto_0
.end method

.method onEnd()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 132
    iput v0, p0, Landroid/support/v7/view/ViewPropertyAnimatorCompatSet$1;->mProxyEndCount:I

    .line 133
    iput-boolean v0, p0, Landroid/support/v7/view/ViewPropertyAnimatorCompatSet$1;->mProxyStarted:Z

    .line 134
    iget-object v0, p0, Landroid/support/v7/view/ViewPropertyAnimatorCompatSet$1;->this$0:Landroid/support/v7/view/ViewPropertyAnimatorCompatSet;

    # invokes: Landroid/support/v7/view/ViewPropertyAnimatorCompatSet;->onAnimationsEnded()V
    invoke-static {v0}, Landroid/support/v7/view/ViewPropertyAnimatorCompatSet;->access$100(Landroid/support/v7/view/ViewPropertyAnimatorCompatSet;)V

    .line 135
    return-void
.end method
