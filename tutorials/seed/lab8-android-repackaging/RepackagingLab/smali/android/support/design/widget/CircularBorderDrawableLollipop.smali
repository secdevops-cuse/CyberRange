.class Landroid/support/design/widget/CircularBorderDrawableLollipop;
.super Landroid/support/design/widget/CircularBorderDrawable;
.source "CircularBorderDrawableLollipop.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/support/design/widget/CircularBorderDrawable;-><init>()V

    return-void
.end method


# virtual methods
.method public getOutline(Landroid/graphics/Outline;)V
    .locals 1
    .param p1, "outline"    # Landroid/graphics/Outline;

    .prologue
    .line 28
    iget-object v0, p0, Landroid/support/design/widget/CircularBorderDrawableLollipop;->mRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Landroid/support/design/widget/CircularBorderDrawableLollipop;->copyBounds(Landroid/graphics/Rect;)V

    .line 29
    iget-object v0, p0, Landroid/support/design/widget/CircularBorderDrawableLollipop;->mRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Outline;->setOval(Landroid/graphics/Rect;)V

    .line 30
    return-void
.end method
