.class Landroid/support/v4/content/ExecutorCompatHoneycomb;
.super Ljava/lang/Object;
.source "ExecutorCompatHoneycomb.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getParallelExecutor()Ljava/util/concurrent/Executor;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    return-object v0
.end method
