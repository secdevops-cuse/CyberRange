.class Landroid/support/v4/media/session/MediaSessionCompatApi18;
.super Ljava/lang/Object;
.source "MediaSessionCompatApi18.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/media/session/MediaSessionCompatApi18$OnPlaybackPositionUpdateListener;
    }
.end annotation


# static fields
.field private static final ACTION_SEEK_TO:J = 0x100L

.field private static final TAG:Ljava/lang/String; = "MediaSessionCompatApi18"

.field private static sIsMbrPendingIntentSupported:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x1

    sput-boolean v0, Landroid/support/v4/media/session/MediaSessionCompatApi18;->sIsMbrPendingIntentSupported:Z

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    return-void
.end method

.method public static createPlaybackPositionUpdateListener(Landroid/support/v4/media/session/MediaSessionCompatApi14$Callback;)Ljava/lang/Object;
    .locals 1
    .param p0, "callback"    # Landroid/support/v4/media/session/MediaSessionCompatApi14$Callback;

    .prologue
    .line 36
    new-instance v0, Landroid/support/v4/media/session/MediaSessionCompatApi18$OnPlaybackPositionUpdateListener;

    invoke-direct {v0, p0}, Landroid/support/v4/media/session/MediaSessionCompatApi18$OnPlaybackPositionUpdateListener;-><init>(Landroid/support/v4/media/session/MediaSessionCompatApi14$Callback;)V

    return-object v0
.end method

.method static getRccTransportControlFlagsFromActions(J)I
    .locals 6
    .param p0, "actions"    # J

    .prologue
    .line 100
    invoke-static {p0, p1}, Landroid/support/v4/media/session/MediaSessionCompatApi14;->getRccTransportControlFlagsFromActions(J)I

    move-result v0

    .line 102
    .local v0, "transportControlFlags":I
    const-wide/16 v2, 0x100

    and-long/2addr v2, p0

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    .line 103
    or-int/lit16 v0, v0, 0x100

    .line 105
    :cond_0
    return v0
.end method

.method public static registerMediaButtonEventReceiver(Landroid/content/Context;Landroid/app/PendingIntent;Landroid/content/ComponentName;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pi"    # Landroid/app/PendingIntent;
    .param p2, "cn"    # Landroid/content/ComponentName;

    .prologue
    .line 41
    const-string v2, "audio"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 46
    .local v0, "am":Landroid/media/AudioManager;
    sget-boolean v2, Landroid/support/v4/media/session/MediaSessionCompatApi18;->sIsMbrPendingIntentSupported:Z

    if-eqz v2, :cond_0

    .line 48
    :try_start_0
    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->registerMediaButtonEventReceiver(Landroid/app/PendingIntent;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    :cond_0
    :goto_0
    sget-boolean v2, Landroid/support/v4/media/session/MediaSessionCompatApi18;->sIsMbrPendingIntentSupported:Z

    if-nez v2, :cond_1

    .line 57
    invoke-virtual {v0, p2}, Landroid/media/AudioManager;->registerMediaButtonEventReceiver(Landroid/content/ComponentName;)V

    .line 59
    :cond_1
    return-void

    .line 49
    :catch_0
    move-exception v1

    .line 50
    .local v1, "e":Ljava/lang/NullPointerException;
    const-string v2, "MediaSessionCompatApi18"

    const-string v3, "Unable to register media button event receiver with PendingIntent, falling back to ComponentName."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    const/4 v2, 0x0

    sput-boolean v2, Landroid/support/v4/media/session/MediaSessionCompatApi18;->sIsMbrPendingIntentSupported:Z

    goto :goto_0
.end method

.method public static setOnPlaybackPositionUpdateListener(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p0, "rccObj"    # Ljava/lang/Object;
    .param p1, "onPositionUpdateObj"    # Ljava/lang/Object;

    .prologue
    .line 95
    check-cast p0, Landroid/media/RemoteControlClient;

    .end local p0    # "rccObj":Ljava/lang/Object;
    check-cast p1, Landroid/media/RemoteControlClient$OnPlaybackPositionUpdateListener;

    .end local p1    # "onPositionUpdateObj":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/media/RemoteControlClient;->setPlaybackPositionUpdateListener(Landroid/media/RemoteControlClient$OnPlaybackPositionUpdateListener;)V

    .line 97
    return-void
.end method

.method public static setState(Ljava/lang/Object;IJFJ)V
    .locals 8
    .param p0, "rccObj"    # Ljava/lang/Object;
    .param p1, "state"    # I
    .param p2, "position"    # J
    .param p4, "speed"    # F
    .param p5, "updateTime"    # J

    .prologue
    const-wide/16 v6, 0x0

    .line 73
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 74
    .local v0, "currTime":J
    const/4 v4, 0x3

    if-ne p1, v4, :cond_1

    cmp-long v4, p2, v6

    if-lez v4, :cond_1

    .line 75
    const-wide/16 v2, 0x0

    .line 76
    .local v2, "diff":J
    cmp-long v4, p5, v6

    if-lez v4, :cond_0

    .line 77
    sub-long v2, v0, p5

    .line 78
    const/4 v4, 0x0

    cmpl-float v4, p4, v4

    if-lez v4, :cond_0

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v4, p4, v4

    if-eqz v4, :cond_0

    .line 79
    long-to-float v4, v2

    mul-float/2addr v4, p4

    float-to-long v2, v4

    .line 82
    :cond_0
    add-long/2addr p2, v2

    .line 84
    .end local v2    # "diff":J
    :cond_1
    invoke-static {p1}, Landroid/support/v4/media/session/MediaSessionCompatApi14;->getRccStateFromState(I)I

    move-result p1

    .line 85
    check-cast p0, Landroid/media/RemoteControlClient;

    .end local p0    # "rccObj":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/media/RemoteControlClient;->setPlaybackState(IJF)V

    .line 86
    return-void
.end method

.method public static setTransportControlFlags(Ljava/lang/Object;J)V
    .locals 1
    .param p0, "rccObj"    # Ljava/lang/Object;
    .param p1, "actions"    # J

    .prologue
    .line 89
    check-cast p0, Landroid/media/RemoteControlClient;

    .end local p0    # "rccObj":Ljava/lang/Object;
    invoke-static {p1, p2}, Landroid/support/v4/media/session/MediaSessionCompatApi18;->getRccTransportControlFlagsFromActions(J)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/media/RemoteControlClient;->setTransportControlFlags(I)V

    .line 91
    return-void
.end method

.method public static unregisterMediaButtonEventReceiver(Landroid/content/Context;Landroid/app/PendingIntent;Landroid/content/ComponentName;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pi"    # Landroid/app/PendingIntent;
    .param p2, "cn"    # Landroid/content/ComponentName;

    .prologue
    .line 63
    const-string v1, "audio"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 64
    .local v0, "am":Landroid/media/AudioManager;
    sget-boolean v1, Landroid/support/v4/media/session/MediaSessionCompatApi18;->sIsMbrPendingIntentSupported:Z

    if-eqz v1, :cond_0

    .line 65
    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->unregisterMediaButtonEventReceiver(Landroid/app/PendingIntent;)V

    .line 69
    :goto_0
    return-void

    .line 67
    :cond_0
    invoke-virtual {v0, p2}, Landroid/media/AudioManager;->unregisterMediaButtonEventReceiver(Landroid/content/ComponentName;)V

    goto :goto_0
.end method
