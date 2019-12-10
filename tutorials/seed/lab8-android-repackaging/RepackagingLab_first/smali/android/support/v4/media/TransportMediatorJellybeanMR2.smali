.class Landroid/support/v4/media/TransportMediatorJellybeanMR2;
.super Ljava/lang/Object;
.source "TransportMediatorJellybeanMR2.java"


# instance fields
.field mAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field mAudioFocused:Z

.field final mAudioManager:Landroid/media/AudioManager;

.field final mContext:Landroid/content/Context;

.field mFocused:Z

.field final mGetPlaybackPositionListener:Landroid/media/RemoteControlClient$OnGetPlaybackPositionListener;

.field final mIntent:Landroid/content/Intent;

.field final mMediaButtonReceiver:Landroid/content/BroadcastReceiver;

.field mPendingIntent:Landroid/app/PendingIntent;

.field mPlayState:I

.field final mPlaybackPositionUpdateListener:Landroid/media/RemoteControlClient$OnPlaybackPositionUpdateListener;

.field final mReceiverAction:Ljava/lang/String;

.field final mReceiverFilter:Landroid/content/IntentFilter;

.field mRemoteControl:Landroid/media/RemoteControlClient;

.field final mTargetView:Landroid/view/View;

.field final mTransportCallback:Landroid/support/v4/media/TransportMediatorCallback;

.field final mWindowAttachListener:Landroid/view/ViewTreeObserver$OnWindowAttachListener;

.field final mWindowFocusListener:Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/media/AudioManager;Landroid/view/View;Landroid/support/v4/media/TransportMediatorCallback;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "audioManager"    # Landroid/media/AudioManager;
    .param p3, "view"    # Landroid/view/View;
    .param p4, "transportCallback"    # Landroid/support/v4/media/TransportMediatorCallback;

    .prologue
    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Landroid/support/v4/media/TransportMediatorJellybeanMR2$1;

    invoke-direct {v0, p0}, Landroid/support/v4/media/TransportMediatorJellybeanMR2$1;-><init>(Landroid/support/v4/media/TransportMediatorJellybeanMR2;)V

    iput-object v0, p0, Landroid/support/v4/media/TransportMediatorJellybeanMR2;->mWindowAttachListener:Landroid/view/ViewTreeObserver$OnWindowAttachListener;

    .line 50
    new-instance v0, Landroid/support/v4/media/TransportMediatorJellybeanMR2$2;

    invoke-direct {v0, p0}, Landroid/support/v4/media/TransportMediatorJellybeanMR2$2;-><init>(Landroid/support/v4/media/TransportMediatorJellybeanMR2;)V

    iput-object v0, p0, Landroid/support/v4/media/TransportMediatorJellybeanMR2;->mWindowFocusListener:Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;

    .line 58
    new-instance v0, Landroid/support/v4/media/TransportMediatorJellybeanMR2$3;

    invoke-direct {v0, p0}, Landroid/support/v4/media/TransportMediatorJellybeanMR2$3;-><init>(Landroid/support/v4/media/TransportMediatorJellybeanMR2;)V

    iput-object v0, p0, Landroid/support/v4/media/TransportMediatorJellybeanMR2;->mMediaButtonReceiver:Landroid/content/BroadcastReceiver;

    .line 69
    new-instance v0, Landroid/support/v4/media/TransportMediatorJellybeanMR2$4;

    invoke-direct {v0, p0}, Landroid/support/v4/media/TransportMediatorJellybeanMR2$4;-><init>(Landroid/support/v4/media/TransportMediatorJellybeanMR2;)V

    iput-object v0, p0, Landroid/support/v4/media/TransportMediatorJellybeanMR2;->mAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 76
    new-instance v0, Landroid/support/v4/media/TransportMediatorJellybeanMR2$5;

    invoke-direct {v0, p0}, Landroid/support/v4/media/TransportMediatorJellybeanMR2$5;-><init>(Landroid/support/v4/media/TransportMediatorJellybeanMR2;)V

    iput-object v0, p0, Landroid/support/v4/media/TransportMediatorJellybeanMR2;->mGetPlaybackPositionListener:Landroid/media/RemoteControlClient$OnGetPlaybackPositionListener;

    .line 83
    new-instance v0, Landroid/support/v4/media/TransportMediatorJellybeanMR2$6;

    invoke-direct {v0, p0}, Landroid/support/v4/media/TransportMediatorJellybeanMR2$6;-><init>(Landroid/support/v4/media/TransportMediatorJellybeanMR2;)V

    iput-object v0, p0, Landroid/support/v4/media/TransportMediatorJellybeanMR2;->mPlaybackPositionUpdateListener:Landroid/media/RemoteControlClient$OnPlaybackPositionUpdateListener;

    .line 93
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v4/media/TransportMediatorJellybeanMR2;->mPlayState:I

    .line 98
    iput-object p1, p0, Landroid/support/v4/media/TransportMediatorJellybeanMR2;->mContext:Landroid/content/Context;

    .line 99
    iput-object p2, p0, Landroid/support/v4/media/TransportMediatorJellybeanMR2;->mAudioManager:Landroid/media/AudioManager;

    .line 100
    iput-object p3, p0, Landroid/support/v4/media/TransportMediatorJellybeanMR2;->mTargetView:Landroid/view/View;

    .line 101
    iput-object p4, p0, Landroid/support/v4/media/TransportMediatorJellybeanMR2;->mTransportCallback:Landroid/support/v4/media/TransportMediatorCallback;

    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":transport:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/media/TransportMediatorJellybeanMR2;->mReceiverAction:Ljava/lang/String;

    .line 103
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Landroid/support/v4/media/TransportMediatorJellybeanMR2;->mReceiverAction:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/support/v4/media/TransportMediatorJellybeanMR2;->mIntent:Landroid/content/Intent;

    .line 104
    iget-object v0, p0, Landroid/support/v4/media/TransportMediatorJellybeanMR2;->mIntent:Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 105
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Landroid/support/v4/media/TransportMediatorJellybeanMR2;->mReceiverFilter:Landroid/content/IntentFilter;

    .line 106
    iget-object v0, p0, Landroid/support/v4/media/TransportMediatorJellybeanMR2;->mReceiverFilter:Landroid/content/IntentFilter;

    iget-object v1, p0, Landroid/support/v4/media/TransportMediatorJellybeanMR2;->mReceiverAction:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 107
    iget-object v0, p0, Landroid/support/v4/media/TransportMediatorJellybeanMR2;->mTargetView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v4/media/TransportMediatorJellybeanMR2;->mWindowAttachListener:Landroid/view/ViewTreeObserver$OnWindowAttachListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnWindowAttachListener(Landroid/view/ViewTreeObserver$OnWindowAttachListener;)V

    .line 108
    iget-object v0, p0, Landroid/support/v4/media/TransportMediatorJellybeanMR2;->mTargetView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v4/media/TransportMediatorJellybeanMR2;->mWindowFocusListener:Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnWindowFocusChangeListener(Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;)V

    .line 109
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .prologue
    .line 116
    invoke-virtual {p0}, Landroid/support/v4/media/TransportMediatorJellybeanMR2;->windowDetached()V

    .line 117
    iget-object v0, p0, Landroid/support/v4/media/TransportMediatorJellybeanMR2;->mTargetView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v4/media/TransportMediatorJellybeanMR2;->mWindowAttachListener:Landroid/view/ViewTreeObserver$OnWindowAttachListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnWindowAttachListener(Landroid/view/ViewTreeObserver$OnWindowAttachListener;)V

    .line 118
    iget-object v0, p0, Landroid/support/v4/media/TransportMediatorJellybeanMR2;->mTargetView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v4/media/TransportMediatorJellybeanMR2;->mWindowFocusListener:Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnWindowFocusChangeListener(Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;)V

    .line 119
    return-void
.end method

.method dropAudioFocus()V
    .locals 2

    .prologue
    .line 184
    iget-boolean v0, p0, Landroid/support/v4/media/TransportMediatorJellybeanMR2;->mAudioFocused:Z

    if-eqz v0, :cond_0

    .line 185
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/media/TransportMediatorJellybeanMR2;->mAudioFocused:Z

    .line 186
    iget-object v0, p0, Landroid/support/v4/media/TransportMediatorJellybeanMR2;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Landroid/support/v4/media/TransportMediatorJellybeanMR2;->mAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 188
    :cond_0
    return-void
.end method

.method gainFocus()V
    .locals 2

    .prologue
    .line 131
    iget-boolean v0, p0, Landroid/support/v4/media/TransportMediatorJellybeanMR2;->mFocused:Z

    if-nez v0, :cond_0

    .line 132
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/media/TransportMediatorJellybeanMR2;->mFocused:Z

    .line 133
    iget-object v0, p0, Landroid/support/v4/media/TransportMediatorJellybeanMR2;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Landroid/support/v4/media/TransportMediatorJellybeanMR2;->mPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->registerMediaButtonEventReceiver(Landroid/app/PendingIntent;)V

    .line 134
    iget-object v0, p0, Landroid/support/v4/media/TransportMediatorJellybeanMR2;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Landroid/support/v4/media/TransportMediatorJellybeanMR2;->mRemoteControl:Landroid/media/RemoteControlClient;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->registerRemoteControlClient(Landroid/media/RemoteControlClient;)V

    .line 135
    iget v0, p0, Landroid/support/v4/media/TransportMediatorJellybeanMR2;->mPlayState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 136
    invoke-virtual {p0}, Landroid/support/v4/media/TransportMediatorJellybeanMR2;->takeAudioFocus()V

    .line 139
    :cond_0
    return-void
.end method

.method public getRemoteControlClient()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Landroid/support/v4/media/TransportMediatorJellybeanMR2;->mRemoteControl:Landroid/media/RemoteControlClient;

    return-object v0
.end method

.method loseFocus()V
    .locals 2

    .prologue
    .line 191
    invoke-virtual {p0}, Landroid/support/v4/media/TransportMediatorJellybeanMR2;->dropAudioFocus()V

    .line 192
    iget-boolean v0, p0, Landroid/support/v4/media/TransportMediatorJellybeanMR2;->mFocused:Z

    if-eqz v0, :cond_0

    .line 193
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/media/TransportMediatorJellybeanMR2;->mFocused:Z

    .line 194
    iget-object v0, p0, Landroid/support/v4/media/TransportMediatorJellybeanMR2;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Landroid/support/v4/media/TransportMediatorJellybeanMR2;->mRemoteControl:Landroid/media/RemoteControlClient;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->unregisterRemoteControlClient(Landroid/media/RemoteControlClient;)V

    .line 195
    iget-object v0, p0, Landroid/support/v4/media/TransportMediatorJellybeanMR2;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Landroid/support/v4/media/TransportMediatorJellybeanMR2;->mPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->unregisterMediaButtonEventReceiver(Landroid/app/PendingIntent;)V

    .line 197
    :cond_0
    return-void
.end method

.method public pausePlaying()V
    .locals 3

    .prologue
    const/4 v2, 0x2

    .line 168
    iget v0, p0, Landroid/support/v4/media/TransportMediatorJellybeanMR2;->mPlayState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 169
    iput v2, p0, Landroid/support/v4/media/TransportMediatorJellybeanMR2;->mPlayState:I

    .line 170
    iget-object v0, p0, Landroid/support/v4/media/TransportMediatorJellybeanMR2;->mRemoteControl:Landroid/media/RemoteControlClient;

    invoke-virtual {v0, v2}, Landroid/media/RemoteControlClient;->setPlaybackState(I)V

    .line 172
    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/media/TransportMediatorJellybeanMR2;->dropAudioFocus()V

    .line 173
    return-void
.end method

.method public refreshState(ZJI)V
    .locals 4
    .param p1, "playing"    # Z
    .param p2, "position"    # J
    .param p4, "transportControls"    # I

    .prologue
    .line 160
    iget-object v0, p0, Landroid/support/v4/media/TransportMediatorJellybeanMR2;->mRemoteControl:Landroid/media/RemoteControlClient;

    if-eqz v0, :cond_0

    .line 161
    iget-object v2, p0, Landroid/support/v4/media/TransportMediatorJellybeanMR2;->mRemoteControl:Landroid/media/RemoteControlClient;

    if-eqz p1, :cond_1

    const/4 v0, 0x3

    move v1, v0

    :goto_0
    if-eqz p1, :cond_2

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_1
    invoke-virtual {v2, v1, p2, p3, v0}, Landroid/media/RemoteControlClient;->setPlaybackState(IJF)V

    .line 163
    iget-object v0, p0, Landroid/support/v4/media/TransportMediatorJellybeanMR2;->mRemoteControl:Landroid/media/RemoteControlClient;

    invoke-virtual {v0, p4}, Landroid/media/RemoteControlClient;->setTransportControlFlags(I)V

    .line 165
    :cond_0
    return-void

    .line 161
    :cond_1
    const/4 v0, 0x1

    move v1, v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public startPlaying()V
    .locals 2

    .prologue
    const/4 v1, 0x3

    .line 150
    iget v0, p0, Landroid/support/v4/media/TransportMediatorJellybeanMR2;->mPlayState:I

    if-eq v0, v1, :cond_0

    .line 151
    iput v1, p0, Landroid/support/v4/media/TransportMediatorJellybeanMR2;->mPlayState:I

    .line 152
    iget-object v0, p0, Landroid/support/v4/media/TransportMediatorJellybeanMR2;->mRemoteControl:Landroid/media/RemoteControlClient;

    invoke-virtual {v0, v1}, Landroid/media/RemoteControlClient;->setPlaybackState(I)V

    .line 154
    :cond_0
    iget-boolean v0, p0, Landroid/support/v4/media/TransportMediatorJellybeanMR2;->mFocused:Z

    if-eqz v0, :cond_1

    .line 155
    invoke-virtual {p0}, Landroid/support/v4/media/TransportMediatorJellybeanMR2;->takeAudioFocus()V

    .line 157
    :cond_1
    return-void
.end method

.method public stopPlaying()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 176
    iget v0, p0, Landroid/support/v4/media/TransportMediatorJellybeanMR2;->mPlayState:I

    if-eq v0, v1, :cond_0

    .line 177
    iput v1, p0, Landroid/support/v4/media/TransportMediatorJellybeanMR2;->mPlayState:I

    .line 178
    iget-object v0, p0, Landroid/support/v4/media/TransportMediatorJellybeanMR2;->mRemoteControl:Landroid/media/RemoteControlClient;

    invoke-virtual {v0, v1}, Landroid/media/RemoteControlClient;->setPlaybackState(I)V

    .line 180
    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/media/TransportMediatorJellybeanMR2;->dropAudioFocus()V

    .line 181
    return-void
.end method

.method takeAudioFocus()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 142
    iget-boolean v0, p0, Landroid/support/v4/media/TransportMediatorJellybeanMR2;->mAudioFocused:Z

    if-nez v0, :cond_0

    .line 143
    iput-boolean v3, p0, Landroid/support/v4/media/TransportMediatorJellybeanMR2;->mAudioFocused:Z

    .line 144
    iget-object v0, p0, Landroid/support/v4/media/TransportMediatorJellybeanMR2;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Landroid/support/v4/media/TransportMediatorJellybeanMR2;->mAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 147
    :cond_0
    return-void
.end method

.method windowAttached()V
    .locals 4

    .prologue
    .line 122
    iget-object v0, p0, Landroid/support/v4/media/TransportMediatorJellybeanMR2;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroid/support/v4/media/TransportMediatorJellybeanMR2;->mMediaButtonReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Landroid/support/v4/media/TransportMediatorJellybeanMR2;->mReceiverFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 123
    iget-object v0, p0, Landroid/support/v4/media/TransportMediatorJellybeanMR2;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/support/v4/media/TransportMediatorJellybeanMR2;->mIntent:Landroid/content/Intent;

    const/high16 v3, 0x10000000

    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/media/TransportMediatorJellybeanMR2;->mPendingIntent:Landroid/app/PendingIntent;

    .line 125
    new-instance v0, Landroid/media/RemoteControlClient;

    iget-object v1, p0, Landroid/support/v4/media/TransportMediatorJellybeanMR2;->mPendingIntent:Landroid/app/PendingIntent;

    invoke-direct {v0, v1}, Landroid/media/RemoteControlClient;-><init>(Landroid/app/PendingIntent;)V

    iput-object v0, p0, Landroid/support/v4/media/TransportMediatorJellybeanMR2;->mRemoteControl:Landroid/media/RemoteControlClient;

    .line 126
    iget-object v0, p0, Landroid/support/v4/media/TransportMediatorJellybeanMR2;->mRemoteControl:Landroid/media/RemoteControlClient;

    iget-object v1, p0, Landroid/support/v4/media/TransportMediatorJellybeanMR2;->mGetPlaybackPositionListener:Landroid/media/RemoteControlClient$OnGetPlaybackPositionListener;

    invoke-virtual {v0, v1}, Landroid/media/RemoteControlClient;->setOnGetPlaybackPositionListener(Landroid/media/RemoteControlClient$OnGetPlaybackPositionListener;)V

    .line 127
    iget-object v0, p0, Landroid/support/v4/media/TransportMediatorJellybeanMR2;->mRemoteControl:Landroid/media/RemoteControlClient;

    iget-object v1, p0, Landroid/support/v4/media/TransportMediatorJellybeanMR2;->mPlaybackPositionUpdateListener:Landroid/media/RemoteControlClient$OnPlaybackPositionUpdateListener;

    invoke-virtual {v0, v1}, Landroid/media/RemoteControlClient;->setPlaybackPositionUpdateListener(Landroid/media/RemoteControlClient$OnPlaybackPositionUpdateListener;)V

    .line 128
    return-void
.end method

.method windowDetached()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 200
    invoke-virtual {p0}, Landroid/support/v4/media/TransportMediatorJellybeanMR2;->loseFocus()V

    .line 201
    iget-object v0, p0, Landroid/support/v4/media/TransportMediatorJellybeanMR2;->mPendingIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_0

    .line 202
    iget-object v0, p0, Landroid/support/v4/media/TransportMediatorJellybeanMR2;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroid/support/v4/media/TransportMediatorJellybeanMR2;->mMediaButtonReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 203
    iget-object v0, p0, Landroid/support/v4/media/TransportMediatorJellybeanMR2;->mPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0}, Landroid/app/PendingIntent;->cancel()V

    .line 204
    iput-object v2, p0, Landroid/support/v4/media/TransportMediatorJellybeanMR2;->mPendingIntent:Landroid/app/PendingIntent;

    .line 205
    iput-object v2, p0, Landroid/support/v4/media/TransportMediatorJellybeanMR2;->mRemoteControl:Landroid/media/RemoteControlClient;

    .line 207
    :cond_0
    return-void
.end method
