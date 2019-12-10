.class Landroid/support/design/widget/ShadowDrawableWrapper;
.super Landroid/support/v7/graphics/drawable/DrawableWrapper;
.source "ShadowDrawableWrapper.java"


# static fields
.field static final COS_45:D

.field static final SHADOW_BOTTOM_SCALE:F = 1.0f

.field static final SHADOW_HORIZ_SCALE:F = 0.5f

.field static final SHADOW_MULTIPLIER:F = 1.5f

.field static final SHADOW_TOP_SCALE:F = 0.25f


# instance fields
.field private mAddPaddingForCorners:Z

.field final mContentBounds:Landroid/graphics/RectF;

.field mCornerRadius:F

.field final mCornerShadowPaint:Landroid/graphics/Paint;

.field mCornerShadowPath:Landroid/graphics/Path;

.field private mDirty:Z

.field final mEdgeShadowPaint:Landroid/graphics/Paint;

.field mMaxShadowSize:F

.field private mPrintedShadowClipWarning:Z

.field mRawMaxShadowSize:F

.field mRawShadowSize:F

.field private mRotation:F

.field private final mShadowEndColor:I

.field private final mShadowMiddleColor:I

.field mShadowSize:F

.field private final mShadowStartColor:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 39
    const-wide v0, 0x4046800000000000L    # 45.0

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    sput-wide v0, Landroid/support/design/widget/ShadowDrawableWrapper;->COS_45:D

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;FFF)V
    .locals 3
    .param p1, "resources"    # Landroid/content/res/Resources;
    .param p2, "content"    # Landroid/graphics/drawable/Drawable;
    .param p3, "radius"    # F
    .param p4, "shadowSize"    # F
    .param p5, "maxShadowSize"    # F

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 83
    invoke-direct {p0, p2}, Landroid/support/v7/graphics/drawable/DrawableWrapper;-><init>(Landroid/graphics/drawable/Drawable;)V

    .line 66
    iput-boolean v0, p0, Landroid/support/design/widget/ShadowDrawableWrapper;->mDirty:Z

    .line 72
    iput-boolean v0, p0, Landroid/support/design/widget/ShadowDrawableWrapper;->mAddPaddingForCorners:Z

    .line 79
    iput-boolean v2, p0, Landroid/support/design/widget/ShadowDrawableWrapper;->mPrintedShadowClipWarning:Z

    .line 85
    sget v0, Landroid/support/design/R$color;->design_fab_shadow_start_color:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Landroid/support/design/widget/ShadowDrawableWrapper;->mShadowStartColor:I

    .line 86
    sget v0, Landroid/support/design/R$color;->design_fab_shadow_mid_color:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Landroid/support/design/widget/ShadowDrawableWrapper;->mShadowMiddleColor:I

    .line 87
    sget v0, Landroid/support/design/R$color;->design_fab_shadow_end_color:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Landroid/support/design/widget/ShadowDrawableWrapper;->mShadowEndColor:I

    .line 89
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Landroid/support/design/widget/ShadowDrawableWrapper;->mCornerShadowPaint:Landroid/graphics/Paint;

    .line 90
    iget-object v0, p0, Landroid/support/design/widget/ShadowDrawableWrapper;->mCornerShadowPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 91
    invoke-static {p3}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Landroid/support/design/widget/ShadowDrawableWrapper;->mCornerRadius:F

    .line 92
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Landroid/support/design/widget/ShadowDrawableWrapper;->mContentBounds:Landroid/graphics/RectF;

    .line 93
    new-instance v0, Landroid/graphics/Paint;

    iget-object v1, p0, Landroid/support/design/widget/ShadowDrawableWrapper;->mCornerShadowPaint:Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object v0, p0, Landroid/support/design/widget/ShadowDrawableWrapper;->mEdgeShadowPaint:Landroid/graphics/Paint;

    .line 94
    iget-object v0, p0, Landroid/support/design/widget/ShadowDrawableWrapper;->mEdgeShadowPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 95
    invoke-virtual {p0, p4, p5}, Landroid/support/design/widget/ShadowDrawableWrapper;->setShadowSize(FF)V

    .line 96
    return-void
.end method

.method private buildComponents(Landroid/graphics/Rect;)V
    .locals 6
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .prologue
    .line 323
    iget v1, p0, Landroid/support/design/widget/ShadowDrawableWrapper;->mRawMaxShadowSize:F

    const/high16 v2, 0x3fc00000    # 1.5f

    mul-float v0, v1, v2

    .line 324
    .local v0, "verticalOffset":F
    iget-object v1, p0, Landroid/support/design/widget/ShadowDrawableWrapper;->mContentBounds:Landroid/graphics/RectF;

    iget v2, p1, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget v3, p0, Landroid/support/design/widget/ShadowDrawableWrapper;->mRawMaxShadowSize:F

    add-float/2addr v2, v3

    iget v3, p1, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    add-float/2addr v3, v0

    iget v4, p1, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    iget v5, p0, Landroid/support/design/widget/ShadowDrawableWrapper;->mRawMaxShadowSize:F

    sub-float/2addr v4, v5

    iget v5, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, v5

    sub-float/2addr v5, v0

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 327
    invoke-virtual {p0}, Landroid/support/design/widget/ShadowDrawableWrapper;->getWrappedDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-object v2, p0, Landroid/support/design/widget/ShadowDrawableWrapper;->mContentBounds:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    float-to-int v2, v2

    iget-object v3, p0, Landroid/support/design/widget/ShadowDrawableWrapper;->mContentBounds:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    float-to-int v3, v3

    iget-object v4, p0, Landroid/support/design/widget/ShadowDrawableWrapper;->mContentBounds:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->right:F

    float-to-int v4, v4

    iget-object v5, p0, Landroid/support/design/widget/ShadowDrawableWrapper;->mContentBounds:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    float-to-int v5, v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 330
    invoke-direct {p0}, Landroid/support/design/widget/ShadowDrawableWrapper;->buildShadowCorners()V

    .line 331
    return-void
.end method

.method private buildShadowCorners()V
    .locals 17

    .prologue
    .line 282
    new-instance v13, Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget v1, v0, Landroid/support/design/widget/ShadowDrawableWrapper;->mCornerRadius:F

    neg-float v1, v1

    move-object/from16 v0, p0

    iget v2, v0, Landroid/support/design/widget/ShadowDrawableWrapper;->mCornerRadius:F

    neg-float v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Landroid/support/design/widget/ShadowDrawableWrapper;->mCornerRadius:F

    move-object/from16 v0, p0

    iget v5, v0, Landroid/support/design/widget/ShadowDrawableWrapper;->mCornerRadius:F

    invoke-direct {v13, v1, v2, v3, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 283
    .local v13, "innerBounds":Landroid/graphics/RectF;
    new-instance v15, Landroid/graphics/RectF;

    invoke-direct {v15, v13}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 284
    .local v15, "outerBounds":Landroid/graphics/RectF;
    move-object/from16 v0, p0

    iget v1, v0, Landroid/support/design/widget/ShadowDrawableWrapper;->mShadowSize:F

    neg-float v1, v1

    move-object/from16 v0, p0

    iget v2, v0, Landroid/support/design/widget/ShadowDrawableWrapper;->mShadowSize:F

    neg-float v2, v2

    invoke-virtual {v15, v1, v2}, Landroid/graphics/RectF;->inset(FF)V

    .line 286
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/design/widget/ShadowDrawableWrapper;->mCornerShadowPath:Landroid/graphics/Path;

    if-nez v1, :cond_1

    .line 287
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    move-object/from16 v0, p0

    iput-object v1, v0, Landroid/support/design/widget/ShadowDrawableWrapper;->mCornerShadowPath:Landroid/graphics/Path;

    .line 291
    :goto_0
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/design/widget/ShadowDrawableWrapper;->mCornerShadowPath:Landroid/graphics/Path;

    sget-object v2, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    invoke-virtual {v1, v2}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 292
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/design/widget/ShadowDrawableWrapper;->mCornerShadowPath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget v2, v0, Landroid/support/design/widget/ShadowDrawableWrapper;->mCornerRadius:F

    neg-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 293
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/design/widget/ShadowDrawableWrapper;->mCornerShadowPath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget v2, v0, Landroid/support/design/widget/ShadowDrawableWrapper;->mShadowSize:F

    neg-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 295
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/design/widget/ShadowDrawableWrapper;->mCornerShadowPath:Landroid/graphics/Path;

    const/high16 v2, 0x43340000    # 180.0f

    const/high16 v3, 0x42b40000    # 90.0f

    const/4 v5, 0x0

    invoke-virtual {v1, v15, v2, v3, v5}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    .line 297
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/design/widget/ShadowDrawableWrapper;->mCornerShadowPath:Landroid/graphics/Path;

    const/high16 v2, 0x43870000    # 270.0f

    const/high16 v3, -0x3d4c0000    # -90.0f

    const/4 v5, 0x0

    invoke-virtual {v1, v13, v2, v3, v5}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    .line 298
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/design/widget/ShadowDrawableWrapper;->mCornerShadowPath:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->close()V

    .line 300
    iget v1, v15, Landroid/graphics/RectF;->top:F

    neg-float v4, v1

    .line 301
    .local v4, "shadowRadius":F
    const/4 v1, 0x0

    cmpl-float v1, v4, v1

    if-lez v1, :cond_0

    .line 302
    move-object/from16 v0, p0

    iget v1, v0, Landroid/support/design/widget/ShadowDrawableWrapper;->mCornerRadius:F

    div-float v16, v1, v4

    .line 303
    .local v16, "startRatio":F
    const/high16 v1, 0x3f800000    # 1.0f

    sub-float v1, v1, v16

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    add-float v14, v16, v1

    .line 304
    .local v14, "midRatio":F
    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/support/design/widget/ShadowDrawableWrapper;->mCornerShadowPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/RadialGradient;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x4

    new-array v5, v5, [I

    const/4 v6, 0x0

    const/4 v7, 0x0

    aput v7, v5, v6

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget v7, v0, Landroid/support/design/widget/ShadowDrawableWrapper;->mShadowStartColor:I

    aput v7, v5, v6

    const/4 v6, 0x2

    move-object/from16 v0, p0

    iget v7, v0, Landroid/support/design/widget/ShadowDrawableWrapper;->mShadowMiddleColor:I

    aput v7, v5, v6

    const/4 v6, 0x3

    move-object/from16 v0, p0

    iget v7, v0, Landroid/support/design/widget/ShadowDrawableWrapper;->mShadowEndColor:I

    aput v7, v5, v6

    const/4 v6, 0x4

    new-array v6, v6, [F

    const/4 v7, 0x0

    const/4 v9, 0x0

    aput v9, v6, v7

    const/4 v7, 0x1

    aput v16, v6, v7

    const/4 v7, 0x2

    aput v14, v6, v7

    const/4 v7, 0x3

    const/high16 v9, 0x3f800000    # 1.0f

    aput v9, v6, v7

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v1 .. v7}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v8, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 313
    .end local v14    # "midRatio":F
    .end local v16    # "startRatio":F
    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/design/widget/ShadowDrawableWrapper;->mEdgeShadowPaint:Landroid/graphics/Paint;

    new-instance v5, Landroid/graphics/LinearGradient;

    const/4 v6, 0x0

    iget v7, v13, Landroid/graphics/RectF;->top:F

    const/4 v8, 0x0

    iget v9, v15, Landroid/graphics/RectF;->top:F

    const/4 v2, 0x3

    new-array v10, v2, [I

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget v3, v0, Landroid/support/design/widget/ShadowDrawableWrapper;->mShadowStartColor:I

    aput v3, v10, v2

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget v3, v0, Landroid/support/design/widget/ShadowDrawableWrapper;->mShadowMiddleColor:I

    aput v3, v10, v2

    const/4 v2, 0x2

    move-object/from16 v0, p0

    iget v3, v0, Landroid/support/design/widget/ShadowDrawableWrapper;->mShadowEndColor:I

    aput v3, v10, v2

    const/4 v2, 0x3

    new-array v11, v2, [F

    fill-array-data v11, :array_0

    sget-object v12, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v5 .. v12}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 316
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/design/widget/ShadowDrawableWrapper;->mEdgeShadowPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 317
    return-void

    .line 289
    .end local v4    # "shadowRadius":F
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/design/widget/ShadowDrawableWrapper;->mCornerShadowPath:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    goto/16 :goto_0

    .line 313
    nop

    :array_0
    .array-data 4
        0x0
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public static calculateHorizontalPadding(FFZ)F
    .locals 6
    .param p0, "maxShadowSize"    # F
    .param p1, "cornerRadius"    # F
    .param p2, "addPaddingForCorners"    # Z

    .prologue
    .line 167
    if-eqz p2, :cond_0

    .line 168
    float-to-double v0, p0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sget-wide v4, Landroid/support/design/widget/ShadowDrawableWrapper;->COS_45:D

    sub-double/2addr v2, v4

    float-to-double v4, p1

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    double-to-float p0, v0

    .line 170
    .end local p0    # "maxShadowSize":F
    :cond_0
    return p0
.end method

.method public static calculateVerticalPadding(FFZ)F
    .locals 6
    .param p0, "maxShadowSize"    # F
    .param p1, "cornerRadius"    # F
    .param p2, "addPaddingForCorners"    # Z

    .prologue
    const/high16 v0, 0x3fc00000    # 1.5f

    .line 158
    if-eqz p2, :cond_0

    .line 159
    mul-float/2addr v0, p0

    float-to-double v0, v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sget-wide v4, Landroid/support/design/widget/ShadowDrawableWrapper;->COS_45:D

    sub-double/2addr v2, v4

    float-to-double v4, p1

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    double-to-float v0, v0

    .line 161
    :goto_0
    return v0

    :cond_0
    mul-float/2addr v0, p0

    goto :goto_0
.end method

.method private drawShadow(Landroid/graphics/Canvas;)V
    .locals 20
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 208
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v11

    .line 209
    .local v11, "rotateSaved":I
    move-object/from16 v0, p0

    iget v3, v0, Landroid/support/design/widget/ShadowDrawableWrapper;->mRotation:F

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/design/widget/ShadowDrawableWrapper;->mContentBounds:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->centerX()F

    move-result v4

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/support/design/widget/ShadowDrawableWrapper;->mContentBounds:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->centerY()F

    move-result v6

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4, v6}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 211
    move-object/from16 v0, p0

    iget v3, v0, Landroid/support/design/widget/ShadowDrawableWrapper;->mCornerRadius:F

    neg-float v3, v3

    move-object/from16 v0, p0

    iget v4, v0, Landroid/support/design/widget/ShadowDrawableWrapper;->mShadowSize:F

    sub-float v5, v3, v4

    .line 212
    .local v5, "edgeShadowTop":F
    move-object/from16 v0, p0

    iget v13, v0, Landroid/support/design/widget/ShadowDrawableWrapper;->mCornerRadius:F

    .line 213
    .local v13, "shadowOffset":F
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/design/widget/ShadowDrawableWrapper;->mContentBounds:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    const/high16 v4, 0x40000000    # 2.0f

    mul-float/2addr v4, v13

    sub-float/2addr v3, v4

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-lez v3, :cond_4

    const/4 v9, 0x1

    .line 214
    .local v9, "drawHorizontalEdges":Z
    :goto_0
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/design/widget/ShadowDrawableWrapper;->mContentBounds:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    const/high16 v4, 0x40000000    # 2.0f

    mul-float/2addr v4, v13

    sub-float/2addr v3, v4

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-lez v3, :cond_5

    const/4 v10, 0x1

    .line 216
    .local v10, "drawVerticalEdges":Z
    :goto_1
    move-object/from16 v0, p0

    iget v3, v0, Landroid/support/design/widget/ShadowDrawableWrapper;->mRawShadowSize:F

    move-object/from16 v0, p0

    iget v4, v0, Landroid/support/design/widget/ShadowDrawableWrapper;->mRawShadowSize:F

    const/high16 v6, 0x3e800000    # 0.25f

    mul-float/2addr v4, v6

    sub-float v16, v3, v4

    .line 217
    .local v16, "shadowOffsetTop":F
    move-object/from16 v0, p0

    iget v3, v0, Landroid/support/design/widget/ShadowDrawableWrapper;->mRawShadowSize:F

    move-object/from16 v0, p0

    iget v4, v0, Landroid/support/design/widget/ShadowDrawableWrapper;->mRawShadowSize:F

    const/high16 v6, 0x3f000000    # 0.5f

    mul-float/2addr v4, v6

    sub-float v15, v3, v4

    .line 218
    .local v15, "shadowOffsetHorizontal":F
    move-object/from16 v0, p0

    iget v3, v0, Landroid/support/design/widget/ShadowDrawableWrapper;->mRawShadowSize:F

    move-object/from16 v0, p0

    iget v4, v0, Landroid/support/design/widget/ShadowDrawableWrapper;->mRawShadowSize:F

    const/high16 v6, 0x3f800000    # 1.0f

    mul-float/2addr v4, v6

    sub-float v14, v3, v4

    .line 220
    .local v14, "shadowOffsetBottom":F
    add-float v3, v13, v15

    div-float v18, v13, v3

    .line 221
    .local v18, "shadowScaleHorizontal":F
    add-float v3, v13, v16

    div-float v19, v13, v3

    .line 222
    .local v19, "shadowScaleTop":F
    add-float v3, v13, v14

    div-float v17, v13, v3

    .line 225
    .local v17, "shadowScaleBottom":F
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v12

    .line 226
    .local v12, "saved":I
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/design/widget/ShadowDrawableWrapper;->mContentBounds:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    add-float/2addr v3, v13

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/design/widget/ShadowDrawableWrapper;->mContentBounds:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    add-float/2addr v4, v13

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 227
    move-object/from16 v0, p1

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->scale(FF)V

    .line 228
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/design/widget/ShadowDrawableWrapper;->mCornerShadowPath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/design/widget/ShadowDrawableWrapper;->mCornerShadowPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 229
    if-eqz v9, :cond_0

    .line 231
    const/high16 v3, 0x3f800000    # 1.0f

    div-float v3, v3, v18

    const/high16 v4, 0x3f800000    # 1.0f

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Canvas;->scale(FF)V

    .line 232
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/design/widget/ShadowDrawableWrapper;->mContentBounds:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    const/high16 v6, 0x40000000    # 2.0f

    mul-float/2addr v6, v13

    sub-float v6, v3, v6

    move-object/from16 v0, p0

    iget v3, v0, Landroid/support/design/widget/ShadowDrawableWrapper;->mCornerRadius:F

    neg-float v7, v3

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/support/design/widget/ShadowDrawableWrapper;->mEdgeShadowPaint:Landroid/graphics/Paint;

    move-object/from16 v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 236
    :cond_0
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 238
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v12

    .line 239
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/design/widget/ShadowDrawableWrapper;->mContentBounds:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    sub-float/2addr v3, v13

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/design/widget/ShadowDrawableWrapper;->mContentBounds:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v4, v13

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 240
    move-object/from16 v0, p1

    move/from16 v1, v18

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->scale(FF)V

    .line 241
    const/high16 v3, 0x43340000    # 180.0f

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/graphics/Canvas;->rotate(F)V

    .line 242
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/design/widget/ShadowDrawableWrapper;->mCornerShadowPath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/design/widget/ShadowDrawableWrapper;->mCornerShadowPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 243
    if-eqz v9, :cond_1

    .line 245
    const/high16 v3, 0x3f800000    # 1.0f

    div-float v3, v3, v18

    const/high16 v4, 0x3f800000    # 1.0f

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Canvas;->scale(FF)V

    .line 246
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/design/widget/ShadowDrawableWrapper;->mContentBounds:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    const/high16 v6, 0x40000000    # 2.0f

    mul-float/2addr v6, v13

    sub-float v6, v3, v6

    move-object/from16 v0, p0

    iget v3, v0, Landroid/support/design/widget/ShadowDrawableWrapper;->mCornerRadius:F

    neg-float v3, v3

    move-object/from16 v0, p0

    iget v7, v0, Landroid/support/design/widget/ShadowDrawableWrapper;->mShadowSize:F

    add-float/2addr v7, v3

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/support/design/widget/ShadowDrawableWrapper;->mEdgeShadowPaint:Landroid/graphics/Paint;

    move-object/from16 v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 250
    :cond_1
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 252
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v12

    .line 253
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/design/widget/ShadowDrawableWrapper;->mContentBounds:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    add-float/2addr v3, v13

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/design/widget/ShadowDrawableWrapper;->mContentBounds:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v4, v13

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 254
    move-object/from16 v0, p1

    move/from16 v1, v18

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->scale(FF)V

    .line 255
    const/high16 v3, 0x43870000    # 270.0f

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/graphics/Canvas;->rotate(F)V

    .line 256
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/design/widget/ShadowDrawableWrapper;->mCornerShadowPath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/design/widget/ShadowDrawableWrapper;->mCornerShadowPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 257
    if-eqz v10, :cond_2

    .line 259
    const/high16 v3, 0x3f800000    # 1.0f

    div-float v3, v3, v17

    const/high16 v4, 0x3f800000    # 1.0f

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Canvas;->scale(FF)V

    .line 260
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/design/widget/ShadowDrawableWrapper;->mContentBounds:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    const/high16 v6, 0x40000000    # 2.0f

    mul-float/2addr v6, v13

    sub-float v6, v3, v6

    move-object/from16 v0, p0

    iget v3, v0, Landroid/support/design/widget/ShadowDrawableWrapper;->mCornerRadius:F

    neg-float v7, v3

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/support/design/widget/ShadowDrawableWrapper;->mEdgeShadowPaint:Landroid/graphics/Paint;

    move-object/from16 v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 263
    :cond_2
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 265
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v12

    .line 266
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/design/widget/ShadowDrawableWrapper;->mContentBounds:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    sub-float/2addr v3, v13

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/design/widget/ShadowDrawableWrapper;->mContentBounds:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    add-float/2addr v4, v13

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 267
    move-object/from16 v0, p1

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->scale(FF)V

    .line 268
    const/high16 v3, 0x42b40000    # 90.0f

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/graphics/Canvas;->rotate(F)V

    .line 269
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/design/widget/ShadowDrawableWrapper;->mCornerShadowPath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/design/widget/ShadowDrawableWrapper;->mCornerShadowPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 270
    if-eqz v10, :cond_3

    .line 272
    const/high16 v3, 0x3f800000    # 1.0f

    div-float v3, v3, v19

    const/high16 v4, 0x3f800000    # 1.0f

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Canvas;->scale(FF)V

    .line 273
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/design/widget/ShadowDrawableWrapper;->mContentBounds:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    const/high16 v6, 0x40000000    # 2.0f

    mul-float/2addr v6, v13

    sub-float v6, v3, v6

    move-object/from16 v0, p0

    iget v3, v0, Landroid/support/design/widget/ShadowDrawableWrapper;->mCornerRadius:F

    neg-float v7, v3

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/support/design/widget/ShadowDrawableWrapper;->mEdgeShadowPaint:Landroid/graphics/Paint;

    move-object/from16 v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 276
    :cond_3
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 278
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 279
    return-void

    .line 213
    .end local v9    # "drawHorizontalEdges":Z
    .end local v10    # "drawVerticalEdges":Z
    .end local v12    # "saved":I
    .end local v14    # "shadowOffsetBottom":F
    .end local v15    # "shadowOffsetHorizontal":F
    .end local v16    # "shadowOffsetTop":F
    .end local v17    # "shadowScaleBottom":F
    .end local v18    # "shadowScaleHorizontal":F
    .end local v19    # "shadowScaleTop":F
    :cond_4
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 214
    .restart local v9    # "drawHorizontalEdges":Z
    :cond_5
    const/4 v10, 0x0

    goto/16 :goto_1
.end method

.method private static toEven(F)I
    .locals 3
    .param p0, "value"    # F

    .prologue
    .line 102
    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 103
    .local v0, "i":I
    rem-int/lit8 v1, v0, 0x2

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    add-int/lit8 v0, v0, -0x1

    .end local v0    # "i":I
    :cond_0
    return v0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 191
    iget-boolean v0, p0, Landroid/support/design/widget/ShadowDrawableWrapper;->mDirty:Z

    if-eqz v0, :cond_0

    .line 192
    invoke-virtual {p0}, Landroid/support/design/widget/ShadowDrawableWrapper;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/support/design/widget/ShadowDrawableWrapper;->buildComponents(Landroid/graphics/Rect;)V

    .line 193
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/design/widget/ShadowDrawableWrapper;->mDirty:Z

    .line 195
    :cond_0
    invoke-direct {p0, p1}, Landroid/support/design/widget/ShadowDrawableWrapper;->drawShadow(Landroid/graphics/Canvas;)V

    .line 197
    invoke-super {p0, p1}, Landroid/support/v7/graphics/drawable/DrawableWrapper;->draw(Landroid/graphics/Canvas;)V

    .line 198
    return-void
.end method

.method public getCornerRadius()F
    .locals 1

    .prologue
    .line 334
    iget v0, p0, Landroid/support/design/widget/ShadowDrawableWrapper;->mCornerRadius:F

    return v0
.end method

.method public getMaxShadowSize()F
    .locals 1

    .prologue
    .line 350
    iget v0, p0, Landroid/support/design/widget/ShadowDrawableWrapper;->mRawMaxShadowSize:F

    return v0
.end method

.method public getMinHeight()F
    .locals 6

    .prologue
    const/high16 v5, 0x3fc00000    # 1.5f

    const/high16 v4, 0x40000000    # 2.0f

    .line 360
    iget v1, p0, Landroid/support/design/widget/ShadowDrawableWrapper;->mRawMaxShadowSize:F

    iget v2, p0, Landroid/support/design/widget/ShadowDrawableWrapper;->mCornerRadius:F

    iget v3, p0, Landroid/support/design/widget/ShadowDrawableWrapper;->mRawMaxShadowSize:F

    mul-float/2addr v3, v5

    div-float/2addr v3, v4

    add-float/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    mul-float v0, v4, v1

    .line 362
    .local v0, "content":F
    iget v1, p0, Landroid/support/design/widget/ShadowDrawableWrapper;->mRawMaxShadowSize:F

    mul-float/2addr v1, v5

    mul-float/2addr v1, v4

    add-float/2addr v1, v0

    return v1
.end method

.method public getMinWidth()F
    .locals 5

    .prologue
    const/high16 v4, 0x40000000    # 2.0f

    .line 354
    iget v1, p0, Landroid/support/design/widget/ShadowDrawableWrapper;->mRawMaxShadowSize:F

    iget v2, p0, Landroid/support/design/widget/ShadowDrawableWrapper;->mCornerRadius:F

    iget v3, p0, Landroid/support/design/widget/ShadowDrawableWrapper;->mRawMaxShadowSize:F

    div-float/2addr v3, v4

    add-float/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    mul-float v0, v4, v1

    .line 356
    .local v0, "content":F
    iget v1, p0, Landroid/support/design/widget/ShadowDrawableWrapper;->mRawMaxShadowSize:F

    mul-float/2addr v1, v4

    add-float/2addr v1, v0

    return v1
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 176
    const/4 v0, -0x3

    return v0
.end method

.method public getPadding(Landroid/graphics/Rect;)Z
    .locals 5
    .param p1, "padding"    # Landroid/graphics/Rect;

    .prologue
    .line 148
    iget v2, p0, Landroid/support/design/widget/ShadowDrawableWrapper;->mRawMaxShadowSize:F

    iget v3, p0, Landroid/support/design/widget/ShadowDrawableWrapper;->mCornerRadius:F

    iget-boolean v4, p0, Landroid/support/design/widget/ShadowDrawableWrapper;->mAddPaddingForCorners:Z

    invoke-static {v2, v3, v4}, Landroid/support/design/widget/ShadowDrawableWrapper;->calculateVerticalPadding(FFZ)F

    move-result v2

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v1, v2

    .line 150
    .local v1, "vOffset":I
    iget v2, p0, Landroid/support/design/widget/ShadowDrawableWrapper;->mRawMaxShadowSize:F

    iget v3, p0, Landroid/support/design/widget/ShadowDrawableWrapper;->mCornerRadius:F

    iget-boolean v4, p0, Landroid/support/design/widget/ShadowDrawableWrapper;->mAddPaddingForCorners:Z

    invoke-static {v2, v3, v4}, Landroid/support/design/widget/ShadowDrawableWrapper;->calculateHorizontalPadding(FFZ)F

    move-result v2

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v0, v2

    .line 152
    .local v0, "hOffset":I
    invoke-virtual {p1, v0, v1, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 153
    const/4 v2, 0x1

    return v2
.end method

.method public getShadowSize()F
    .locals 1

    .prologue
    .line 346
    iget v0, p0, Landroid/support/design/widget/ShadowDrawableWrapper;->mRawShadowSize:F

    return v0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .prologue
    .line 120
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/design/widget/ShadowDrawableWrapper;->mDirty:Z

    .line 121
    return-void
.end method

.method public setAddPaddingForCorners(Z)V
    .locals 0
    .param p1, "addPaddingForCorners"    # Z

    .prologue
    .line 107
    iput-boolean p1, p0, Landroid/support/design/widget/ShadowDrawableWrapper;->mAddPaddingForCorners:Z

    .line 108
    invoke-virtual {p0}, Landroid/support/design/widget/ShadowDrawableWrapper;->invalidateSelf()V

    .line 109
    return-void
.end method

.method public setAlpha(I)V
    .locals 1
    .param p1, "alpha"    # I

    .prologue
    .line 113
    invoke-super {p0, p1}, Landroid/support/v7/graphics/drawable/DrawableWrapper;->setAlpha(I)V

    .line 114
    iget-object v0, p0, Landroid/support/design/widget/ShadowDrawableWrapper;->mCornerShadowPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 115
    iget-object v0, p0, Landroid/support/design/widget/ShadowDrawableWrapper;->mEdgeShadowPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 116
    return-void
.end method

.method public setCornerRadius(F)V
    .locals 1
    .param p1, "radius"    # F

    .prologue
    .line 180
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float p1, v0

    .line 181
    iget v0, p0, Landroid/support/design/widget/ShadowDrawableWrapper;->mCornerRadius:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    .line 187
    :goto_0
    return-void

    .line 184
    :cond_0
    iput p1, p0, Landroid/support/design/widget/ShadowDrawableWrapper;->mCornerRadius:F

    .line 185
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/design/widget/ShadowDrawableWrapper;->mDirty:Z

    .line 186
    invoke-virtual {p0}, Landroid/support/design/widget/ShadowDrawableWrapper;->invalidateSelf()V

    goto :goto_0
.end method

.method public setMaxShadowSize(F)V
    .locals 1
    .param p1, "size"    # F

    .prologue
    .line 342
    iget v0, p0, Landroid/support/design/widget/ShadowDrawableWrapper;->mRawShadowSize:F

    invoke-virtual {p0, v0, p1}, Landroid/support/design/widget/ShadowDrawableWrapper;->setShadowSize(FF)V

    .line 343
    return-void
.end method

.method final setRotation(F)V
    .locals 1
    .param p1, "rotation"    # F

    .prologue
    .line 201
    iget v0, p0, Landroid/support/design/widget/ShadowDrawableWrapper;->mRotation:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 202
    iput p1, p0, Landroid/support/design/widget/ShadowDrawableWrapper;->mRotation:F

    .line 203
    invoke-virtual {p0}, Landroid/support/design/widget/ShadowDrawableWrapper;->invalidateSelf()V

    .line 205
    :cond_0
    return-void
.end method

.method public setShadowSize(F)V
    .locals 1
    .param p1, "size"    # F

    .prologue
    .line 338
    iget v0, p0, Landroid/support/design/widget/ShadowDrawableWrapper;->mRawMaxShadowSize:F

    invoke-virtual {p0, p1, v0}, Landroid/support/design/widget/ShadowDrawableWrapper;->setShadowSize(FF)V

    .line 339
    return-void
.end method

.method setShadowSize(FF)V
    .locals 3
    .param p1, "shadowSize"    # F
    .param p2, "maxShadowSize"    # F

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 124
    cmpg-float v0, p1, v1

    if-ltz v0, :cond_0

    cmpg-float v0, p2, v1

    if-gez v0, :cond_1

    .line 125
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid shadow size"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 127
    :cond_1
    invoke-static {p1}, Landroid/support/design/widget/ShadowDrawableWrapper;->toEven(F)I

    move-result v0

    int-to-float p1, v0

    .line 128
    invoke-static {p2}, Landroid/support/design/widget/ShadowDrawableWrapper;->toEven(F)I

    move-result v0

    int-to-float p2, v0

    .line 129
    cmpl-float v0, p1, p2

    if-lez v0, :cond_2

    .line 130
    move p1, p2

    .line 131
    iget-boolean v0, p0, Landroid/support/design/widget/ShadowDrawableWrapper;->mPrintedShadowClipWarning:Z

    if-nez v0, :cond_2

    .line 132
    iput-boolean v2, p0, Landroid/support/design/widget/ShadowDrawableWrapper;->mPrintedShadowClipWarning:Z

    .line 135
    :cond_2
    iget v0, p0, Landroid/support/design/widget/ShadowDrawableWrapper;->mRawShadowSize:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_3

    iget v0, p0, Landroid/support/design/widget/ShadowDrawableWrapper;->mRawMaxShadowSize:F

    cmpl-float v0, v0, p2

    if-nez v0, :cond_3

    .line 144
    :goto_0
    return-void

    .line 138
    :cond_3
    iput p1, p0, Landroid/support/design/widget/ShadowDrawableWrapper;->mRawShadowSize:F

    .line 139
    iput p2, p0, Landroid/support/design/widget/ShadowDrawableWrapper;->mRawMaxShadowSize:F

    .line 140
    const/high16 v0, 0x3fc00000    # 1.5f

    mul-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Landroid/support/design/widget/ShadowDrawableWrapper;->mShadowSize:F

    .line 141
    iput p2, p0, Landroid/support/design/widget/ShadowDrawableWrapper;->mMaxShadowSize:F

    .line 142
    iput-boolean v2, p0, Landroid/support/design/widget/ShadowDrawableWrapper;->mDirty:Z

    .line 143
    invoke-virtual {p0}, Landroid/support/design/widget/ShadowDrawableWrapper;->invalidateSelf()V

    goto :goto_0
.end method
