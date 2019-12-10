.class Landroid/support/v7/util/MessageThreadUtil$2;
.super Ljava/lang/Object;
.source "MessageThreadUtil.java"

# interfaces
.implements Landroid/support/v7/util/ThreadUtil$BackgroundCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v7/util/MessageThreadUtil;->getBackgroundProxy(Landroid/support/v7/util/ThreadUtil$BackgroundCallback;)Landroid/support/v7/util/ThreadUtil$BackgroundCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/support/v7/util/ThreadUtil$BackgroundCallback",
        "<TT;>;"
    }
.end annotation


# static fields
.field private static final LOAD_TILE:I = 0x3

.field private static final RECYCLE_TILE:I = 0x4

.field private static final REFRESH:I = 0x1

.field private static final UPDATE_RANGE:I = 0x2


# instance fields
.field private mBackgroundRunnable:Ljava/lang/Runnable;

.field mBackgroundRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mExecutor:Ljava/util/concurrent/Executor;

.field private final mQueue:Landroid/support/v7/util/MessageThreadUtil$MessageQueue;

.field final synthetic this$0:Landroid/support/v7/util/MessageThreadUtil;

.field final synthetic val$callback:Landroid/support/v7/util/ThreadUtil$BackgroundCallback;


# direct methods
.method constructor <init>(Landroid/support/v7/util/MessageThreadUtil;Landroid/support/v7/util/ThreadUtil$BackgroundCallback;)V
    .locals 2

    .prologue
    .line 85
    .local p0, "this":Landroid/support/v7/util/MessageThreadUtil$2;, "Landroid/support/v7/util/MessageThreadUtil.2;"
    iput-object p1, p0, Landroid/support/v7/util/MessageThreadUtil$2;->this$0:Landroid/support/v7/util/MessageThreadUtil;

    iput-object p2, p0, Landroid/support/v7/util/MessageThreadUtil$2;->val$callback:Landroid/support/v7/util/ThreadUtil$BackgroundCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    new-instance v0, Landroid/support/v7/util/MessageThreadUtil$MessageQueue;

    invoke-direct {v0}, Landroid/support/v7/util/MessageThreadUtil$MessageQueue;-><init>()V

    iput-object v0, p0, Landroid/support/v7/util/MessageThreadUtil$2;->mQueue:Landroid/support/v7/util/MessageThreadUtil$MessageQueue;

    .line 87
    invoke-static {}, Landroid/support/v4/content/ParallelExecutorCompat;->getParallelExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/util/MessageThreadUtil$2;->mExecutor:Ljava/util/concurrent/Executor;

    .line 88
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Landroid/support/v7/util/MessageThreadUtil$2;->mBackgroundRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 133
    new-instance v0, Landroid/support/v7/util/MessageThreadUtil$2$1;

    invoke-direct {v0, p0}, Landroid/support/v7/util/MessageThreadUtil$2$1;-><init>(Landroid/support/v7/util/MessageThreadUtil$2;)V

    iput-object v0, p0, Landroid/support/v7/util/MessageThreadUtil$2;->mBackgroundRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$100(Landroid/support/v7/util/MessageThreadUtil$2;)Landroid/support/v7/util/MessageThreadUtil$MessageQueue;
    .locals 1
    .param p0, "x0"    # Landroid/support/v7/util/MessageThreadUtil$2;

    .prologue
    .line 85
    iget-object v0, p0, Landroid/support/v7/util/MessageThreadUtil$2;->mQueue:Landroid/support/v7/util/MessageThreadUtil$MessageQueue;

    return-object v0
.end method

.method private maybeExecuteBackgroundRunnable()V
    .locals 3

    .prologue
    .line 128
    .local p0, "this":Landroid/support/v7/util/MessageThreadUtil$2;, "Landroid/support/v7/util/MessageThreadUtil.2;"
    iget-object v0, p0, Landroid/support/v7/util/MessageThreadUtil$2;->mBackgroundRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Landroid/support/v7/util/MessageThreadUtil$2;->mExecutor:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Landroid/support/v7/util/MessageThreadUtil$2;->mBackgroundRunnable:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 131
    :cond_0
    return-void
.end method

.method private sendMessage(Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;)V
    .locals 1
    .param p1, "msg"    # Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;

    .prologue
    .line 118
    .local p0, "this":Landroid/support/v7/util/MessageThreadUtil$2;, "Landroid/support/v7/util/MessageThreadUtil.2;"
    iget-object v0, p0, Landroid/support/v7/util/MessageThreadUtil$2;->mQueue:Landroid/support/v7/util/MessageThreadUtil$MessageQueue;

    invoke-virtual {v0, p1}, Landroid/support/v7/util/MessageThreadUtil$MessageQueue;->sendMessage(Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;)V

    .line 119
    invoke-direct {p0}, Landroid/support/v7/util/MessageThreadUtil$2;->maybeExecuteBackgroundRunnable()V

    .line 120
    return-void
.end method

.method private sendMessageAtFrontOfQueue(Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;)V
    .locals 1
    .param p1, "msg"    # Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;

    .prologue
    .line 123
    .local p0, "this":Landroid/support/v7/util/MessageThreadUtil$2;, "Landroid/support/v7/util/MessageThreadUtil.2;"
    iget-object v0, p0, Landroid/support/v7/util/MessageThreadUtil$2;->mQueue:Landroid/support/v7/util/MessageThreadUtil$MessageQueue;

    invoke-virtual {v0, p1}, Landroid/support/v7/util/MessageThreadUtil$MessageQueue;->sendMessageAtFrontOfQueue(Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;)V

    .line 124
    invoke-direct {p0}, Landroid/support/v7/util/MessageThreadUtil$2;->maybeExecuteBackgroundRunnable()V

    .line 125
    return-void
.end method


# virtual methods
.method public loadTile(II)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "scrollHint"    # I

    .prologue
    .line 109
    .local p0, "this":Landroid/support/v7/util/MessageThreadUtil$2;, "Landroid/support/v7/util/MessageThreadUtil.2;"
    const/4 v0, 0x3

    invoke-static {v0, p1, p2}, Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;->obtainMessage(III)Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/support/v7/util/MessageThreadUtil$2;->sendMessage(Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;)V

    .line 110
    return-void
.end method

.method public recycleTile(Landroid/support/v7/util/TileList$Tile;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v7/util/TileList$Tile",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 114
    .local p0, "this":Landroid/support/v7/util/MessageThreadUtil$2;, "Landroid/support/v7/util/MessageThreadUtil.2;"
    .local p1, "tile":Landroid/support/v7/util/TileList$Tile;, "Landroid/support/v7/util/TileList$Tile<TT;>;"
    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;->obtainMessage(IILjava/lang/Object;)Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/support/v7/util/MessageThreadUtil$2;->sendMessage(Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;)V

    .line 115
    return-void
.end method

.method public refresh(I)V
    .locals 2
    .param p1, "generation"    # I

    .prologue
    .line 97
    .local p0, "this":Landroid/support/v7/util/MessageThreadUtil$2;, "Landroid/support/v7/util/MessageThreadUtil.2;"
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;->obtainMessage(IILjava/lang/Object;)Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/support/v7/util/MessageThreadUtil$2;->sendMessageAtFrontOfQueue(Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;)V

    .line 98
    return-void
.end method

.method public updateRange(IIIII)V
    .locals 7
    .param p1, "rangeStart"    # I
    .param p2, "rangeEnd"    # I
    .param p3, "extRangeStart"    # I
    .param p4, "extRangeEnd"    # I
    .param p5, "scrollHint"    # I

    .prologue
    .line 103
    .local p0, "this":Landroid/support/v7/util/MessageThreadUtil$2;, "Landroid/support/v7/util/MessageThreadUtil.2;"
    const/4 v0, 0x2

    const/4 v6, 0x0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-static/range {v0 .. v6}, Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;->obtainMessage(IIIIIILjava/lang/Object;)Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/support/v7/util/MessageThreadUtil$2;->sendMessageAtFrontOfQueue(Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;)V

    .line 105
    return-void
.end method
