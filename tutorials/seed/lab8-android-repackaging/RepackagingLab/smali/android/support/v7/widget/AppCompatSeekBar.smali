.class public Landroid/support/v7/widget/AppCompatSeekBar;
.super Landroid/widget/SeekBar;
.source "AppCompatSeekBar.java"


# instance fields
.field private mAppCompatSeekBarHelper:Landroid/support/v7/widget/AppCompatSeekBarHelper;

.field private mTintManager:Landroid/support/v7/widget/TintManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 36
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/AppCompatSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 40
    sget v0, Landroid/support/v7/appcompat/R$attr;->seekBarStyle:I

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/AppCompatSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 44
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 46
    invoke-static {p1}, Landroid/support/v7/widget/TintManager;->get(Landroid/content/Context;)Landroid/support/v7/widget/TintManager;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/AppCompatSeekBar;->mTintManager:Landroid/support/v7/widget/TintManager;

    .line 48
    new-instance v0, Landroid/support/v7/widget/AppCompatSeekBarHelper;

    iget-object v1, p0, Landroid/support/v7/widget/AppCompatSeekBar;->mTintManager:Landroid/support/v7/widget/TintManager;

    invoke-direct {v0, p0, v1}, Landroid/support/v7/widget/AppCompatSeekBarHelper;-><init>(Landroid/widget/SeekBar;Landroid/support/v7/widget/TintManager;)V

    iput-object v0, p0, Landroid/support/v7/widget/AppCompatSeekBar;->mAppCompatSeekBarHelper:Landroid/support/v7/widget/AppCompatSeekBarHelper;

    .line 49
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatSeekBar;->mAppCompatSeekBarHelper:Landroid/support/v7/widget/AppCompatSeekBarHelper;

    invoke-virtual {v0, p2, p3}, Landroid/support/v7/widget/AppCompatSeekBarHelper;->loadFromAttributes(Landroid/util/AttributeSet;I)V

    .line 50
    return-void
.end method
