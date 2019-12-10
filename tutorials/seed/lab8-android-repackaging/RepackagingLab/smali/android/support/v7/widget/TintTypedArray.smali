.class public Landroid/support/v7/widget/TintTypedArray;
.super Ljava/lang/Object;
.source "TintTypedArray.java"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mTintManager:Landroid/support/v7/widget/TintManager;

.field private final mWrapped:Landroid/content/res/TypedArray;


# direct methods
.method private constructor <init>(Landroid/content/Context;Landroid/content/res/TypedArray;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "array"    # Landroid/content/res/TypedArray;

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Landroid/support/v7/widget/TintTypedArray;->mContext:Landroid/content/Context;

    .line 55
    iput-object p2, p0, Landroid/support/v7/widget/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;

    .line 56
    return-void
.end method

.method public static obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[I)Landroid/support/v7/widget/TintTypedArray;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "set"    # Landroid/util/AttributeSet;
    .param p2, "attrs"    # [I

    .prologue
    .line 43
    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 44
    .local v0, "array":Landroid/content/res/TypedArray;
    new-instance v1, Landroid/support/v7/widget/TintTypedArray;

    invoke-direct {v1, p0, v0}, Landroid/support/v7/widget/TintTypedArray;-><init>(Landroid/content/Context;Landroid/content/res/TypedArray;)V

    return-object v1
.end method

.method public static obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroid/support/v7/widget/TintTypedArray;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "set"    # Landroid/util/AttributeSet;
    .param p2, "attrs"    # [I
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 49
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 50
    .local v0, "array":Landroid/content/res/TypedArray;
    new-instance v1, Landroid/support/v7/widget/TintTypedArray;

    invoke-direct {v1, p0, v0}, Landroid/support/v7/widget/TintTypedArray;-><init>(Landroid/content/Context;Landroid/content/res/TypedArray;)V

    return-object v1
.end method


# virtual methods
.method public getBoolean(IZ)Z
    .locals 1
    .param p1, "index"    # I
    .param p2, "defValue"    # Z

    .prologue
    .line 107
    iget-object v0, p0, Landroid/support/v7/widget/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;

    invoke-virtual {v0, p1, p2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    return v0
.end method

.method public getChangingConfigurations()I
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Landroid/support/v7/widget/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    move-result v0

    return v0
.end method

.method public getColor(II)I
    .locals 1
    .param p1, "index"    # I
    .param p2, "defValue"    # I

    .prologue
    .line 119
    iget-object v0, p0, Landroid/support/v7/widget/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;

    invoke-virtual {v0, p1, p2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    return v0
.end method

.method public getColorStateList(I)Landroid/content/res/ColorStateList;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 123
    iget-object v0, p0, Landroid/support/v7/widget/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;

    invoke-virtual {v0, p1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public getDimension(IF)F
    .locals 1
    .param p1, "index"    # I
    .param p2, "defValue"    # F

    .prologue
    .line 131
    iget-object v0, p0, Landroid/support/v7/widget/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;

    invoke-virtual {v0, p1, p2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    return v0
.end method

.method public getDimensionPixelOffset(II)I
    .locals 1
    .param p1, "index"    # I
    .param p2, "defValue"    # I

    .prologue
    .line 135
    iget-object v0, p0, Landroid/support/v7/widget/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;

    invoke-virtual {v0, p1, p2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v0

    return v0
.end method

.method public getDimensionPixelSize(II)I
    .locals 1
    .param p1, "index"    # I
    .param p2, "defValue"    # I

    .prologue
    .line 139
    iget-object v0, p0, Landroid/support/v7/widget/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;

    invoke-virtual {v0, p1, p2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    return v0
.end method

.method public getDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 59
    iget-object v1, p0, Landroid/support/v7/widget/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;

    invoke-virtual {v1, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 60
    iget-object v1, p0, Landroid/support/v7/widget/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    .line 61
    .local v0, "resourceId":I
    if-eqz v0, :cond_0

    .line 62
    invoke-virtual {p0}, Landroid/support/v7/widget/TintTypedArray;->getTintManager()Landroid/support/v7/widget/TintManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/TintManager;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 65
    .end local v0    # "resourceId":I
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Landroid/support/v7/widget/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;

    invoke-virtual {v1, p1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0
.end method

.method public getDrawableIfKnown(I)Landroid/graphics/drawable/Drawable;
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 69
    iget-object v1, p0, Landroid/support/v7/widget/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;

    invoke-virtual {v1, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 70
    iget-object v1, p0, Landroid/support/v7/widget/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    .line 71
    .local v0, "resourceId":I
    if-eqz v0, :cond_0

    .line 72
    invoke-virtual {p0}, Landroid/support/v7/widget/TintTypedArray;->getTintManager()Landroid/support/v7/widget/TintManager;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/support/v7/widget/TintManager;->getDrawable(IZ)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 75
    .end local v0    # "resourceId":I
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getFloat(IF)F
    .locals 1
    .param p1, "index"    # I
    .param p2, "defValue"    # F

    .prologue
    .line 115
    iget-object v0, p0, Landroid/support/v7/widget/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;

    invoke-virtual {v0, p1, p2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    return v0
.end method

.method public getFraction(IIIF)F
    .locals 1
    .param p1, "index"    # I
    .param p2, "base"    # I
    .param p3, "pbase"    # I
    .param p4, "defValue"    # F

    .prologue
    .line 151
    iget-object v0, p0, Landroid/support/v7/widget/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/content/res/TypedArray;->getFraction(IIIF)F

    move-result v0

    return v0
.end method

.method public getIndex(I)I
    .locals 1
    .param p1, "at"    # I

    .prologue
    .line 87
    iget-object v0, p0, Landroid/support/v7/widget/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;

    invoke-virtual {v0, p1}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v0

    return v0
.end method

.method public getIndexCount()I
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Landroid/support/v7/widget/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v0

    return v0
.end method

.method public getInt(II)I
    .locals 1
    .param p1, "index"    # I
    .param p2, "defValue"    # I

    .prologue
    .line 111
    iget-object v0, p0, Landroid/support/v7/widget/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;

    invoke-virtual {v0, p1, p2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    return v0
.end method

.method public getInteger(II)I
    .locals 1
    .param p1, "index"    # I
    .param p2, "defValue"    # I

    .prologue
    .line 127
    iget-object v0, p0, Landroid/support/v7/widget/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;

    invoke-virtual {v0, p1, p2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v0

    return v0
.end method

.method public getLayoutDimension(II)I
    .locals 1
    .param p1, "index"    # I
    .param p2, "defValue"    # I

    .prologue
    .line 147
    iget-object v0, p0, Landroid/support/v7/widget/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;

    invoke-virtual {v0, p1, p2}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v0

    return v0
.end method

.method public getLayoutDimension(ILjava/lang/String;)I
    .locals 1
    .param p1, "index"    # I
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 143
    iget-object v0, p0, Landroid/support/v7/widget/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;

    invoke-virtual {v0, p1, p2}, Landroid/content/res/TypedArray;->getLayoutDimension(ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getNonResourceString(I)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 103
    iget-object v0, p0, Landroid/support/v7/widget/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;

    invoke-virtual {v0, p1}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPositionDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Landroid/support/v7/widget/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getPositionDescription()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getResourceId(II)I
    .locals 1
    .param p1, "index"    # I
    .param p2, "defValue"    # I

    .prologue
    .line 155
    iget-object v0, p0, Landroid/support/v7/widget/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;

    invoke-virtual {v0, p1, p2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    return v0
.end method

.method public getResources()Landroid/content/res/Resources;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Landroid/support/v7/widget/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 99
    iget-object v0, p0, Landroid/support/v7/widget/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;

    invoke-virtual {v0, p1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getText(I)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 95
    iget-object v0, p0, Landroid/support/v7/widget/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;

    invoke-virtual {v0, p1}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getTextArray(I)[Ljava/lang/CharSequence;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 159
    iget-object v0, p0, Landroid/support/v7/widget/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;

    invoke-virtual {v0, p1}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getTintManager()Landroid/support/v7/widget/TintManager;
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Landroid/support/v7/widget/TintTypedArray;->mTintManager:Landroid/support/v7/widget/TintManager;

    if-nez v0, :cond_0

    .line 192
    iget-object v0, p0, Landroid/support/v7/widget/TintTypedArray;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/support/v7/widget/TintManager;->get(Landroid/content/Context;)Landroid/support/v7/widget/TintManager;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/TintTypedArray;->mTintManager:Landroid/support/v7/widget/TintManager;

    .line 194
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/TintTypedArray;->mTintManager:Landroid/support/v7/widget/TintManager;

    return-object v0
.end method

.method public getType(I)I
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 167
    iget-object v0, p0, Landroid/support/v7/widget/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;

    invoke-virtual {v0, p1}, Landroid/content/res/TypedArray;->getType(I)I

    move-result v0

    return v0
.end method

.method public getValue(ILandroid/util/TypedValue;)Z
    .locals 1
    .param p1, "index"    # I
    .param p2, "outValue"    # Landroid/util/TypedValue;

    .prologue
    .line 163
    iget-object v0, p0, Landroid/support/v7/widget/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;

    invoke-virtual {v0, p1, p2}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    move-result v0

    return v0
.end method

.method public hasValue(I)Z
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 171
    iget-object v0, p0, Landroid/support/v7/widget/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;

    invoke-virtual {v0, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    return v0
.end method

.method public length()I
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Landroid/support/v7/widget/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->length()I

    move-result v0

    return v0
.end method

.method public peekValue(I)Landroid/util/TypedValue;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 175
    iget-object v0, p0, Landroid/support/v7/widget/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;

    invoke-virtual {v0, p1}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v0

    return-object v0
.end method

.method public recycle()V
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Landroid/support/v7/widget/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 184
    return-void
.end method
