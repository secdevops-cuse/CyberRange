.class Landroid/support/v4/view/ViewCompat$ICSMr1ViewCompatImpl;
.super Landroid/support/v4/view/ViewCompat$ICSViewCompatImpl;
.source "ViewCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/ViewCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ICSMr1ViewCompatImpl"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1317
    invoke-direct {p0}, Landroid/support/v4/view/ViewCompat$ICSViewCompatImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public hasOnClickListeners(Landroid/view/View;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1320
    invoke-static {p1}, Landroid/support/v4/view/ViewCompatICSMr1;->hasOnClickListeners(Landroid/view/View;)Z

    move-result v0

    return v0
.end method
