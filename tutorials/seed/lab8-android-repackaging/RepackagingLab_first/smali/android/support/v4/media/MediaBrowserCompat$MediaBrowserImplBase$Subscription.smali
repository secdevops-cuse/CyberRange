.class Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$Subscription;
.super Ljava/lang/Object;
.source "MediaBrowserCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Subscription"
.end annotation


# instance fields
.field callback:Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback;

.field final id:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 960
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 961
    iput-object p1, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$Subscription;->id:Ljava/lang/String;

    .line 962
    return-void
.end method
