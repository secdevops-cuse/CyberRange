.class Landroid/support/v4/media/TransportMediatorJellybeanMR2$6;
.super Ljava/lang/Object;
.source "TransportMediatorJellybeanMR2.java"

# interfaces
.implements Landroid/media/RemoteControlClient$OnPlaybackPositionUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/TransportMediatorJellybeanMR2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v4/media/TransportMediatorJellybeanMR2;


# direct methods
.method constructor <init>(Landroid/support/v4/media/TransportMediatorJellybeanMR2;)V
    .locals 0

    .prologue
    .line 84
    iput-object p1, p0, Landroid/support/v4/media/TransportMediatorJellybeanMR2$6;->this$0:Landroid/support/v4/media/TransportMediatorJellybeanMR2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPlaybackPositionUpdate(J)V
    .locals 1
    .param p1, "newPositionMs"    # J

    .prologue
    .line 86
    iget-object v0, p0, Landroid/support/v4/media/TransportMediatorJellybeanMR2$6;->this$0:Landroid/support/v4/media/TransportMediatorJellybeanMR2;

    iget-object v0, v0, Landroid/support/v4/media/TransportMediatorJellybeanMR2;->mTransportCallback:Landroid/support/v4/media/TransportMediatorCallback;

    invoke-interface {v0, p1, p2}, Landroid/support/v4/media/TransportMediatorCallback;->playbackPositionUpdate(J)V

    .line 87
    return-void
.end method
