.class Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinder;
.super Landroid/support/v4/media/IMediaBrowserServiceCompat$Stub;
.source "MediaBrowserServiceCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/MediaBrowserServiceCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ServiceBinder"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v4/media/MediaBrowserServiceCompat;


# direct methods
.method private constructor <init>(Landroid/support/v4/media/MediaBrowserServiceCompat;)V
    .locals 0

    .prologue
    .line 157
    iput-object p1, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinder;->this$0:Landroid/support/v4/media/MediaBrowserServiceCompat;

    invoke-direct {p0}, Landroid/support/v4/media/IMediaBrowserServiceCompat$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v4/media/MediaBrowserServiceCompat;Landroid/support/v4/media/MediaBrowserServiceCompat$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/support/v4/media/MediaBrowserServiceCompat;
    .param p2, "x1"    # Landroid/support/v4/media/MediaBrowserServiceCompat$1;

    .prologue
    .line 157
    invoke-direct {p0, p1}, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinder;-><init>(Landroid/support/v4/media/MediaBrowserServiceCompat;)V

    return-void
.end method


# virtual methods
.method public addSubscription(Ljava/lang/String;Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks;)V
    .locals 2
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "callbacks"    # Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks;

    .prologue
    .line 231
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinder;->this$0:Landroid/support/v4/media/MediaBrowserServiceCompat;

    # getter for: Landroid/support/v4/media/MediaBrowserServiceCompat;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Landroid/support/v4/media/MediaBrowserServiceCompat;->access$300(Landroid/support/v4/media/MediaBrowserServiceCompat;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinder$3;

    invoke-direct {v1, p0, p2, p1}, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinder$3;-><init>(Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinder;Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 247
    return-void
.end method

.method public connect(Ljava/lang/String;Landroid/os/Bundle;Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks;)V
    .locals 7
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "rootHints"    # Landroid/os/Bundle;
    .param p3, "callbacks"    # Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks;

    .prologue
    .line 162
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    .line 163
    .local v5, "uid":I
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinder;->this$0:Landroid/support/v4/media/MediaBrowserServiceCompat;

    # invokes: Landroid/support/v4/media/MediaBrowserServiceCompat;->isValidPackage(Ljava/lang/String;I)Z
    invoke-static {v0, p1, v5}, Landroid/support/v4/media/MediaBrowserServiceCompat;->access$000(Landroid/support/v4/media/MediaBrowserServiceCompat;Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 164
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Package/uid mismatch: uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " package="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 168
    :cond_0
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinder;->this$0:Landroid/support/v4/media/MediaBrowserServiceCompat;

    # getter for: Landroid/support/v4/media/MediaBrowserServiceCompat;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Landroid/support/v4/media/MediaBrowserServiceCompat;->access$300(Landroid/support/v4/media/MediaBrowserServiceCompat;)Landroid/os/Handler;

    move-result-object v6

    new-instance v0, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinder$1;

    move-object v1, p0

    move-object v2, p3

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinder$1;-><init>(Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinder;Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks;Ljava/lang/String;Landroid/os/Bundle;I)V

    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 209
    return-void
.end method

.method public disconnect(Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks;)V
    .locals 2
    .param p1, "callbacks"    # Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks;

    .prologue
    .line 213
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinder;->this$0:Landroid/support/v4/media/MediaBrowserServiceCompat;

    # getter for: Landroid/support/v4/media/MediaBrowserServiceCompat;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Landroid/support/v4/media/MediaBrowserServiceCompat;->access$300(Landroid/support/v4/media/MediaBrowserServiceCompat;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinder$2;

    invoke-direct {v1, p0, p1}, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinder$2;-><init>(Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinder;Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 225
    return-void
.end method

.method public getMediaItem(Ljava/lang/String;Landroid/support/v4/os/ResultReceiver;)V
    .locals 2
    .param p1, "mediaId"    # Ljava/lang/String;
    .param p2, "receiver"    # Landroid/support/v4/os/ResultReceiver;

    .prologue
    .line 273
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p2, :cond_1

    .line 283
    :cond_0
    :goto_0
    return-void

    .line 277
    :cond_1
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinder;->this$0:Landroid/support/v4/media/MediaBrowserServiceCompat;

    # getter for: Landroid/support/v4/media/MediaBrowserServiceCompat;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Landroid/support/v4/media/MediaBrowserServiceCompat;->access$300(Landroid/support/v4/media/MediaBrowserServiceCompat;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinder$5;

    invoke-direct {v1, p0, p1, p2}, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinder$5;-><init>(Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinder;Ljava/lang/String;Landroid/support/v4/os/ResultReceiver;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public removeSubscription(Ljava/lang/String;Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks;)V
    .locals 2
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "callbacks"    # Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks;

    .prologue
    .line 252
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinder;->this$0:Landroid/support/v4/media/MediaBrowserServiceCompat;

    # getter for: Landroid/support/v4/media/MediaBrowserServiceCompat;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Landroid/support/v4/media/MediaBrowserServiceCompat;->access$300(Landroid/support/v4/media/MediaBrowserServiceCompat;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinder$4;

    invoke-direct {v1, p0, p2, p1}, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinder$4;-><init>(Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinder;Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 269
    return-void
.end method
