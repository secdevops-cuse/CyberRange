.class Landroid/support/v7/util/MessageThreadUtil$MessageQueue;
.super Ljava/lang/Object;
.source "MessageThreadUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/util/MessageThreadUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MessageQueue"
.end annotation


# instance fields
.field private mRoot:Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 229
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method declared-synchronized next()Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;
    .locals 2

    .prologue
    .line 234
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Landroid/support/v7/util/MessageThreadUtil$MessageQueue;->mRoot:Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 235
    const/4 v0, 0x0

    .line 239
    :goto_0
    monitor-exit p0

    return-object v0

    .line 237
    :cond_0
    :try_start_1
    iget-object v0, p0, Landroid/support/v7/util/MessageThreadUtil$MessageQueue;->mRoot:Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;

    .line 238
    .local v0, "next":Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;
    iget-object v1, p0, Landroid/support/v7/util/MessageThreadUtil$MessageQueue;->mRoot:Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;

    # getter for: Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;->next:Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;
    invoke-static {v1}, Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;->access$200(Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;)Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v7/util/MessageThreadUtil$MessageQueue;->mRoot:Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 234
    .end local v0    # "next":Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method declared-synchronized removeMessages(I)V
    .locals 4
    .param p1, "what"    # I

    .prologue
    .line 260
    monitor-enter p0

    :goto_0
    :try_start_0
    iget-object v3, p0, Landroid/support/v7/util/MessageThreadUtil$MessageQueue;->mRoot:Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/support/v7/util/MessageThreadUtil$MessageQueue;->mRoot:Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;

    iget v3, v3, Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;->what:I

    if-ne v3, p1, :cond_0

    .line 261
    iget-object v0, p0, Landroid/support/v7/util/MessageThreadUtil$MessageQueue;->mRoot:Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;

    .line 262
    .local v0, "item":Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;
    iget-object v3, p0, Landroid/support/v7/util/MessageThreadUtil$MessageQueue;->mRoot:Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;

    # getter for: Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;->next:Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;
    invoke-static {v3}, Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;->access$200(Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;)Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;

    move-result-object v3

    iput-object v3, p0, Landroid/support/v7/util/MessageThreadUtil$MessageQueue;->mRoot:Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;

    .line 263
    invoke-virtual {v0}, Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;->recycle()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 260
    .end local v0    # "item":Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 265
    :cond_0
    :try_start_1
    iget-object v3, p0, Landroid/support/v7/util/MessageThreadUtil$MessageQueue;->mRoot:Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;

    if-eqz v3, :cond_2

    .line 266
    iget-object v2, p0, Landroid/support/v7/util/MessageThreadUtil$MessageQueue;->mRoot:Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;

    .line 267
    .local v2, "prev":Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;
    # getter for: Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;->next:Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;
    invoke-static {v2}, Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;->access$200(Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;)Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;

    move-result-object v0

    .line 268
    .restart local v0    # "item":Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;
    :goto_1
    if-eqz v0, :cond_2

    .line 269
    # getter for: Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;->next:Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;
    invoke-static {v0}, Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;->access$200(Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;)Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;

    move-result-object v1

    .line 270
    .local v1, "next":Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;
    iget v3, v0, Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;->what:I

    if-ne v3, p1, :cond_1

    .line 271
    # setter for: Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;->next:Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;
    invoke-static {v2, v1}, Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;->access$202(Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;)Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;

    .line 272
    invoke-virtual {v0}, Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;->recycle()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 276
    :goto_2
    move-object v0, v1

    .line 277
    goto :goto_1

    .line 274
    :cond_1
    move-object v2, v0

    goto :goto_2

    .line 279
    .end local v0    # "item":Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;
    .end local v1    # "next":Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;
    .end local v2    # "prev":Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;
    :cond_2
    monitor-exit p0

    return-void
.end method

.method declared-synchronized sendMessage(Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;)V
    .locals 2
    .param p1, "item"    # Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;

    .prologue
    .line 248
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Landroid/support/v7/util/MessageThreadUtil$MessageQueue;->mRoot:Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;

    if-nez v1, :cond_0

    .line 249
    iput-object p1, p0, Landroid/support/v7/util/MessageThreadUtil$MessageQueue;->mRoot:Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 257
    :goto_0
    monitor-exit p0

    return-void

    .line 252
    :cond_0
    :try_start_1
    iget-object v0, p0, Landroid/support/v7/util/MessageThreadUtil$MessageQueue;->mRoot:Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;

    .line 253
    .local v0, "last":Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;
    :goto_1
    # getter for: Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;->next:Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;
    invoke-static {v0}, Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;->access$200(Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;)Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 254
    # getter for: Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;->next:Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;
    invoke-static {v0}, Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;->access$200(Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;)Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;

    move-result-object v0

    goto :goto_1

    .line 256
    :cond_1
    # setter for: Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;->next:Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;
    invoke-static {v0, p1}, Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;->access$202(Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;)Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 248
    .end local v0    # "last":Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method declared-synchronized sendMessageAtFrontOfQueue(Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;)V
    .locals 1
    .param p1, "item"    # Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;

    .prologue
    .line 243
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/support/v7/util/MessageThreadUtil$MessageQueue;->mRoot:Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;

    # setter for: Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;->next:Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;
    invoke-static {p1, v0}, Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;->access$202(Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;)Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;

    .line 244
    iput-object p1, p0, Landroid/support/v7/util/MessageThreadUtil$MessageQueue;->mRoot:Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 245
    monitor-exit p0

    return-void

    .line 243
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
