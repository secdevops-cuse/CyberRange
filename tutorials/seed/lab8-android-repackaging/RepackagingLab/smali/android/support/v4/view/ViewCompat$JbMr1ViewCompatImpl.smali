.class Landroid/support/v4/view/ViewCompat$JbMr1ViewCompatImpl;
.super Landroid/support/v4/view/ViewCompat$JBViewCompatImpl;
.source "ViewCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/ViewCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "JbMr1ViewCompatImpl"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1407
    invoke-direct {p0}, Landroid/support/v4/view/ViewCompat$JBViewCompatImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public getLabelFor(Landroid/view/View;)I
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1411
    invoke-static {p1}, Landroid/support/v4/view/ViewCompatJellybeanMr1;->getLabelFor(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public getLayoutDirection(Landroid/view/View;)I
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1426
    invoke-static {p1}, Landroid/support/v4/view/ViewCompatJellybeanMr1;->getLayoutDirection(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public getPaddingEnd(Landroid/view/View;)I
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1441
    invoke-static {p1}, Landroid/support/v4/view/ViewCompatJellybeanMr1;->getPaddingEnd(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public getPaddingStart(Landroid/view/View;)I
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1436
    invoke-static {p1}, Landroid/support/v4/view/ViewCompatJellybeanMr1;->getPaddingStart(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public getWindowSystemUiVisibility(Landroid/view/View;)I
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1451
    invoke-static {p1}, Landroid/support/v4/view/ViewCompatJellybeanMr1;->getWindowSystemUiVisibility(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public isPaddingRelative(Landroid/view/View;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1456
    invoke-static {p1}, Landroid/support/v4/view/ViewCompatJellybeanMr1;->isPaddingRelative(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public setLabelFor(Landroid/view/View;I)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "id"    # I

    .prologue
    .line 1416
    invoke-static {p1, p2}, Landroid/support/v4/view/ViewCompatJellybeanMr1;->setLabelFor(Landroid/view/View;I)V

    .line 1417
    return-void
.end method

.method public setLayerPaint(Landroid/view/View;Landroid/graphics/Paint;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 1421
    invoke-static {p1, p2}, Landroid/support/v4/view/ViewCompatJellybeanMr1;->setLayerPaint(Landroid/view/View;Landroid/graphics/Paint;)V

    .line 1422
    return-void
.end method

.method public setLayoutDirection(Landroid/view/View;I)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "layoutDirection"    # I

    .prologue
    .line 1431
    invoke-static {p1, p2}, Landroid/support/v4/view/ViewCompatJellybeanMr1;->setLayoutDirection(Landroid/view/View;I)V

    .line 1432
    return-void
.end method

.method public setPaddingRelative(Landroid/view/View;IIII)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "start"    # I
    .param p3, "top"    # I
    .param p4, "end"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 1446
    invoke-static {p1, p2, p3, p4, p5}, Landroid/support/v4/view/ViewCompatJellybeanMr1;->setPaddingRelative(Landroid/view/View;IIII)V

    .line 1447
    return-void
.end method
