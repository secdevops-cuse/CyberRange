.class Landroid/support/v7/widget/DefaultItemAnimator$3;
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

.field final synthetic val$additions:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/DefaultItemAnimator;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 163
    iput-object p1, p0, Landroid/support/v7/widget/DefaultItemAnimator$3;->this$0:Landroid/support/v7/widget/DefaultItemAnimator;

    iput-object p2, p0, Landroid/support/v7/widget/DefaultItemAnimator$3;->val$additions:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 165
    iget-object v2, p0, Landroid/support/v7/widget/DefaultItemAnimator$3;->val$additions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .line 166
    .local v0, "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    iget-object v2, p0, Landroid/support/v7/widget/DefaultItemAnimator$3;->this$0:Landroid/support/v7/widget/DefaultItemAnimator;

    # invokes: Landroid/support/v7/widget/DefaultItemAnimator;->animateAddImpl(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    invoke-static {v2, v0}, Landroid/support/v7/widget/DefaultItemAnimator;->access$400(Landroid/support/v7/widget/DefaultItemAnimator;Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    goto :goto_0

    .line 168
    .end local v0    # "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    :cond_0
    iget-object v2, p0, Landroid/support/v7/widget/DefaultItemAnimator$3;->val$additions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 169
    iget-object v2, p0, Landroid/support/v7/widget/DefaultItemAnimator$3;->this$0:Landroid/support/v7/widget/DefaultItemAnimator;

    # getter for: Landroid/support/v7/widget/DefaultItemAnimator;->mAdditionsList:Ljava/util/ArrayList;
    invoke-static {v2}, Landroid/support/v7/widget/DefaultItemAnimator;->access$500(Landroid/support/v7/widget/DefaultItemAnimator;)Ljava/util/ArrayList;

    move-result-object v2

    iget-object v3, p0, Landroid/support/v7/widget/DefaultItemAnimator$3;->val$additions:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 170
    return-void
.end method
