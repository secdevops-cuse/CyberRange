.class Landroid/support/v7/widget/AppCompatSeekBarHelper;
.super Landroid/support/v7/widget/AppCompatProgressBarHelper;
.source "AppCompatSeekBarHelper.java"


# static fields
.field private static final TINT_ATTRS:[I


# instance fields
.field private final mView:Landroid/widget/SeekBar;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 25
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x1010142

    aput v2, v0, v1

    sput-object v0, Landroid/support/v7/widget/AppCompatSeekBarHelper;->TINT_ATTRS:[I

    return-void
.end method

.method constructor <init>(Landroid/widget/SeekBar;Landroid/support/v7/widget/TintManager;)V
    .locals 0
    .param p1, "view"    # Landroid/widget/SeekBar;
    .param p2, "tintManager"    # Landroid/support/v7/widget/TintManager;

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/AppCompatProgressBarHelper;-><init>(Landroid/widget/ProgressBar;Landroid/support/v7/widget/TintManager;)V

    .line 33
    iput-object p1, p0, Landroid/support/v7/widget/AppCompatSeekBarHelper;->mView:Landroid/widget/SeekBar;

    .line 34
    return-void
.end method


# virtual methods
.method loadFromAttributes(Landroid/util/AttributeSet;I)V
    .locals 5
    .param p1, "attrs"    # Landroid/util/AttributeSet;
    .param p2, "defStyleAttr"    # I

    .prologue
    const/4 v4, 0x0

    .line 37
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/AppCompatProgressBarHelper;->loadFromAttributes(Landroid/util/AttributeSet;I)V

    .line 39
    iget-object v2, p0, Landroid/support/v7/widget/AppCompatSeekBarHelper;->mView:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Landroid/support/v7/widget/AppCompatSeekBarHelper;->TINT_ATTRS:[I

    invoke-static {v2, p1, v3, p2, v4}, Landroid/support/v7/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroid/support/v7/widget/TintTypedArray;

    move-result-object v0

    .line 41
    .local v0, "a":Landroid/support/v7/widget/TintTypedArray;
    invoke-virtual {v0, v4}, Landroid/support/v7/widget/TintTypedArray;->getDrawableIfKnown(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 42
    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_0

    .line 43
    iget-object v2, p0, Landroid/support/v7/widget/AppCompatSeekBarHelper;->mView:Landroid/widget/SeekBar;

    invoke-virtual {v2, v1}, Landroid/widget/SeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 45
    :cond_0
    invoke-virtual {v0}, Landroid/support/v7/widget/TintTypedArray;->recycle()V

    .line 46
    return-void
.end method
