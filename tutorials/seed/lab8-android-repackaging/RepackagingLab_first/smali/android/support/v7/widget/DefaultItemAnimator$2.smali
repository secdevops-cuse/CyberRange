.class Landroid/support/v7/widget/DefaultItemAnimator$2;
.super Ljava/lang/Object;
.source "DefaultItemAnimator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v7/widget/DefaultItemAnimator;->runPendingAnimations()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v7/widget/DefaultItemAnimator;

.field final synthetic val$changes:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/DefaultItemAnimator;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 140
    iput-object p1, p0, Landroid/support/v7/widget/DefaultItemAnimator$2;->this$0:Landroid/support/v7/widget/DefaultItemAnimator;

    iput-object p2, p0, Landroid/support/v7/widget/DefaultItemAnimator$2;->val$changes:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 143
    iget-object v2, p0, Landroid/support/v7/widget/DefaultItemAnimator$2;->val$changes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/DefaultItemAnimator$ChangeInfo;

    .line 144
    .local v0, "change":Landroid/support/v7/widget/DefaultItemAnimator$ChangeInfo;
    iget-object v2, p0, Landroid/support/v7/widget/DefaultItemAnimator$2;->this$0:Landroid/support/v7/widget/DefaultItemAnimator;

    # invokes: Landroid/support/v7/widget/DefaultItemAnimator;->animateChangeImpl(Landroid/support/v7/widget/DefaultItemAnimator$ChangeInfo;)V
    invoke-static {v2, v0}, Landroid/support/v7/widget/DefaultItemAnimator;->access$200(Landroid/support/v7/widget/DefaultItemAnimator;Landroid/support/v7/widget/DefaultItemAnimator$ChangeInfo;)V

    goto :goto_0

    .line 146
    .end local v0    # "change":Landroid/support/v7/widget/DefaultItemAnimator$ChangeInfo;
    :cond_0
    iget-object v2, p0, Landroid/support/v7/widget/DefaultItemAnimator$2;->val$changes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 147
    iget-object v2, p0, Landroid/support/v7/widget/DefaultItemAnimator$2;->this$0:Landroid/support/v7/widget/DefaultItemAnimator;

    # getter for: Landroid/support/v7/widget/DefaultItemAnimator;->mChangesList:Ljava/util/ArrayList;
    invoke-static {v2}, Landroid/support/v7/widget/DefaultItemAnimator;->access$300(Landroid/support/v7/widget/DefaultItemAnimator;)Ljava/util/ArrayList;

    move-result-object v2

    iget-object v3, p0, Landroid/support/v7/widget/DefaultItemAnimator$2;->val$changes:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 148
    return-void
.end method
