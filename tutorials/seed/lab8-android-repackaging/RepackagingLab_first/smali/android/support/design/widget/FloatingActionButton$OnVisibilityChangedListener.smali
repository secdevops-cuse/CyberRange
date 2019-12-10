.class public abstract Landroid/support/design/widget/FloatingActionButton$OnVisibilityChangedListener;
.super Ljava/lang/Object;
.source "FloatingActionButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/widget/FloatingActionButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "OnVisibilityChangedListener"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onHidden(Landroid/support/design/widget/FloatingActionButton;)V
    .locals 0
    .param p1, "fab"    # Landroid/support/design/widget/FloatingActionButton;

    .prologue
    .line 80
    return-void
.end method

.method public onShown(Landroid/support/design/widget/FloatingActionButton;)V
    .locals 0
    .param p1, "fab"    # Landroid/support/design/widget/FloatingActionButton;

    .prologue
    .line 72
    return-void
.end method
