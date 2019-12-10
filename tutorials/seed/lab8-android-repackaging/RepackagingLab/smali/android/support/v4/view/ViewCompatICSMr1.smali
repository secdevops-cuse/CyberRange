.class Landroid/support/v4/view/ViewCompatICSMr1;
.super Ljava/lang/Object;
.source "ViewCompatICSMr1.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static hasOnClickListeners(Landroid/view/View;)Z
    .locals 1
    .param p0, "v"    # Landroid/view/View;

    .prologue
    .line 30
    invoke-virtual {p0}, Landroid/view/View;->hasOnClickListeners()Z

    move-result v0

    return v0
.end method
