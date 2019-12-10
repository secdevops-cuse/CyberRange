.class public Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
.super Ljava/lang/Object;
.source "RecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/RecyclerView$ItemAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ItemHolderInfo"
.end annotation


# instance fields
.field public bottom:I

.field public changeFlags:I

.field public left:I

.field public right:I

.field public top:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10209
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10210
    return-void
.end method


# virtual methods
.method public setFrom(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
    .locals 1
    .param p1, "holder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .prologue
    .line 10220
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->setFrom(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    move-result-object v0

    return-object v0
.end method

.method public setFrom(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
    .locals 2
    .param p1, "holder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .param p2, "flags"    # I

    .prologue
    .line 10235
    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 10236
    .local v0, "view":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v1

    iput v1, p0, Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->left:I

    .line 10237
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v1

    iput v1, p0, Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->top:I

    .line 10238
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v1

    iput v1, p0, Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->right:I

    .line 10239
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v1

    iput v1, p0, Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->bottom:I

    .line 10240
    return-object p0
.end method
