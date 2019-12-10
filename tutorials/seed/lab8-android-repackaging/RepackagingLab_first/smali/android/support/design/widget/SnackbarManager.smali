.class Landroid/support/design/widget/SnackbarManager;
.super Ljava/lang/Object;
.source "SnackbarManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/design/widget/SnackbarManager$SnackbarRecord;,
        Landroid/support/design/widget/SnackbarManager$Callback;
    }
.end annotation


# static fields
.field private static final LONG_DURATION_MS:I = 0xabe

.field private static final MSG_TIMEOUT:I = 0x0

.field private static final SHORT_DURATION_MS:I = 0x5dc

.field private static sSnackbarManager:Landroid/support/design/widget/SnackbarManager;


# instance fields
.field private mCurrentSnackbar:Landroid/support/design/widget/SnackbarManager$SnackbarRecord;

.field private final mHandler:Landroid/os/Handler;

.field private final mLock:Ljava/lang/Object;

.field private mNextSnackbar:Landroid/support/design/widget/SnackbarManager$SnackbarRecord;


# direct methods
.method private constructor <init>()V
    .locals 3

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/support/design/widget/SnackbarManager;->mLock:Ljava/lang/Object;

    .line 52
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Landroid/support/design/widget/SnackbarManager$1;

    invoke-direct {v2, p0}, Landroid/support/design/widget/SnackbarManager$1;-><init>(Landroid/support/design/widget/SnackbarManager;)V

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Landroid/support/design/widget/SnackbarManager;->mHandler:Landroid/os/Handler;

    .line 63
    return-void
.end method

.method static synthetic access$000(Landroid/support/design/widget/SnackbarManager;Landroid/support/design/widget/SnackbarManager$SnackbarRecord;)V
    .locals 0
    .param p0, "x0"    # Landroid/support/design/widget/SnackbarManager;
    .param p1, "x1"    # Landroid/support/design/widget/SnackbarManager$SnackbarRecord;

    .prologue
    .line 28
    invoke-direct {p0, p1}, Landroid/support/design/widget/SnackbarManager;->handleTimeout(Landroid/support/design/widget/SnackbarManager$SnackbarRecord;)V

    return-void
.end method

.method private cancelSnackbarLocked(Landroid/support/design/widget/SnackbarManager$SnackbarRecord;I)Z
    .locals 2
    .param p1, "record"    # Landroid/support/design/widget/SnackbarManager$SnackbarRecord;
    .param p2, "event"    # I

    .prologue
    .line 198
    # getter for: Landroid/support/design/widget/SnackbarManager$SnackbarRecord;->callback:Ljava/lang/ref/WeakReference;
    invoke-static {p1}, Landroid/support/design/widget/SnackbarManager$SnackbarRecord;->access$200(Landroid/support/design/widget/SnackbarManager$SnackbarRecord;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/SnackbarManager$Callback;

    .line 199
    .local v0, "callback":Landroid/support/design/widget/SnackbarManager$Callback;
    if-eqz v0, :cond_0

    .line 200
    invoke-interface {v0, p2}, Landroid/support/design/widget/SnackbarManager$Callback;->dismiss(I)V

    .line 201
    const/4 v1, 0x1

    .line 203
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method static getInstance()Landroid/support/design/widget/SnackbarManager;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Landroid/support/design/widget/SnackbarManager;->sSnackbarManager:Landroid/support/design/widget/SnackbarManager;

    if-nez v0, :cond_0

    .line 39
    new-instance v0, Landroid/support/design/widget/SnackbarManager;

    invoke-direct {v0}, Landroid/support/design/widget/SnackbarManager;-><init>()V

    sput-object v0, Landroid/support/design/widget/SnackbarManager;->sSnackbarManager:Landroid/support/design/widget/SnackbarManager;

    .line 41
    :cond_0
    sget-object v0, Landroid/support/design/widget/SnackbarManager;->sSnackbarManager:Landroid/support/design/widget/SnackbarManager;

    return-object v0
.end method

.method private handleTimeout(Landroid/support/design/widget/SnackbarManager$SnackbarRecord;)V
    .locals 2
    .param p1, "record"    # Landroid/support/design/widget/SnackbarManager$SnackbarRecord;

    .prologue
    .line 231
    iget-object v1, p0, Landroid/support/design/widget/SnackbarManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 232
    :try_start_0
    iget-object v0, p0, Landroid/support/design/widget/SnackbarManager;->mCurrentSnackbar:Landroid/support/design/widget/SnackbarManager$SnackbarRecord;

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/SnackbarManager;->mNextSnackbar:Landroid/support/design/widget/SnackbarManager$SnackbarRecord;

    if-ne v0, p1, :cond_1

    .line 233
    :cond_0
    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Landroid/support/design/widget/SnackbarManager;->cancelSnackbarLocked(Landroid/support/design/widget/SnackbarManager$SnackbarRecord;I)Z

    .line 235
    :cond_1
    monitor-exit v1

    .line 236
    return-void

    .line 235
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private isCurrentSnackbarLocked(Landroid/support/design/widget/SnackbarManager$Callback;)Z
    .locals 1
    .param p1, "callback"    # Landroid/support/design/widget/SnackbarManager$Callback;

    .prologue
    .line 207
    iget-object v0, p0, Landroid/support/design/widget/SnackbarManager;->mCurrentSnackbar:Landroid/support/design/widget/SnackbarManager$SnackbarRecord;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/SnackbarManager;->mCurrentSnackbar:Landroid/support/design/widget/SnackbarManager$SnackbarRecord;

    invoke-virtual {v0, p1}, Landroid/support/design/widget/SnackbarManager$SnackbarRecord;->isSnackbar(Landroid/support/design/widget/SnackbarManager$Callback;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isNextSnackbarLocked(Landroid/support/design/widget/SnackbarManager$Callback;)Z
    .locals 1
    .param p1, "callback"    # Landroid/support/design/widget/SnackbarManager$Callback;

    .prologue
    .line 211
    iget-object v0, p0, Landroid/support/design/widget/SnackbarManager;->mNextSnackbar:Landroid/support/design/widget/SnackbarManager$SnackbarRecord;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/SnackbarManager;->mNextSnackbar:Landroid/support/design/widget/SnackbarManager$SnackbarRecord;

    invoke-virtual {v0, p1}, Landroid/support/design/widget/SnackbarManager$SnackbarRecord;->isSnackbar(Landroid/support/design/widget/SnackbarManager$Callback;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private scheduleTimeoutLocked(Landroid/support/design/widget/SnackbarManager$SnackbarRecord;)V
    .locals 6
    .param p1, "r"    # Landroid/support/design/widget/SnackbarManager$SnackbarRecord;

    .prologue
    .line 215
    # getter for: Landroid/support/design/widget/SnackbarManager$SnackbarRecord;->duration:I
    invoke-static {p1}, Landroid/support/design/widget/SnackbarManager$SnackbarRecord;->access$100(Landroid/support/design/widget/SnackbarManager$SnackbarRecord;)I

    move-result v1

    const/4 v2, -0x2

    if-ne v1, v2, :cond_0

    .line 228
    :goto_0
    return-void

    .line 220
    :cond_0
    const/16 v0, 0xabe

    .line 221
    .local v0, "durationMs":I
    # getter for: Landroid/support/design/widget/SnackbarManager$SnackbarRecord;->duration:I
    invoke-static {p1}, Landroid/support/design/widget/SnackbarManager$SnackbarRecord;->access$100(Landroid/support/design/widget/SnackbarManager$SnackbarRecord;)I

    move-result v1

    if-lez v1, :cond_2

    .line 222
    # getter for: Landroid/support/design/widget/SnackbarManager$SnackbarRecord;->duration:I
    invoke-static {p1}, Landroid/support/design/widget/SnackbarManager$SnackbarRecord;->access$100(Landroid/support/design/widget/SnackbarManager$SnackbarRecord;)I

    move-result v0

    .line 226
    :cond_1
    :goto_1
    iget-object v1, p0, Landroid/support/design/widget/SnackbarManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, p1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 227
    iget-object v1, p0, Landroid/support/design/widget/SnackbarManager;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Landroid/support/design/widget/SnackbarManager;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-static {v2, v3, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    int-to-long v4, v0

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 223
    :cond_2
    # getter for: Landroid/support/design/widget/SnackbarManager$SnackbarRecord;->duration:I
    invoke-static {p1}, Landroid/support/design/widget/SnackbarManager$SnackbarRecord;->access$100(Landroid/support/design/widget/SnackbarManager$SnackbarRecord;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 224
    const/16 v0, 0x5dc

    goto :goto_1
.end method

.method private showNextSnackbarLocked()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 183
    iget-object v1, p0, Landroid/support/design/widget/SnackbarManager;->mNextSnackbar:Landroid/support/design/widget/SnackbarManager$SnackbarRecord;

    if-eqz v1, :cond_0

    .line 184
    iget-object v1, p0, Landroid/support/design/widget/SnackbarManager;->mNextSnackbar:Landroid/support/design/widget/SnackbarManager$SnackbarRecord;

    iput-object v1, p0, Landroid/support/design/widget/SnackbarManager;->mCurrentSnackbar:Landroid/support/design/widget/SnackbarManager$SnackbarRecord;

    .line 185
    iput-object v2, p0, Landroid/support/design/widget/SnackbarManager;->mNextSnackbar:Landroid/support/design/widget/SnackbarManager$SnackbarRecord;

    .line 187
    iget-object v1, p0, Landroid/support/design/widget/SnackbarManager;->mCurrentSnackbar:Landroid/support/design/widget/SnackbarManager$SnackbarRecord;

    # getter for: Landroid/support/design/widget/SnackbarManager$SnackbarRecord;->callback:Ljava/lang/ref/WeakReference;
    invoke-static {v1}, Landroid/support/design/widget/SnackbarManager$SnackbarRecord;->access$200(Landroid/support/design/widget/SnackbarManager$SnackbarRecord;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/SnackbarManager$Callback;

    .line 188
    .local v0, "callback":Landroid/support/design/widget/SnackbarManager$Callback;
    if-eqz v0, :cond_1

    .line 189
    invoke-interface {v0}, Landroid/support/design/widget/SnackbarManager$Callback;->show()V

    .line 195
    .end local v0    # "callback":Landroid/support/design/widget/SnackbarManager$Callback;
    :cond_0
    :goto_0
    return-void

    .line 192
    .restart local v0    # "callback":Landroid/support/design/widget/SnackbarManager$Callback;
    :cond_1
    iput-object v2, p0, Landroid/support/design/widget/SnackbarManager;->mCurrentSnackbar:Landroid/support/design/widget/SnackbarManager$SnackbarRecord;

    goto :goto_0
.end method


# virtual methods
.method public cancelTimeout(Landroid/support/design/widget/SnackbarManager$Callback;)V
    .locals 3
    .param p1, "callback"    # Landroid/support/design/widget/SnackbarManager$Callback;

    .prologue
    .line 141
    iget-object v1, p0, Landroid/support/design/widget/SnackbarManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 142
    :try_start_0
    invoke-direct {p0, p1}, Landroid/support/design/widget/SnackbarManager;->isCurrentSnackbarLocked(Landroid/support/design/widget/SnackbarManager$Callback;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Landroid/support/design/widget/SnackbarManager;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Landroid/support/design/widget/SnackbarManager;->mCurrentSnackbar:Landroid/support/design/widget/SnackbarManager$SnackbarRecord;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 145
    :cond_0
    monitor-exit v1

    .line 146
    return-void

    .line 145
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public dismiss(Landroid/support/design/widget/SnackbarManager$Callback;I)V
    .locals 2
    .param p1, "callback"    # Landroid/support/design/widget/SnackbarManager$Callback;
    .param p2, "event"    # I

    .prologue
    .line 103
    iget-object v1, p0, Landroid/support/design/widget/SnackbarManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 104
    :try_start_0
    invoke-direct {p0, p1}, Landroid/support/design/widget/SnackbarManager;->isCurrentSnackbarLocked(Landroid/support/design/widget/SnackbarManager$Callback;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 105
    iget-object v0, p0, Landroid/support/design/widget/SnackbarManager;->mCurrentSnackbar:Landroid/support/design/widget/SnackbarManager$SnackbarRecord;

    invoke-direct {p0, v0, p2}, Landroid/support/design/widget/SnackbarManager;->cancelSnackbarLocked(Landroid/support/design/widget/SnackbarManager$SnackbarRecord;I)Z

    .line 109
    :cond_0
    :goto_0
    monitor-exit v1

    .line 110
    return-void

    .line 106
    :cond_1
    invoke-direct {p0, p1}, Landroid/support/design/widget/SnackbarManager;->isNextSnackbarLocked(Landroid/support/design/widget/SnackbarManager$Callback;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Landroid/support/design/widget/SnackbarManager;->mNextSnackbar:Landroid/support/design/widget/SnackbarManager$SnackbarRecord;

    invoke-direct {p0, v0, p2}, Landroid/support/design/widget/SnackbarManager;->cancelSnackbarLocked(Landroid/support/design/widget/SnackbarManager$SnackbarRecord;I)Z

    goto :goto_0

    .line 109
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isCurrent(Landroid/support/design/widget/SnackbarManager$Callback;)Z
    .locals 2
    .param p1, "callback"    # Landroid/support/design/widget/SnackbarManager$Callback;

    .prologue
    .line 157
    iget-object v1, p0, Landroid/support/design/widget/SnackbarManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 158
    :try_start_0
    invoke-direct {p0, p1}, Landroid/support/design/widget/SnackbarManager;->isCurrentSnackbarLocked(Landroid/support/design/widget/SnackbarManager$Callback;)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 159
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isCurrentOrNext(Landroid/support/design/widget/SnackbarManager$Callback;)Z
    .locals 2
    .param p1, "callback"    # Landroid/support/design/widget/SnackbarManager$Callback;

    .prologue
    .line 163
    iget-object v1, p0, Landroid/support/design/widget/SnackbarManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 164
    :try_start_0
    invoke-direct {p0, p1}, Landroid/support/design/widget/SnackbarManager;->isCurrentSnackbarLocked(Landroid/support/design/widget/SnackbarManager$Callback;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Landroid/support/design/widget/SnackbarManager;->isNextSnackbarLocked(Landroid/support/design/widget/SnackbarManager$Callback;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 165
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onDismissed(Landroid/support/design/widget/SnackbarManager$Callback;)V
    .locals 2
    .param p1, "callback"    # Landroid/support/design/widget/SnackbarManager$Callback;

    .prologue
    .line 117
    iget-object v1, p0, Landroid/support/design/widget/SnackbarManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 118
    :try_start_0
    invoke-direct {p0, p1}, Landroid/support/design/widget/SnackbarManager;->isCurrentSnackbarLocked(Landroid/support/design/widget/SnackbarManager$Callback;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 120
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/design/widget/SnackbarManager;->mCurrentSnackbar:Landroid/support/design/widget/SnackbarManager$SnackbarRecord;

    .line 121
    iget-object v0, p0, Landroid/support/design/widget/SnackbarManager;->mNextSnackbar:Landroid/support/design/widget/SnackbarManager$SnackbarRecord;

    if-eqz v0, :cond_0

    .line 122
    invoke-direct {p0}, Landroid/support/design/widget/SnackbarManager;->showNextSnackbarLocked()V

    .line 125
    :cond_0
    monitor-exit v1

    .line 126
    return-void

    .line 125
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onShown(Landroid/support/design/widget/SnackbarManager$Callback;)V
    .locals 2
    .param p1, "callback"    # Landroid/support/design/widget/SnackbarManager$Callback;

    .prologue
    .line 133
    iget-object v1, p0, Landroid/support/design/widget/SnackbarManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 134
    :try_start_0
    invoke-direct {p0, p1}, Landroid/support/design/widget/SnackbarManager;->isCurrentSnackbarLocked(Landroid/support/design/widget/SnackbarManager$Callback;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Landroid/support/design/widget/SnackbarManager;->mCurrentSnackbar:Landroid/support/design/widget/SnackbarManager$SnackbarRecord;

    invoke-direct {p0, v0}, Landroid/support/design/widget/SnackbarManager;->scheduleTimeoutLocked(Landroid/support/design/widget/SnackbarManager$SnackbarRecord;)V

    .line 137
    :cond_0
    monitor-exit v1

    .line 138
    return-void

    .line 137
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public restoreTimeout(Landroid/support/design/widget/SnackbarManager$Callback;)V
    .locals 2
    .param p1, "callback"    # Landroid/support/design/widget/SnackbarManager$Callback;

    .prologue
    .line 149
    iget-object v1, p0, Landroid/support/design/widget/SnackbarManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 150
    :try_start_0
    invoke-direct {p0, p1}, Landroid/support/design/widget/SnackbarManager;->isCurrentSnackbarLocked(Landroid/support/design/widget/SnackbarManager$Callback;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Landroid/support/design/widget/SnackbarManager;->mCurrentSnackbar:Landroid/support/design/widget/SnackbarManager$SnackbarRecord;

    invoke-direct {p0, v0}, Landroid/support/design/widget/SnackbarManager;->scheduleTimeoutLocked(Landroid/support/design/widget/SnackbarManager$SnackbarRecord;)V

    .line 153
    :cond_0
    monitor-exit v1

    .line 154
    return-void

    .line 153
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public show(ILandroid/support/design/widget/SnackbarManager$Callback;)V
    .locals 3
    .param p1, "duration"    # I
    .param p2, "callback"    # Landroid/support/design/widget/SnackbarManager$Callback;

    .prologue
    .line 71
    iget-object v1, p0, Landroid/support/design/widget/SnackbarManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 72
    :try_start_0
    invoke-direct {p0, p2}, Landroid/support/design/widget/SnackbarManager;->isCurrentSnackbarLocked(Landroid/support/design/widget/SnackbarManager$Callback;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Landroid/support/design/widget/SnackbarManager;->mCurrentSnackbar:Landroid/support/design/widget/SnackbarManager$SnackbarRecord;

    # setter for: Landroid/support/design/widget/SnackbarManager$SnackbarRecord;->duration:I
    invoke-static {v0, p1}, Landroid/support/design/widget/SnackbarManager$SnackbarRecord;->access$102(Landroid/support/design/widget/SnackbarManager$SnackbarRecord;I)I

    .line 78
    iget-object v0, p0, Landroid/support/design/widget/SnackbarManager;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Landroid/support/design/widget/SnackbarManager;->mCurrentSnackbar:Landroid/support/design/widget/SnackbarManager$SnackbarRecord;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 79
    iget-object v0, p0, Landroid/support/design/widget/SnackbarManager;->mCurrentSnackbar:Landroid/support/design/widget/SnackbarManager$SnackbarRecord;

    invoke-direct {p0, v0}, Landroid/support/design/widget/SnackbarManager;->scheduleTimeoutLocked(Landroid/support/design/widget/SnackbarManager$SnackbarRecord;)V

    .line 80
    monitor-exit v1

    .line 100
    :goto_0
    return-void

    .line 81
    :cond_0
    invoke-direct {p0, p2}, Landroid/support/design/widget/SnackbarManager;->isNextSnackbarLocked(Landroid/support/design/widget/SnackbarManager$Callback;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 83
    iget-object v0, p0, Landroid/support/design/widget/SnackbarManager;->mNextSnackbar:Landroid/support/design/widget/SnackbarManager$SnackbarRecord;

    # setter for: Landroid/support/design/widget/SnackbarManager$SnackbarRecord;->duration:I
    invoke-static {v0, p1}, Landroid/support/design/widget/SnackbarManager$SnackbarRecord;->access$102(Landroid/support/design/widget/SnackbarManager$SnackbarRecord;I)I

    .line 89
    :goto_1
    iget-object v0, p0, Landroid/support/design/widget/SnackbarManager;->mCurrentSnackbar:Landroid/support/design/widget/SnackbarManager$SnackbarRecord;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/design/widget/SnackbarManager;->mCurrentSnackbar:Landroid/support/design/widget/SnackbarManager$SnackbarRecord;

    const/4 v2, 0x4

    invoke-direct {p0, v0, v2}, Landroid/support/design/widget/SnackbarManager;->cancelSnackbarLocked(Landroid/support/design/widget/SnackbarManager$SnackbarRecord;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 92
    monitor-exit v1

    goto :goto_0

    .line 99
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 86
    :cond_1
    :try_start_1
    new-instance v0, Landroid/support/design/widget/SnackbarManager$SnackbarRecord;

    invoke-direct {v0, p1, p2}, Landroid/support/design/widget/SnackbarManager$SnackbarRecord;-><init>(ILandroid/support/design/widget/SnackbarManager$Callback;)V

    iput-object v0, p0, Landroid/support/design/widget/SnackbarManager;->mNextSnackbar:Landroid/support/design/widget/SnackbarManager$SnackbarRecord;

    goto :goto_1

    .line 95
    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/design/widget/SnackbarManager;->mCurrentSnackbar:Landroid/support/design/widget/SnackbarManager$SnackbarRecord;

    .line 97
    invoke-direct {p0}, Landroid/support/design/widget/SnackbarManager;->showNextSnackbarLocked()V

    .line 99
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method
