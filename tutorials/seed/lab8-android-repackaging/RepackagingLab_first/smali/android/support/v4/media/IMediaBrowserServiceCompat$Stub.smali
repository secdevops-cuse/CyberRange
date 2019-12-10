.class public abstract Landroid/support/v4/media/IMediaBrowserServiceCompat$Stub;
.super Landroid/os/Binder;
.source "IMediaBrowserServiceCompat.java"

# interfaces
.implements Landroid/support/v4/media/IMediaBrowserServiceCompat;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/IMediaBrowserServiceCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/media/IMediaBrowserServiceCompat$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.support.v4.media.IMediaBrowserServiceCompat"

.field static final TRANSACTION_addSubscription:I = 0x3

.field static final TRANSACTION_connect:I = 0x1

.field static final TRANSACTION_disconnect:I = 0x2

.field static final TRANSACTION_getMediaItem:I = 0x5

.field static final TRANSACTION_removeSubscription:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 20
    const-string v0, "android.support.v4.media.IMediaBrowserServiceCompat"

    invoke-virtual {p0, p0, v0}, Landroid/support/v4/media/IMediaBrowserServiceCompat$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/support/v4/media/IMediaBrowserServiceCompat;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 28
    if-nez p0, :cond_0

    .line 29
    const/4 v0, 0x0

    .line 35
    :goto_0
    return-object v0

    .line 31
    :cond_0
    const-string v1, "android.support.v4.media.IMediaBrowserServiceCompat"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 32
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/support/v4/media/IMediaBrowserServiceCompat;

    if-eqz v1, :cond_1

    .line 33
    check-cast v0, Landroid/support/v4/media/IMediaBrowserServiceCompat;

    goto :goto_0

    .line 35
    :cond_1
    new-instance v0, Landroid/support/v4/media/IMediaBrowserServiceCompat$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/support/v4/media/IMediaBrowserServiceCompat$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 39
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 5
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 43
    sparse-switch p1, :sswitch_data_0

    .line 111
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    :goto_0
    return v3

    .line 47
    :sswitch_0
    const-string v4, "android.support.v4.media.IMediaBrowserServiceCompat"

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 52
    :sswitch_1
    const-string v4, "android.support.v4.media.IMediaBrowserServiceCompat"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 54
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 56
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_0

    .line 57
    sget-object v4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 63
    .local v1, "_arg1":Landroid/os/Bundle;
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks$Stub;->asInterface(Landroid/os/IBinder;)Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks;

    move-result-object v2

    .line 64
    .local v2, "_arg2":Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks;
    invoke-virtual {p0, v0, v1, v2}, Landroid/support/v4/media/IMediaBrowserServiceCompat$Stub;->connect(Ljava/lang/String;Landroid/os/Bundle;Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks;)V

    goto :goto_0

    .line 60
    .end local v1    # "_arg1":Landroid/os/Bundle;
    .end local v2    # "_arg2":Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks;
    :cond_0
    const/4 v1, 0x0

    .restart local v1    # "_arg1":Landroid/os/Bundle;
    goto :goto_1

    .line 69
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Landroid/os/Bundle;
    :sswitch_2
    const-string v4, "android.support.v4.media.IMediaBrowserServiceCompat"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 71
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks$Stub;->asInterface(Landroid/os/IBinder;)Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks;

    move-result-object v0

    .line 72
    .local v0, "_arg0":Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks;
    invoke-virtual {p0, v0}, Landroid/support/v4/media/IMediaBrowserServiceCompat$Stub;->disconnect(Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks;)V

    goto :goto_0

    .line 77
    .end local v0    # "_arg0":Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks;
    :sswitch_3
    const-string v4, "android.support.v4.media.IMediaBrowserServiceCompat"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 79
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 81
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks$Stub;->asInterface(Landroid/os/IBinder;)Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks;

    move-result-object v1

    .line 82
    .local v1, "_arg1":Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks;
    invoke-virtual {p0, v0, v1}, Landroid/support/v4/media/IMediaBrowserServiceCompat$Stub;->addSubscription(Ljava/lang/String;Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks;)V

    goto :goto_0

    .line 87
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks;
    :sswitch_4
    const-string v4, "android.support.v4.media.IMediaBrowserServiceCompat"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 89
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 91
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks$Stub;->asInterface(Landroid/os/IBinder;)Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks;

    move-result-object v1

    .line 92
    .restart local v1    # "_arg1":Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks;
    invoke-virtual {p0, v0, v1}, Landroid/support/v4/media/IMediaBrowserServiceCompat$Stub;->removeSubscription(Ljava/lang/String;Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks;)V

    goto :goto_0

    .line 97
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks;
    :sswitch_5
    const-string v4, "android.support.v4.media.IMediaBrowserServiceCompat"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 99
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 101
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1

    .line 102
    sget-object v4, Landroid/support/v4/os/ResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/os/ResultReceiver;

    .line 107
    .local v1, "_arg1":Landroid/support/v4/os/ResultReceiver;
    :goto_2
    invoke-virtual {p0, v0, v1}, Landroid/support/v4/media/IMediaBrowserServiceCompat$Stub;->getMediaItem(Ljava/lang/String;Landroid/support/v4/os/ResultReceiver;)V

    goto/16 :goto_0

    .line 105
    .end local v1    # "_arg1":Landroid/support/v4/os/ResultReceiver;
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "_arg1":Landroid/support/v4/os/ResultReceiver;
    goto :goto_2

    .line 43
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
