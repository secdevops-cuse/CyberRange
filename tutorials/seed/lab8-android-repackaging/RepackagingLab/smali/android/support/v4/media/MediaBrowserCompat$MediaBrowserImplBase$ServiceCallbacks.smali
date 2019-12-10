.class Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$ServiceCallbacks;
.super Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks$Stub;
.source "MediaBrowserCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ServiceCallbacks"
.end annotation


# instance fields
.field private mMediaBrowser:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;)V
    .locals 1
    .param p1, "mediaBrowser"    # Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;

    .prologue
    .line 919
    invoke-direct {p0}, Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks$Stub;-><init>()V

    .line 920
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$ServiceCallbacks;->mMediaBrowser:Ljava/lang/ref/WeakReference;

    .line 921
    return-void
.end method


# virtual methods
.method public onConnect(Ljava/lang/String;Landroid/support/v4/media/session/MediaSessionCompat$Token;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "root"    # Ljava/lang/String;
    .param p2, "session"    # Landroid/support/v4/media/session/MediaSessionCompat$Token;
    .param p3, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 930
    iget-object v1, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$ServiceCallbacks;->mMediaBrowser:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;

    .line 931
    .local v0, "mediaBrowser":Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;
    if-eqz v0, :cond_0

    .line 932
    # invokes: Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->onServiceConnected(Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks;Ljava/lang/String;Landroid/support/v4/media/session/MediaSessionCompat$Token;Landroid/os/Bundle;)V
    invoke-static {v0, p0, p1, p2, p3}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->access$1800(Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks;Ljava/lang/String;Landroid/support/v4/media/session/MediaSessionCompat$Token;Landroid/os/Bundle;)V

    .line 934
    :cond_0
    return-void
.end method

.method public onConnectFailed()V
    .locals 2

    .prologue
    .line 941
    iget-object v1, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$ServiceCallbacks;->mMediaBrowser:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;

    .line 942
    .local v0, "mediaBrowser":Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;
    if-eqz v0, :cond_0

    .line 943
    # invokes: Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->onConnectionFailed(Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks;)V
    invoke-static {v0, p0}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->access$1900(Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks;)V

    .line 945
    :cond_0
    return-void
.end method

.method public onLoadChildren(Ljava/lang/String;Ljava/util/List;)V
    .locals 2
    .param p1, "parentId"    # Ljava/lang/String;
    .param p2, "list"    # Ljava/util/List;

    .prologue
    .line 949
    iget-object v1, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$ServiceCallbacks;->mMediaBrowser:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;

    .line 950
    .local v0, "mediaBrowser":Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;
    if-eqz v0, :cond_0

    .line 951
    # invokes: Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->onLoadChildren(Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks;Ljava/lang/String;Ljava/util/List;)V
    invoke-static {v0, p0, p1, p2}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->access$2000(Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks;Ljava/lang/String;Ljava/util/List;)V

    .line 953
    :cond_0
    return-void
.end method
