.class Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$3;
.super Landroid/support/v4/os/ResultReceiver;
.source "MediaBrowserCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->getItem(Ljava/lang/String;Landroid/support/v4/media/MediaBrowserCompat$ItemCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;

.field final synthetic val$cb:Landroid/support/v4/media/MediaBrowserCompat$ItemCallback;

.field final synthetic val$mediaId:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;Landroid/os/Handler;Landroid/support/v4/media/MediaBrowserCompat$ItemCallback;Ljava/lang/String;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 639
    iput-object p1, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$3;->this$0:Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;

    iput-object p3, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$3;->val$cb:Landroid/support/v4/media/MediaBrowserCompat$ItemCallback;

    iput-object p4, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$3;->val$mediaId:Ljava/lang/String;

    invoke-direct {p0, p2}, Landroid/support/v4/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method protected onReceiveResult(ILandroid/os/Bundle;)V
    .locals 3
    .param p1, "resultCode"    # I
    .param p2, "resultData"    # Landroid/os/Bundle;

    .prologue
    .line 642
    if-nez p1, :cond_0

    if-eqz p2, :cond_0

    const-string v1, "media_item"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 644
    :cond_0
    iget-object v1, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$3;->val$cb:Landroid/support/v4/media/MediaBrowserCompat$ItemCallback;

    iget-object v2, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$3;->val$mediaId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/support/v4/media/MediaBrowserCompat$ItemCallback;->onError(Ljava/lang/String;)V

    .line 654
    :goto_0
    return-void

    .line 647
    :cond_1
    const-string v1, "media_item"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    .line 649
    .local v0, "item":Landroid/os/Parcelable;
    instance-of v1, v0, Landroid/support/v4/media/MediaBrowserCompat$MediaItem;

    if-nez v1, :cond_2

    .line 650
    iget-object v1, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$3;->val$cb:Landroid/support/v4/media/MediaBrowserCompat$ItemCallback;

    iget-object v2, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$3;->val$mediaId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/support/v4/media/MediaBrowserCompat$ItemCallback;->onError(Ljava/lang/String;)V

    goto :goto_0

    .line 653
    :cond_2
    iget-object v1, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$3;->val$cb:Landroid/support/v4/media/MediaBrowserCompat$ItemCallback;

    check-cast v0, Landroid/support/v4/media/MediaBrowserCompat$MediaItem;

    .end local v0    # "item":Landroid/os/Parcelable;
    invoke-virtual {v1, v0}, Landroid/support/v4/media/MediaBrowserCompat$ItemCallback;->onItemLoaded(Landroid/support/v4/media/MediaBrowserCompat$MediaItem;)V

    goto :goto_0
.end method
