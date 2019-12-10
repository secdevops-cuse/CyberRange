.class Landroid/support/v7/widget/DefaultItemAnimator$1;
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

.field final synthetic val$moves:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/DefaultItemAnimator;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 116
    iput-object p1, p0, Landroid/support/v7/widget/DefaultItemAnimator$1;->this$0:Landroid/support/v7/widget/DefaultItemAnimator;

    iput-object p2, p0, Landroid/support/v7/widget/DefaultItemAnimator$1;->val$moves:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 119
    iget-object v0, p0, Landroid/support/v7/widget/DefaultItemAnimator$1;->val$moves:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/support/v7/widget/DefaultItemAnimator$MoveInfo;

    .line 120
    .local v7, "moveInfo":Landroid/support/v7/widget/DefaultItemAnimator$MoveInfo;
    iget-object v0, p0, Landroid/support/v7/widget/DefaultItemAnimator$1;->this$0:Landroid/support/v7/widget/DefaultItemAnimator;

    iget-object v1, v7, Landroid/support/v7/widget/DefaultItemAnimator$MoveInfo;->holder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    iget v2, v7, Landroid/support/v7/widget/DefaultItemAnimator$MoveInfo;->fromX:I

    iget v3, v7, Landroid/support/v7/widget/DefaultItemAnimator$MoveInfo;->fromY:I

    iget v4, v7, Landroid/support/v7/widget/DefaultItemAnimator$MoveInfo;->toX:I

    iget v5, v7, Landroid/support/v7/widget/DefaultItemAnimator$MoveInfo;->toY:I

    # invokes: Landroid/support/v7/widget/DefaultItemAnimator;->animateMoveImpl(Landroid/support/v7/widget/RecyclerView$ViewHolder;IIII)V
    invoke-static/range {v0 .. v5}, Landroid/support/v7/widget/DefaultItemAnimator;->access$000(Landroid/support/v7/widget/DefaultItemAnimator;Landroid/support/v7/widget/RecyclerView$ViewHolder;IIII)V

    goto :goto_0

    .line 123
    .end local v7    # "moveInfo":Landroid/support/v7/widget/DefaultItemAnimator$MoveInfo;
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/DefaultItemAnimator$1;->val$moves:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 124
    iget-object v0, p0, Landroid/support/v7/widget/DefaultItemAnimator$1;->this$0:Landroid/support/v7/widget/DefaultItemAnimator;

    # getter for: Landroid/support/v7/widget/DefaultItemAnimator;->mMovesList:Ljava/util/ArrayList;
    invoke-static {v0}, Landroid/support/v7/widget/DefaultItemAnimator;->access$100(Landroid/support/v7/widget/DefaultItemAnimator;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/widget/DefaultItemAnimator$1;->val$moves:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 125
    return-void
.end method
