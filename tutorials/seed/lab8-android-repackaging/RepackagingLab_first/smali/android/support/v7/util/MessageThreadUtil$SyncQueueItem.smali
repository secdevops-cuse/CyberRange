.class Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;
.super Ljava/lang/Object;
.source "MessageThreadUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/util/MessageThreadUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SyncQueueItem"
.end annotation


# static fields
.field private static sPool:Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;

.field private static final sPoolLock:Ljava/lang/Object;


# instance fields
.field public arg1:I

.field public arg2:I

.field public arg3:I

.field public arg4:I

.field public arg5:I

.field public data:Ljava/lang/Object;

.field private next:Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;

.field public what:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 176
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;->sPoolLock:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$200(Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;)Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;
    .locals 1
    .param p0, "x0"    # Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;

    .prologue
    .line 173
    iget-object v0, p0, Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;->next:Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;

    return-object v0
.end method

.method static synthetic access$202(Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;)Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;
    .locals 0
    .param p0, "x0"    # Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;
    .param p1, "x1"    # Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;

    .prologue
    .line 173
    iput-object p1, p0, Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;->next:Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;

    return-object p1
.end method

.method static obtainMessage(III)Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;
    .locals 7
    .param p0, "what"    # I
    .param p1, "arg1"    # I
    .param p2, "arg2"    # I

    .prologue
    const/4 v3, 0x0

    .line 221
    const/4 v6, 0x0

    move v0, p0

    move v1, p1

    move v2, p2

    move v4, v3

    move v5, v3

    invoke-static/range {v0 .. v6}, Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;->obtainMessage(IIIIIILjava/lang/Object;)Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;

    move-result-object v0

    return-object v0
.end method

.method static obtainMessage(IIIIIILjava/lang/Object;)Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;
    .locals 3
    .param p0, "what"    # I
    .param p1, "arg1"    # I
    .param p2, "arg2"    # I
    .param p3, "arg3"    # I
    .param p4, "arg4"    # I
    .param p5, "arg5"    # I
    .param p6, "data"    # Ljava/lang/Object;

    .prologue
    .line 200
    sget-object v2, Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;->sPoolLock:Ljava/lang/Object;

    monitor-enter v2

    .line 202
    :try_start_0
    sget-object v1, Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;->sPool:Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;

    if-nez v1, :cond_0

    .line 203
    new-instance v0, Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;

    invoke-direct {v0}, Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;-><init>()V

    .line 209
    .local v0, "item":Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;
    :goto_0
    iput p0, v0, Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;->what:I

    .line 210
    iput p1, v0, Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;->arg1:I

    .line 211
    iput p2, v0, Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;->arg2:I

    .line 212
    iput p3, v0, Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;->arg3:I

    .line 213
    iput p4, v0, Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;->arg4:I

    .line 214
    iput p5, v0, Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;->arg5:I

    .line 215
    iput-object p6, v0, Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;->data:Ljava/lang/Object;

    .line 216
    monitor-exit v2

    return-object v0

    .line 205
    .end local v0    # "item":Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;
    :cond_0
    sget-object v0, Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;->sPool:Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;

    .line 206
    .restart local v0    # "item":Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;
    sget-object v1, Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;->sPool:Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;

    iget-object v1, v1, Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;->next:Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;

    sput-object v1, Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;->sPool:Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;

    .line 207
    const/4 v1, 0x0

    iput-object v1, v0, Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;->next:Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;

    goto :goto_0

    .line 217
    .end local v0    # "item":Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method static obtainMessage(IILjava/lang/Object;)Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;
    .locals 7
    .param p0, "what"    # I
    .param p1, "arg1"    # I
    .param p2, "data"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x0

    .line 225
    move v0, p0

    move v1, p1

    move v3, v2

    move v4, v2

    move v5, v2

    move-object v6, p2

    invoke-static/range {v0 .. v6}, Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;->obtainMessage(IIIIIILjava/lang/Object;)Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method recycle()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 187
    iput-object v1, p0, Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;->next:Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;

    .line 188
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;->arg5:I

    iput v0, p0, Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;->arg4:I

    iput v0, p0, Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;->arg3:I

    iput v0, p0, Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;->arg2:I

    iput v0, p0, Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;->arg1:I

    iput v0, p0, Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;->what:I

    .line 189
    iput-object v1, p0, Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;->data:Ljava/lang/Object;

    .line 190
    sget-object v1, Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;->sPoolLock:Ljava/lang/Object;

    monitor-enter v1

    .line 191
    :try_start_0
    sget-object v0, Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;->sPool:Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;

    if-eqz v0, :cond_0

    .line 192
    sget-object v0, Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;->sPool:Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;

    iput-object v0, p0, Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;->next:Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;

    .line 194
    :cond_0
    sput-object p0, Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;->sPool:Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;

    .line 195
    monitor-exit v1

    .line 196
    return-void

    .line 195
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
