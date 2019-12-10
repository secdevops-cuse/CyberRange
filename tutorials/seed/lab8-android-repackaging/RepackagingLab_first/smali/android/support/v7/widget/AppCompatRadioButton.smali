.class public Landroid/support/v7/widget/AppCompatRadioButton;
.super Landroid/widget/RadioButton;
.source "AppCompatRadioButton.java"

# interfaces
.implements Landroid/support/v4/widget/TintableCompoundButton;


# instance fields
.field private mCompoundButtonHelper:Landroid/support/v7/widget/AppCompatCompoundButtonHelper;

.field private mTintManager:Landroid/support/v7/widget/TintManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 50
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/AppCompatRadioButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 54
    sget v0, Landroid/support/v7/appcompat/R$attr;->radioButtonStyle:I

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/AppCompatRadioButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 58
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RadioButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 59
    invoke-static {p1}, Landroid/support/v7/widget/TintManager;->get(Landroid/content/Context;)Landroid/support/v7/widget/TintManager;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/AppCompatRadioButton;->mTintManager:Landroid/support/v7/widget/TintManager;

    .line 60
    new-instance v0, Landroid/support/v7/widget/AppCompatCompoundButtonHelper;

    iget-object v1, p0, Landroid/support/v7/widget/AppCompatRadioButton;->mTintManager:Landroid/support/v7/widget/TintManager;

    invoke-direct {v0, p0, v1}, Landroid/support/v7/widget/AppCompatCompoundButtonHelper;-><init>(Landroid/widget/CompoundButton;Landroid/support/v7/widget/TintManager;)V

    iput-object v0, p0, Landroid/support/v7/widget/AppCompatRadioButton;->mCompoundButtonHelper:Landroid/support/v7/widget/AppCompatCompoundButtonHelper;

    .line 61
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatRadioButton;->mCompoundButtonHelper:Landroid/support/v7/widget/AppCompatCompoundButtonHelper;

    invoke-virtual {v0, p2, p3}, Landroid/support/v7/widget/AppCompatCompoundButtonHelper;->loadFromAttributes(Landroid/util/AttributeSet;I)V

    .line 62
    return-void
.end method


# virtual methods
.method public getCompoundPaddingLeft()I
    .locals 2

    .prologue
    .line 81
    invoke-super {p0}, Landroid/widget/RadioButton;->getCompoundPaddingLeft()I

    move-result v0

    .line 82
    .local v0, "value":I
    iget-object v1, p0, Landroid/support/v7/widget/AppCompatRadioButton;->mCompoundButtonHelper:Landroid/support/v7/widget/AppCompatCompoundButtonHelper;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/support/v7/widget/AppCompatRadioButton;->mCompoundButtonHelper:Landroid/support/v7/widget/AppCompatCompoundButtonHelper;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/AppCompatCompoundButtonHelper;->getCompoundPaddingLeft(I)I

    move-result v0

    .end local v0    # "value":I
    :cond_0
    return v0
.end method

.method public getSupportButtonTintList()Landroid/content/res/ColorStateList;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 105
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatRadioButton;->mCompoundButtonHelper:Landroid/support/v7/widget/AppCompatCompoundButtonHelper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/AppCompatRadioButton;->mCompoundButtonHelper:Landroid/support/v7/widget/AppCompatCompoundButtonHelper;

    invoke-virtual {v0}, Landroid/support/v7/widget/AppCompatCompoundButtonHelper;->getSupportButtonTintList()Landroid/content/res/ColorStateList;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSupportButtonTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 128
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatRadioButton;->mCompoundButtonHelper:Landroid/support/v7/widget/AppCompatCompoundButtonHelper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/AppCompatRadioButton;->mCompoundButtonHelper:Landroid/support/v7/widget/AppCompatCompoundButtonHelper;

    invoke-virtual {v0}, Landroid/support/v7/widget/AppCompatCompoundButtonHelper;->getSupportButtonTintMode()Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setButtonDrawable(I)V
    .locals 1
    .param p1, "resId"    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    .prologue
    .line 74
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatRadioButton;->mTintManager:Landroid/support/v7/widget/TintManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/AppCompatRadioButton;->mTintManager:Landroid/support/v7/widget/TintManager;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/TintManager;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/AppCompatRadioButton;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 77
    return-void

    .line 74
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/AppCompatRadioButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0
.end method

.method public setButtonDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "buttonDrawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 66
    invoke-super {p0, p1}, Landroid/widget/RadioButton;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 67
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatRadioButton;->mCompoundButtonHelper:Landroid/support/v7/widget/AppCompatCompoundButtonHelper;

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatRadioButton;->mCompoundButtonHelper:Landroid/support/v7/widget/AppCompatCompoundButtonHelper;

    invoke-virtual {v0}, Landroid/support/v7/widget/AppCompatCompoundButtonHelper;->onSetButtonDrawable()V

    .line 70
    :cond_0
    return-void
.end method

.method public setSupportButtonTintList(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "tint"    # Landroid/content/res/ColorStateList;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 93
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatRadioButton;->mCompoundButtonHelper:Landroid/support/v7/widget/AppCompatCompoundButtonHelper;

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatRadioButton;->mCompoundButtonHelper:Landroid/support/v7/widget/AppCompatCompoundButtonHelper;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/AppCompatCompoundButtonHelper;->setSupportButtonTintList(Landroid/content/res/ColorStateList;)V

    .line 96
    :cond_0
    return-void
.end method

.method public setSupportButtonTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1
    .param p1, "tintMode"    # Landroid/graphics/PorterDuff$Mode;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 116
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatRadioButton;->mCompoundButtonHelper:Landroid/support/v7/widget/AppCompatCompoundButtonHelper;

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatRadioButton;->mCompoundButtonHelper:Landroid/support/v7/widget/AppCompatCompoundButtonHelper;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/AppCompatCompoundButtonHelper;->setSupportButtonTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 119
    :cond_0
    return-void
.end method
