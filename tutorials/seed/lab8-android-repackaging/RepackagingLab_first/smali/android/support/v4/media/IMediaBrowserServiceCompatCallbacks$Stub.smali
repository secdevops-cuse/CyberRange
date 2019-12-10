.class public abstract Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks$Stub;
.super Landroid/os/Binder;
.source "IMediaBrowserServiceCompatCallbacks.java"

# interfaces
.implements Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.support.v4.media.IMediaBrowserServiceCompatCallbacks"

.field static final TRANSACTION_onConnect:I = 0x1

.field static final TRANSACTION_onConnectFailed:I = 0x2

.field static final TRANSACTION_onLoadChildren:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 20
    const-string v0, "android.support.v4.media.IMediaBrowserServiceCompatCallbacks"

    invoke-virtual {p0, p0, v0}, Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks;
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
    const-string v1, "android.support.v4.media.IMediaBrowserServiceCompatCallbacks"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 32
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks;

    if-eqz v1, :cond_1

    .line 33
    check-cast v0, Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks;

    goto :goto_0

    .line 35
    :cond_1
    new-instance v0, Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 6
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
    const/4 v4, 0x1

    .line 43
    sparse-switch p1, :sswitch_data_0

    .line 90
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    :goto_0
    return v4

    .line 47
    :sswitch_0
    const-string v5, "android.support.v4.media.IMediaBrowserServiceCompatCallbacks"

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 52
    :sswitch_1
    const-string v5, "android.support.v4.media.IMediaBrowserServiceCompatCallbacks"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 54
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 56
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_0

    .line 57
    sget-object v5, Landroid/support/v4/media/session/MediaSessionCompat$Token;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/media/session/MediaSessionCompat$Token;

    .line 63
    .local v1, "_arg1":Landroid/support/v4/media/session/MediaSessionCompat$Token;
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1

    .line 64
    sget-object v5, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 69
    .local v2, "_arg2":Landroid/os/Bundle;
    :goto_2
    invoke-virtual {p0, v0, v1, v2}, Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks$Stub;->onConnect(Ljava/lang/String;Landroid/support/v4/media/session/MediaSessionCompat$Token;Landroid/os/Bundle;)V

    goto :goto_0

    .line 60
    .end local v1    # "_arg1":Landroid/support/v4/media/session/MediaSessionCompat$Token;
    .end local v2    # "_arg2":Landroid/os/Bundle;
    :cond_0
    const/4 v1, 0x0

    .restart local v1    # "_arg1":Landroid/support/v4/media/session/MediaSessionCompat$Token;
    goto :goto_1

    .line 67
    :cond_1
    const/4 v2, 0x0

    .restart local v2    # "_arg2":Landroid/os/Bundle;
    goto :goto_2

    .line 74
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Landroid/support/v4/media/session/MediaSessionCompat$Token;
    .end local v2    # "_arg2":Landroid/os/Bundle;
    :sswitch_2
    const-string v5, "android.support.v4.media.IMediaBrowserServiceCompatCallbacks"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 75
    invoke-virtual {p0}, Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks$Stub;->onConnectFailed()V

    goto :goto_0

    .line 80
    :sswitch_3
    const-string v5, "android.support.v4.media.IMediaBrowserServiceCompatCallbacks"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 82
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 84
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    .line 85
    .local v3, "cl":Ljava/lang/ClassLoader;
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v1

    .line 86
    .local v1, "_arg1":Ljava/util/List;
    invoke-virtual {p0, v0, v1}, Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks$Stub;->onLoadChildren(Ljava/lang/String;Ljava/util/List;)V

    goto :goto_0

    .line 43
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
