.class Landroid/support/v4/widget/TextViewCompatJb;
.super Ljava/lang/Object;
.source "TextViewCompatJb.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getMaxLines(Landroid/widget/TextView;)I
    .locals 1
    .param p0, "textView"    # Landroid/widget/TextView;

    .prologue
    .line 25
    invoke-virtual {p0}, Landroid/widget/TextView;->getMaxLines()I

    move-result v0

    return v0
.end method

.method static getMinLines(Landroid/widget/TextView;)I
    .locals 1
    .param p0, "textView"    # Landroid/widget/TextView;

    .prologue
    .line 29
    invoke-virtual {p0}, Landroid/widget/TextView;->getMinLines()I

    move-result v0

    return v0
.end method
