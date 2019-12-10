.class Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinder$4;
.super Ljava/lang/Object;
.source "MediaBrowserServiceCompat.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinder;->removeSubscription(Ljava/lang/String;Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinder;

.field final synthetic val$callbacks:Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks;

.field final synthetic val$id:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinder;Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 252
    iput-object p1, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinder$4;->this$1:Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinder;

    iput-object p2, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinder$4;->val$callbacks:Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks;

    iput-object p3, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinder$4;->val$id:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 255
    iget-object v2, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinder$4;->val$callbacks:Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks;

    invoke-interface {v2}, Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 257
    .local v0, "b":Landroid/os/IBinder;
    iget-object v2, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinder$4;->this$1:Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinder;

    iget-object v2, v2, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinder;->this$0:Landroid/support/v4/media/MediaBrowserServiceCompat;

    # getter for: Landroid/support/v4/media/MediaBrowserServiceCompat;->mConnections:Landroid/support/v4/util/ArrayMap;
    invoke-static {v2}, Landroid/support/v4/media/MediaBrowserServiceCompat;->access$100(Landroid/support/v4/media/MediaBrowserServiceCompat;)Landroid/support/v4/util/ArrayMap;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/media/MediaBrowserServiceCompat$ConnectionRecord;

    .line 258
    .local v1, "connection":Landroid/support/v4/media/MediaBrowserServiceCompat$ConnectionRecord;
    if-nez v1, :cond_1

    .line 259
    const-string v2, "MediaBrowserServiceCompat"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "removeSubscription for callback that isn\'t registered id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinder$4;->val$id:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    :cond_0
    :goto_0
    return-void

    .line 263
    :cond_1
    iget-object v2, v1, Landroid/support/v4/media/MediaBrowserServiceCompat$ConnectionRecord;->subscriptions:Ljava/util/HashSet;

    iget-object v3, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinder$4;->val$id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 264
    const-string v2, "MediaBrowserServiceCompat"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "removeSubscription called for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinder$4;->val$id:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " which is not subscribed"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
