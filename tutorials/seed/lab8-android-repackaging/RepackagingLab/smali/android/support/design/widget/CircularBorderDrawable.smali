.class Landroid/support/design/widget/CircularBorderDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "CircularBorderDrawable.java"


# static fields
.field private static final DRAW_STROKE_WIDTH_MULTIPLE:F = 1.3333f


# instance fields
.field private mBorderTint:Landroid/content/res/ColorStateList;

.field mBorderWidth:F

.field private mBottomInnerStrokeColor:I

.field private mBottomOuterStrokeColor:I

.field private mCurrentBorderTintColor:I

.field private mInvalidateShader:Z

.field final mPaint:Landroid/graphics/Paint;

.field final mRect:Landroid/graphics/Rect;

.field final mRectF:Landroid/graphics/RectF;

.field private mRotation:F

.field private mTopInnerStrokeColor:I

.field private mTopOuterStrokeColor:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 61
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 44
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/design/widget/CircularBorderDrawable;->mRect:Landroid/graphics/Rect;

    .line 45
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Landroid/support/design/widget/CircularBorderDrawable;->mRectF:Landroid/graphics/RectF;

    .line 57
    iput-boolean v1, p0, Landroid/support/design/widget/CircularBorderDrawable;->mInvalidateShader:Z

    .line 62
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Landroid/support/design/widget/CircularBorderDrawable;->mPaint:Landroid/graphics/Paint;

    .line 63
    iget-object v0, p0, Landroid/support/design/widget/CircularBorderDrawable;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 64
    return-void
.end method

.method private createGradientShader()Landroid/graphics/Shader;
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/high16 v10, 0x3f800000    # 1.0f

    const/high16 v7, 0x3f000000    # 0.5f

    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 182
    iget-object v9, p0, Landroid/support/design/widget/CircularBorderDrawable;->mRect:Landroid/graphics/Rect;

    .line 183
    .local v9, "rect":Landroid/graphics/Rect;
    invoke-virtual {p0, v9}, Landroid/support/design/widget/CircularBorderDrawable;->copyBounds(Landroid/graphics/Rect;)V

    .line 185
    iget v0, p0, Landroid/support/design/widget/CircularBorderDrawable;->mBorderWidth:F

    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    div-float v8, v0, v2

    .line 187
    .local v8, "borderRatio":F
    const/4 v0, 0x6

    new-array v5, v0, [I

    .line 188
    .local v5, "colors":[I
    iget v0, p0, Landroid/support/design/widget/CircularBorderDrawable;->mTopOuterStrokeColor:I

    iget v2, p0, Landroid/support/design/widget/CircularBorderDrawable;->mCurrentBorderTintColor:I

    invoke-static {v0, v2}, Landroid/support/v4/graphics/ColorUtils;->compositeColors(II)I

    move-result v0

    aput v0, v5, v4

    .line 189
    iget v0, p0, Landroid/support/design/widget/CircularBorderDrawable;->mTopInnerStrokeColor:I

    iget v2, p0, Landroid/support/design/widget/CircularBorderDrawable;->mCurrentBorderTintColor:I

    invoke-static {v0, v2}, Landroid/support/v4/graphics/ColorUtils;->compositeColors(II)I

    move-result v0

    aput v0, v5, v11

    .line 190
    const/4 v0, 0x2

    iget v2, p0, Landroid/support/design/widget/CircularBorderDrawable;->mTopInnerStrokeColor:I

    invoke-static {v2, v4}, Landroid/support/v4/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v2

    iget v3, p0, Landroid/support/design/widget/CircularBorderDrawable;->mCurrentBorderTintColor:I

    invoke-static {v2, v3}, Landroid/support/v4/graphics/ColorUtils;->compositeColors(II)I

    move-result v2

    aput v2, v5, v0

    .line 192
    const/4 v0, 0x3

    iget v2, p0, Landroid/support/design/widget/CircularBorderDrawable;->mBottomInnerStrokeColor:I

    invoke-static {v2, v4}, Landroid/support/v4/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v2

    iget v3, p0, Landroid/support/design/widget/CircularBorderDrawable;->mCurrentBorderTintColor:I

    invoke-static {v2, v3}, Landroid/support/v4/graphics/ColorUtils;->compositeColors(II)I

    move-result v2

    aput v2, v5, v0

    .line 194
    const/4 v0, 0x4

    iget v2, p0, Landroid/support/design/widget/CircularBorderDrawable;->mBottomInnerStrokeColor:I

    iget v3, p0, Landroid/support/design/widget/CircularBorderDrawable;->mCurrentBorderTintColor:I

    invoke-static {v2, v3}, Landroid/support/v4/graphics/ColorUtils;->compositeColors(II)I

    move-result v2

    aput v2, v5, v0

    .line 195
    const/4 v0, 0x5

    iget v2, p0, Landroid/support/design/widget/CircularBorderDrawable;->mBottomOuterStrokeColor:I

    iget v3, p0, Landroid/support/design/widget/CircularBorderDrawable;->mCurrentBorderTintColor:I

    invoke-static {v2, v3}, Landroid/support/v4/graphics/ColorUtils;->compositeColors(II)I

    move-result v2

    aput v2, v5, v0

    .line 197
    const/4 v0, 0x6

    new-array v6, v0, [F

    .line 198
    .local v6, "positions":[F
    aput v1, v6, v4

    .line 199
    aput v8, v6, v11

    .line 200
    const/4 v0, 0x2

    aput v7, v6, v0

    .line 201
    const/4 v0, 0x3

    aput v7, v6, v0

    .line 202
    const/4 v0, 0x4

    sub-float v2, v10, v8

    aput v2, v6, v0

    .line 203
    const/4 v0, 0x5

    aput v10, v6, v0

    .line 205
    new-instance v0, Landroid/graphics/LinearGradient;

    iget v2, v9, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    iget v3, v9, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v3

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move v3, v1

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    return-object v0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 88
    iget-boolean v2, p0, Landroid/support/design/widget/CircularBorderDrawable;->mInvalidateShader:Z

    if-eqz v2, :cond_0

    .line 89
    iget-object v2, p0, Landroid/support/design/widget/CircularBorderDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-direct {p0}, Landroid/support/design/widget/CircularBorderDrawable;->createGradientShader()Landroid/graphics/Shader;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 90
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/support/design/widget/CircularBorderDrawable;->mInvalidateShader:Z

    .line 93
    :cond_0
    iget-object v2, p0, Landroid/support/design/widget/CircularBorderDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float v0, v2, v3

    .line 94
    .local v0, "halfBorderWidth":F
    iget-object v1, p0, Landroid/support/design/widget/CircularBorderDrawable;->mRectF:Landroid/graphics/RectF;

    .line 98
    .local v1, "rectF":Landroid/graphics/RectF;
    iget-object v2, p0, Landroid/support/design/widget/CircularBorderDrawable;->mRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v2}, Landroid/support/design/widget/CircularBorderDrawable;->copyBounds(Landroid/graphics/Rect;)V

    .line 99
    iget-object v2, p0, Landroid/support/design/widget/CircularBorderDrawable;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 100
    iget v2, v1, Landroid/graphics/RectF;->left:F

    add-float/2addr v2, v0

    iput v2, v1, Landroid/graphics/RectF;->left:F

    .line 101
    iget v2, v1, Landroid/graphics/RectF;->top:F

    add-float/2addr v2, v0

    iput v2, v1, Landroid/graphics/RectF;->top:F

    .line 102
    iget v2, v1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v2, v0

    iput v2, v1, Landroid/graphics/RectF;->right:F

    .line 103
    iget v2, v1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v2, v0

    iput v2, v1, Landroid/graphics/RectF;->bottom:F

    .line 105
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 106
    iget v2, p0, Landroid/support/design/widget/CircularBorderDrawable;->mRotation:F

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v3

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v4

    invoke-virtual {p1, v2, v3, v4}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 108
    iget-object v2, p0, Landroid/support/design/widget/CircularBorderDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 109
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 110
    return-void
.end method

.method public getOpacity()I
    .locals 2

    .prologue
    .line 142
    iget v0, p0, Landroid/support/design/widget/CircularBorderDrawable;->mBorderWidth:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, -0x3

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x2

    goto :goto_0
.end method

.method public getPadding(Landroid/graphics/Rect;)Z
    .locals 2
    .param p1, "padding"    # Landroid/graphics/Rect;

    .prologue
    .line 114
    iget v1, p0, Landroid/support/design/widget/CircularBorderDrawable;->mBorderWidth:F

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 115
    .local v0, "borderWidth":I
    invoke-virtual {p1, v0, v0, v0, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 116
    const/4 v1, 0x1

    return v1
.end method

.method public isStateful()Z
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Landroid/support/design/widget/CircularBorderDrawable;->mBorderTint:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/CircularBorderDrawable;->mBorderTint:Landroid/content/res/ColorStateList;

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .prologue
    .line 154
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/design/widget/CircularBorderDrawable;->mInvalidateShader:Z

    .line 155
    return-void
.end method

.method protected onStateChange([I)Z
    .locals 3
    .param p1, "state"    # [I

    .prologue
    .line 164
    iget-object v1, p0, Landroid/support/design/widget/CircularBorderDrawable;->mBorderTint:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_0

    .line 165
    iget-object v1, p0, Landroid/support/design/widget/CircularBorderDrawable;->mBorderTint:Landroid/content/res/ColorStateList;

    iget v2, p0, Landroid/support/design/widget/CircularBorderDrawable;->mCurrentBorderTintColor:I

    invoke-virtual {v1, p1, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    .line 166
    .local v0, "newColor":I
    iget v1, p0, Landroid/support/design/widget/CircularBorderDrawable;->mCurrentBorderTintColor:I

    if-eq v0, v1, :cond_0

    .line 167
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/support/design/widget/CircularBorderDrawable;->mInvalidateShader:Z

    .line 168
    iput v0, p0, Landroid/support/design/widget/CircularBorderDrawable;->mCurrentBorderTintColor:I

    .line 171
    .end local v0    # "newColor":I
    :cond_0
    iget-boolean v1, p0, Landroid/support/design/widget/CircularBorderDrawable;->mInvalidateShader:Z

    if-eqz v1, :cond_1

    .line 172
    invoke-virtual {p0}, Landroid/support/design/widget/CircularBorderDrawable;->invalidateSelf()V

    .line 174
    :cond_1
    iget-boolean v1, p0, Landroid/support/design/widget/CircularBorderDrawable;->mInvalidateShader:Z

    return v1
.end method

.method public setAlpha(I)V
    .locals 1
    .param p1, "alpha"    # I

    .prologue
    .line 121
    iget-object v0, p0, Landroid/support/design/widget/CircularBorderDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 122
    invoke-virtual {p0}, Landroid/support/design/widget/CircularBorderDrawable;->invalidateSelf()V

    .line 123
    return-void
.end method

.method setBorderTint(Landroid/content/res/ColorStateList;)V
    .locals 2
    .param p1, "tint"    # Landroid/content/res/ColorStateList;

    .prologue
    .line 126
    if-eqz p1, :cond_0

    .line 127
    invoke-virtual {p0}, Landroid/support/design/widget/CircularBorderDrawable;->getState()[I

    move-result-object v0

    iget v1, p0, Landroid/support/design/widget/CircularBorderDrawable;->mCurrentBorderTintColor:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    iput v0, p0, Landroid/support/design/widget/CircularBorderDrawable;->mCurrentBorderTintColor:I

    .line 129
    :cond_0
    iput-object p1, p0, Landroid/support/design/widget/CircularBorderDrawable;->mBorderTint:Landroid/content/res/ColorStateList;

    .line 130
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/design/widget/CircularBorderDrawable;->mInvalidateShader:Z

    .line 131
    invoke-virtual {p0}, Landroid/support/design/widget/CircularBorderDrawable;->invalidateSelf()V

    .line 132
    return-void
.end method

.method setBorderWidth(F)V
    .locals 2
    .param p1, "width"    # F

    .prologue
    .line 78
    iget v0, p0, Landroid/support/design/widget/CircularBorderDrawable;->mBorderWidth:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 79
    iput p1, p0, Landroid/support/design/widget/CircularBorderDrawable;->mBorderWidth:F

    .line 80
    iget-object v0, p0, Landroid/support/design/widget/CircularBorderDrawable;->mPaint:Landroid/graphics/Paint;

    const v1, 0x3faaa993    # 1.3333f

    mul-float/2addr v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 81
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/design/widget/CircularBorderDrawable;->mInvalidateShader:Z

    .line 82
    invoke-virtual {p0}, Landroid/support/design/widget/CircularBorderDrawable;->invalidateSelf()V

    .line 84
    :cond_0
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .param p1, "colorFilter"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 136
    iget-object v0, p0, Landroid/support/design/widget/CircularBorderDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 137
    invoke-virtual {p0}, Landroid/support/design/widget/CircularBorderDrawable;->invalidateSelf()V

    .line 138
    return-void
.end method

.method setGradientColors(IIII)V
    .locals 0
    .param p1, "topOuterStrokeColor"    # I
    .param p2, "topInnerStrokeColor"    # I
    .param p3, "bottomOuterStrokeColor"    # I
    .param p4, "bottomInnerStrokeColor"    # I

    .prologue
    .line 68
    iput p1, p0, Landroid/support/design/widget/CircularBorderDrawable;->mTopOuterStrokeColor:I

    .line 69
    iput p2, p0, Landroid/support/design/widget/CircularBorderDrawable;->mTopInnerStrokeColor:I

    .line 70
    iput p3, p0, Landroid/support/design/widget/CircularBorderDrawable;->mBottomOuterStrokeColor:I

    .line 71
    iput p4, p0, Landroid/support/design/widget/CircularBorderDrawable;->mBottomInnerStrokeColor:I

    .line 72
    return-void
.end method

.method final setRotation(F)V
    .locals 1
    .param p1, "rotation"    # F

    .prologue
    .line 146
    iget v0, p0, Landroid/support/design/widget/CircularBorderDrawable;->mRotation:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 147
    iput p1, p0, Landroid/support/design/widget/CircularBorderDrawable;->mRotation:F

    .line 148
    invoke-virtual {p0}, Landroid/support/design/widget/CircularBorderDrawable;->invalidateSelf()V

    .line 150
    :cond_0
    return-void
.end method
