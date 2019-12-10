.class Landroid/support/v7/util/MessageThreadUtil;
.super Ljava/lang/Object;
.source "MessageThreadUtil.java"

# interfaces
.implements Landroid/support/v7/util/ThreadUtil;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/util/MessageThreadUtil$MessageQueue;,
        Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroid/support/v7/util/ThreadUtil",
        "<TT;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 27
    .local p0, "this":Landroid/support/v7/util/MessageThreadUtil;, "Landroid/support/v7/util/MessageThreadUtil<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 229
    return-void
.end method


# virtual methods
.method public getBackgroundProxy(Landroid/support/v7/util/ThreadUtil$BackgroundCallback;)Landroid/support/v7/util/ThreadUtil$BackgroundCallback;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v7/util/ThreadUtil$BackgroundCallback",
            "<TT;>;)",
            "Landroid/support/v7/util/ThreadUtil$BackgroundCallback",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 85
    .local p0, "this":Landroid/support/v7/util/MessageThreadUtil;, "Landroid/support/v7/util/MessageThreadUtil<TT;>;"
    .local p1, "callback":Landroid/support/v7/util/ThreadUtil$BackgroundCallback;, "Landroid/support/v7/util/ThreadUtil$BackgroundCallback<TT;>;"
    new-instance v0, Landroid/support/v7/util/MessageThreadUtil$2;

    invoke-direct {v0, p0, p1}, Landroid/support/v7/util/MessageThreadUtil$2;-><init>(Landroid/support/v7/util/MessageThreadUtil;Landroid/support/v7/util/ThreadUtil$BackgroundCallback;)V

    return-object v0
.end method

.method public getMainThreadProxy(Landroid/support/v7/util/ThreadUtil$MainThreadCallback;)Landroid/support/v7/util/ThreadUtil$MainThreadCallback;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v7/util/ThreadUtil$MainThreadCallback",
            "<TT;>;)",
            "Landroid/support/v7/util/ThreadUtil$MainThreadCallback",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 30
    .local p0, "this":Landroid/support/v7/util/MessageThreadUtil;, "Landroid/support/v7/util/MessageThreadUtil<TT;>;"
    .local p1, "callback":Landroid/support/v7/util/ThreadUtil$MainThreadCallback;, "Landroid/support/v7/util/ThreadUtil$MainThreadCallback<TT;>;"
    new-instance v0, Landroid/support/v7/util/MessageThreadUtil$1;

    invoke-direct {v0, p0, p1}, Landroid/support/v7/util/MessageThreadUtil$1;-><init>(Landroid/support/v7/util/MessageThreadUtil;Landroid/support/v7/util/ThreadUtil$MainThreadCallback;)V

    return-object v0
.end method
