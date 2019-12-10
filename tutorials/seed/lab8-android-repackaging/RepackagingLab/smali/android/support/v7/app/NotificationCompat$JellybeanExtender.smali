.class Landroid/support/v7/app/NotificationCompat$JellybeanExtender;
.super Landroid/support/v4/app/NotificationCompat$BuilderExtender;
.source "NotificationCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/app/NotificationCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "JellybeanExtender"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 105
    invoke-direct {p0}, Landroid/support/v4/app/NotificationCompat$BuilderExtender;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v7/app/NotificationCompat$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/support/v7/app/NotificationCompat$1;

    .prologue
    .line 105
    invoke-direct {p0}, Landroid/support/v7/app/NotificationCompat$JellybeanExtender;-><init>()V

    return-void
.end method


# virtual methods
.method public build(Landroid/support/v4/app/NotificationCompat$Builder;Landroid/support/v4/app/NotificationBuilderWithBuilderAccessor;)Landroid/app/Notification;
    .locals 1
    .param p1, "b"    # Landroid/support/v4/app/NotificationCompat$Builder;
    .param p2, "builder"    # Landroid/support/v4/app/NotificationBuilderWithBuilderAccessor;

    .prologue
    .line 110
    # invokes: Landroid/support/v7/app/NotificationCompat;->addMediaStyleToBuilderIcs(Landroid/support/v4/app/NotificationBuilderWithBuilderAccessor;Landroid/support/v4/app/NotificationCompat$Builder;)V
    invoke-static {p2, p1}, Landroid/support/v7/app/NotificationCompat;->access$300(Landroid/support/v4/app/NotificationBuilderWithBuilderAccessor;Landroid/support/v4/app/NotificationCompat$Builder;)V

    .line 111
    invoke-interface {p2}, Landroid/support/v4/app/NotificationBuilderWithBuilderAccessor;->build()Landroid/app/Notification;

    move-result-object v0

    .line 112
    .local v0, "n":Landroid/app/Notification;
    # invokes: Landroid/support/v7/app/NotificationCompat;->addBigMediaStyleToBuilderJellybean(Landroid/app/Notification;Landroid/support/v4/app/NotificationCompat$Builder;)V
    invoke-static {v0, p1}, Landroid/support/v7/app/NotificationCompat;->access$400(Landroid/app/Notification;Landroid/support/v4/app/NotificationCompat$Builder;)V

    .line 113
    return-object v0
.end method
