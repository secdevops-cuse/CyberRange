.class Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$5;
.super Ljava/lang/Object;
.source "MediaBrowserCompat.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->onServiceConnected(Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks;Ljava/lang/String;Landroid/support/v4/media/session/MediaSessionCompat$Token;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;

.field final synthetic val$callback:Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks;

.field final synthetic val$extra:Landroid/os/Bundle;

.field final synthetic val$root:Ljava/lang/String;

.field final synthetic val$session:Landroid/support/v4/media/session/MediaSessionCompat$Token;


# direct methods
.method constructor <init>(Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks;Ljava/lang/String;Landroid/support/v4/media/session/MediaSessionCompat$Token;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 689
    iput-object p1, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$5;->this$0:Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;

    iput-object p2, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$5;->val$callback:Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks;

    iput-object p3, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$5;->val$root:Ljava/lang/String;

    iput-object p4, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$5;->val$session:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    iput-object p5, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$5;->val$extra:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 694
    iget-object v3, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$5;->this$0:Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;

    iget-object v4, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$5;->val$callback:Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks;

    const-string v5, "onConnect"

    # invokes: Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->isCurrent(Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks;Ljava/lang/String;)Z
    invoke-static {v3, v4, v5}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->access$500(Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 726
    :cond_0
    :goto_0
    return-void

    .line 698
    :cond_1
    iget-object v3, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$5;->this$0:Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;

    # getter for: Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mState:I
    invoke-static {v3}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->access$600(Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;)I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_2

    .line 699
    const-string v3, "MediaBrowserCompat"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onConnect from service while mState="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$5;->this$0:Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;

    # getter for: Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mState:I
    invoke-static {v5}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->access$600(Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;)I

    move-result v5

    # invokes: Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->getStateLabel(I)Ljava/lang/String;
    invoke-static {v5}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->access$700(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "... ignoring"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 703
    :cond_2
    iget-object v3, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$5;->this$0:Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;

    iget-object v4, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$5;->val$root:Ljava/lang/String;

    # setter for: Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mRootId:Ljava/lang/String;
    invoke-static {v3, v4}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->access$802(Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;Ljava/lang/String;)Ljava/lang/String;

    .line 704
    iget-object v3, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$5;->this$0:Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;

    iget-object v4, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$5;->val$session:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    # setter for: Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mMediaSessionToken:Landroid/support/v4/media/session/MediaSessionCompat$Token;
    invoke-static {v3, v4}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->access$902(Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;Landroid/support/v4/media/session/MediaSessionCompat$Token;)Landroid/support/v4/media/session/MediaSessionCompat$Token;

    .line 705
    iget-object v3, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$5;->this$0:Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;

    iget-object v4, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$5;->val$extra:Landroid/os/Bundle;

    # setter for: Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mExtras:Landroid/os/Bundle;
    invoke-static {v3, v4}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->access$1002(Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 706
    iget-object v3, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$5;->this$0:Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;

    const/4 v4, 0x2

    # setter for: Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mState:I
    invoke-static {v3, v4}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->access$602(Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;I)I

    .line 712
    iget-object v3, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$5;->this$0:Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;

    # getter for: Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mCallback:Landroid/support/v4/media/MediaBrowserCompat$ConnectionCallback;
    invoke-static {v3}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->access$400(Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;)Landroid/support/v4/media/MediaBrowserCompat$ConnectionCallback;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/media/MediaBrowserCompat$ConnectionCallback;->onConnected()V

    .line 716
    iget-object v3, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$5;->this$0:Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;

    # getter for: Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mSubscriptions:Landroid/support/v4/util/ArrayMap;
    invoke-static {v3}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->access$1100(Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;)Landroid/support/v4/util/ArrayMap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 718
    .local v2, "id":Ljava/lang/String;
    :try_start_0
    iget-object v3, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$5;->this$0:Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;

    # getter for: Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mServiceBinder:Landroid/support/v4/media/IMediaBrowserServiceCompat;
    invoke-static {v3}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->access$1300(Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;)Landroid/support/v4/media/IMediaBrowserServiceCompat;

    move-result-object v3

    iget-object v4, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$5;->this$0:Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;

    # getter for: Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mServiceCallbacks:Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks;
    invoke-static {v4}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->access$1200(Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;)Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Landroid/support/v4/media/IMediaBrowserServiceCompat;->addSubscription(Ljava/lang/String;Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 719
    :catch_0
    move-exception v0

    .line 722
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v3, "MediaBrowserCompat"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "addSubscription failed with RemoteException parentId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
