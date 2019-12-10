.class Landroid/support/v7/widget/StaggeredGridLayoutManager$1;
.super Ljava/lang/Object;
.source "StaggeredGridLayoutManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/StaggeredGridLayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v7/widget/StaggeredGridLayoutManager;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/StaggeredGridLayoutManager;)V
    .locals 0

    .prologue
    .line 197
    iput-object p1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$1;->this$0:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$1;->this$0:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    # invokes: Landroid/support/v7/widget/StaggeredGridLayoutManager;->checkForGaps()Z
    invoke-static {v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->access$100(Landroid/support/v7/widget/StaggeredGridLayoutManager;)Z

    .line 201
    return-void
.end method
