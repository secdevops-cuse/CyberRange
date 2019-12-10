.class public Landroid/support/v4/graphics/ColorUtils;
.super Ljava/lang/Object;
.source "ColorUtils.java"


# static fields
.field private static final MIN_ALPHA_SEARCH_MAX_ITERATIONS:I = 0xa

.field private static final MIN_ALPHA_SEARCH_PRECISION:I = 0x1


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static HSLToColor([F)I
    .locals 13
    .param p0, "hsl"    # [F
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation

    .prologue
    .line 238
    const/4 v10, 0x0

    aget v3, p0, v10

    .line 239
    .local v3, "h":F
    const/4 v10, 0x1

    aget v8, p0, v10

    .line 240
    .local v8, "s":F
    const/4 v10, 0x2

    aget v5, p0, v10

    .line 242
    .local v5, "l":F
    const/high16 v10, 0x3f800000    # 1.0f

    const/high16 v11, 0x40000000    # 2.0f

    mul-float/2addr v11, v5

    const/high16 v12, 0x3f800000    # 1.0f

    sub-float/2addr v11, v12

    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v11

    sub-float/2addr v10, v11

    mul-float v1, v10, v8

    .line 243
    .local v1, "c":F
    const/high16 v10, 0x3f000000    # 0.5f

    mul-float/2addr v10, v1

    sub-float v6, v5, v10

    .line 244
    .local v6, "m":F
    const/high16 v10, 0x3f800000    # 1.0f

    const/high16 v11, 0x42700000    # 60.0f

    div-float v11, v3, v11

    const/high16 v12, 0x40000000    # 2.0f

    rem-float/2addr v11, v12

    const/high16 v12, 0x3f800000    # 1.0f

    sub-float/2addr v11, v12

    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v11

    sub-float/2addr v10, v11

    mul-float v9, v1, v10

    .line 246
    .local v9, "x":F
    float-to-int v10, v3

    div-int/lit8 v4, v10, 0x3c

    .line 248
    .local v4, "hueSegment":I
    const/4 v7, 0x0

    .local v7, "r":I
    const/4 v2, 0x0

    .local v2, "g":I
    const/4 v0, 0x0

    .line 250
    .local v0, "b":I
    packed-switch v4, :pswitch_data_0

    .line 284
    :goto_0
    const/4 v10, 0x0

    const/16 v11, 0xff

    invoke-static {v7, v10, v11}, Landroid/support/v4/graphics/ColorUtils;->constrain(III)I

    move-result v7

    .line 285
    const/4 v10, 0x0

    const/16 v11, 0xff

    invoke-static {v2, v10, v11}, Landroid/support/v4/graphics/ColorUtils;->constrain(III)I

    move-result v2

    .line 286
    const/4 v10, 0x0

    const/16 v11, 0xff

    invoke-static {v0, v10, v11}, Landroid/support/v4/graphics/ColorUtils;->constrain(III)I

    move-result v0

    .line 288
    invoke-static {v7, v2, v0}, Landroid/graphics/Color;->rgb(III)I

    move-result v10

    return v10

    .line 252
    :pswitch_0
    const/high16 v10, 0x437f0000    # 255.0f

    add-float v11, v1, v6

    mul-float/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v7

    .line 253
    const/high16 v10, 0x437f0000    # 255.0f

    add-float v11, v9, v6

    mul-float/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 254
    const/high16 v10, 0x437f0000    # 255.0f

    mul-float/2addr v10, v6

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 255
    goto :goto_0

    .line 257
    :pswitch_1
    const/high16 v10, 0x437f0000    # 255.0f

    add-float v11, v9, v6

    mul-float/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v7

    .line 258
    const/high16 v10, 0x437f0000    # 255.0f

    add-float v11, v1, v6

    mul-float/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 259
    const/high16 v10, 0x437f0000    # 255.0f

    mul-float/2addr v10, v6

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 260
    goto :goto_0

    .line 262
    :pswitch_2
    const/high16 v10, 0x437f0000    # 255.0f

    mul-float/2addr v10, v6

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v7

    .line 263
    const/high16 v10, 0x437f0000    # 255.0f

    add-float v11, v1, v6

    mul-float/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 264
    const/high16 v10, 0x437f0000    # 255.0f

    add-float v11, v9, v6

    mul-float/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 265
    goto :goto_0

    .line 267
    :pswitch_3
    const/high16 v10, 0x437f0000    # 255.0f

    mul-float/2addr v10, v6

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v7

    .line 268
    const/high16 v10, 0x437f0000    # 255.0f

    add-float v11, v9, v6

    mul-float/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 269
    const/high16 v10, 0x437f0000    # 255.0f

    add-float v11, v1, v6

    mul-float/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 270
    goto/16 :goto_0

    .line 272
    :pswitch_4
    const/high16 v10, 0x437f0000    # 255.0f

    add-float v11, v9, v6

    mul-float/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v7

    .line 273
    const/high16 v10, 0x437f0000    # 255.0f

    mul-float/2addr v10, v6

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 274
    const/high16 v10, 0x437f0000    # 255.0f

    add-float v11, v1, v6

    mul-float/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 275
    goto/16 :goto_0

    .line 278
    :pswitch_5
    const/high16 v10, 0x437f0000    # 255.0f

    add-float v11, v1, v6

    mul-float/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v7

    .line 279
    const/high16 v10, 0x437f0000    # 255.0f

    mul-float/2addr v10, v6

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 280
    const/high16 v10, 0x437f0000    # 255.0f

    add-float v11, v9, v6

    mul-float/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v0

    goto/16 :goto_0

    .line 250
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method

.method public static RGBToHSL(III[F)V
    .locals 12
    .param p0, "r"    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
            to = 0xffL
        .end annotation
    .end param
    .param p1, "g"    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
            to = 0xffL
        .end annotation
    .end param
    .param p2, "b"    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
            to = 0xffL
        .end annotation
    .end param
    .param p3, "hsl"    # [F
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 173
    int-to-float v9, p0

    const/high16 v10, 0x437f0000    # 255.0f

    div-float v7, v9, v10

    .line 174
    .local v7, "rf":F
    int-to-float v9, p1

    const/high16 v10, 0x437f0000    # 255.0f

    div-float v2, v9, v10

    .line 175
    .local v2, "gf":F
    int-to-float v9, p2

    const/high16 v10, 0x437f0000    # 255.0f

    div-float v0, v9, v10

    .line 177
    .local v0, "bf":F
    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    move-result v9

    invoke-static {v7, v9}, Ljava/lang/Math;->max(FF)F

    move-result v5

    .line 178
    .local v5, "max":F
    invoke-static {v2, v0}, Ljava/lang/Math;->min(FF)F

    move-result v9

    invoke-static {v7, v9}, Ljava/lang/Math;->min(FF)F

    move-result v6

    .line 179
    .local v6, "min":F
    sub-float v1, v5, v6

    .line 182
    .local v1, "deltaMaxMin":F
    add-float v9, v5, v6

    const/high16 v10, 0x40000000    # 2.0f

    div-float v4, v9, v10

    .line 184
    .local v4, "l":F
    cmpl-float v9, v5, v6

    if-nez v9, :cond_1

    .line 186
    const/4 v8, 0x0

    .local v8, "s":F
    move v3, v8

    .line 199
    .local v3, "h":F
    :goto_0
    const/high16 v9, 0x42700000    # 60.0f

    mul-float/2addr v9, v3

    const/high16 v10, 0x43b40000    # 360.0f

    rem-float v3, v9, v10

    .line 200
    const/4 v9, 0x0

    cmpg-float v9, v3, v9

    if-gez v9, :cond_0

    .line 201
    const/high16 v9, 0x43b40000    # 360.0f

    add-float/2addr v3, v9

    .line 204
    :cond_0
    const/4 v9, 0x0

    const/4 v10, 0x0

    const/high16 v11, 0x43b40000    # 360.0f

    invoke-static {v3, v10, v11}, Landroid/support/v4/graphics/ColorUtils;->constrain(FFF)F

    move-result v10

    aput v10, p3, v9

    .line 205
    const/4 v9, 0x1

    const/4 v10, 0x0

    const/high16 v11, 0x3f800000    # 1.0f

    invoke-static {v8, v10, v11}, Landroid/support/v4/graphics/ColorUtils;->constrain(FFF)F

    move-result v10

    aput v10, p3, v9

    .line 206
    const/4 v9, 0x2

    const/4 v10, 0x0

    const/high16 v11, 0x3f800000    # 1.0f

    invoke-static {v4, v10, v11}, Landroid/support/v4/graphics/ColorUtils;->constrain(FFF)F

    move-result v10

    aput v10, p3, v9

    .line 207
    return-void

    .line 188
    .end local v3    # "h":F
    .end local v8    # "s":F
    :cond_1
    cmpl-float v9, v5, v7

    if-nez v9, :cond_2

    .line 189
    sub-float v9, v2, v0

    div-float/2addr v9, v1

    const/high16 v10, 0x40c00000    # 6.0f

    rem-float v3, v9, v10

    .line 196
    .restart local v3    # "h":F
    :goto_1
    const/high16 v9, 0x3f800000    # 1.0f

    const/high16 v10, 0x40000000    # 2.0f

    mul-float/2addr v10, v4

    const/high16 v11, 0x3f800000    # 1.0f

    sub-float/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    sub-float/2addr v9, v10

    div-float v8, v1, v9

    .restart local v8    # "s":F
    goto :goto_0

    .line 190
    .end local v3    # "h":F
    .end local v8    # "s":F
    :cond_2
    cmpl-float v9, v5, v2

    if-nez v9, :cond_3

    .line 191
    sub-float v9, v0, v7

    div-float/2addr v9, v1

    const/high16 v10, 0x40000000    # 2.0f

    add-float v3, v9, v10

    .restart local v3    # "h":F
    goto :goto_1

    .line 193
    .end local v3    # "h":F
    :cond_3
    sub-float v9, v7, v2

    div-float/2addr v9, v1

    const/high16 v10, 0x40800000    # 4.0f

    add-float v3, v9, v10

    .restart local v3    # "h":F
    goto :goto_1
.end method

.method public static calculateContrast(II)D
    .locals 8
    .param p0, "foreground"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param
    .param p1, "background"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    const/16 v5, 0xff

    const-wide v6, 0x3fa999999999999aL    # 0.05

    .line 91
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v4

    if-eq v4, v5, :cond_0

    .line 92
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "background can not be translucent: #"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 95
    :cond_0
    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v4

    if-ge v4, v5, :cond_1

    .line 97
    invoke-static {p0, p1}, Landroid/support/v4/graphics/ColorUtils;->compositeColors(II)I

    move-result p0

    .line 100
    :cond_1
    invoke-static {p0}, Landroid/support/v4/graphics/ColorUtils;->calculateLuminance(I)D

    move-result-wide v4

    add-double v0, v4, v6

    .line 101
    .local v0, "luminance1":D
    invoke-static {p1}, Landroid/support/v4/graphics/ColorUtils;->calculateLuminance(I)D

    move-result-wide v4

    add-double v2, v4, v6

    .line 104
    .local v2, "luminance2":D
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v4

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v6

    div-double/2addr v4, v6

    return-wide v4
.end method

.method public static calculateLuminance(I)D
    .locals 10
    .param p0, "color"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/FloatRange;
        from = 0.0
        to = 1.0
    .end annotation

    .prologue
    .line 71
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v6

    int-to-double v6, v6

    const-wide v8, 0x406fe00000000000L    # 255.0

    div-double v4, v6, v8

    .line 72
    .local v4, "red":D
    const-wide v6, 0x3fa41c8216c61523L    # 0.03928

    cmpg-double v6, v4, v6

    if-gez v6, :cond_0

    const-wide v6, 0x4029d70a3d70a3d7L    # 12.92

    div-double/2addr v4, v6

    .line 74
    :goto_0
    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v6

    int-to-double v6, v6

    const-wide v8, 0x406fe00000000000L    # 255.0

    div-double v2, v6, v8

    .line 75
    .local v2, "green":D
    const-wide v6, 0x3fa41c8216c61523L    # 0.03928

    cmpg-double v6, v2, v6

    if-gez v6, :cond_1

    const-wide v6, 0x4029d70a3d70a3d7L    # 12.92

    div-double/2addr v2, v6

    .line 77
    :goto_1
    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v6

    int-to-double v6, v6

    const-wide v8, 0x406fe00000000000L    # 255.0

    div-double v0, v6, v8

    .line 78
    .local v0, "blue":D
    const-wide v6, 0x3fa41c8216c61523L    # 0.03928

    cmpg-double v6, v0, v6

    if-gez v6, :cond_2

    const-wide v6, 0x4029d70a3d70a3d7L    # 12.92

    div-double/2addr v0, v6

    .line 80
    :goto_2
    const-wide v6, 0x3fcb367a0f9096bcL    # 0.2126

    mul-double/2addr v6, v4

    const-wide v8, 0x3fe6e2eb1c432ca5L    # 0.7152

    mul-double/2addr v8, v2

    add-double/2addr v6, v8

    const-wide v8, 0x3fb27bb2fec56d5dL    # 0.0722

    mul-double/2addr v8, v0

    add-double/2addr v6, v8

    return-wide v6

    .line 72
    .end local v0    # "blue":D
    .end local v2    # "green":D
    :cond_0
    const-wide v6, 0x3fac28f5c28f5c29L    # 0.055

    add-double/2addr v6, v4

    const-wide v8, 0x3ff0e147ae147ae1L    # 1.055

    div-double/2addr v6, v8

    const-wide v8, 0x4003333333333333L    # 2.4

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    goto :goto_0

    .line 75
    .restart local v2    # "green":D
    :cond_1
    const-wide v6, 0x3fac28f5c28f5c29L    # 0.055

    add-double/2addr v6, v2

    const-wide v8, 0x3ff0e147ae147ae1L    # 1.055

    div-double/2addr v6, v8

    const-wide v8, 0x4003333333333333L    # 2.4

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    goto :goto_1

    .line 78
    .restart local v0    # "blue":D
    :cond_2
    const-wide v6, 0x3fac28f5c28f5c29L    # 0.055

    add-double/2addr v6, v0

    const-wide v8, 0x3ff0e147ae147ae1L    # 1.055

    div-double/2addr v6, v8

    const-wide v8, 0x4003333333333333L    # 2.4

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    goto :goto_2
.end method

.method public static calculateMinimumAlpha(IIF)I
    .locals 10
    .param p0, "foreground"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param
    .param p1, "background"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param
    .param p2, "minContrastRatio"    # F

    .prologue
    const/16 v8, 0xff

    .line 119
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v5

    if-eq v5, v8, :cond_0

    .line 120
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "background can not be translucent: #"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 125
    :cond_0
    invoke-static {p0, v8}, Landroid/support/v4/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v4

    .line 126
    .local v4, "testForeground":I
    invoke-static {v4, p1}, Landroid/support/v4/graphics/ColorUtils;->calculateContrast(II)D

    move-result-wide v6

    .line 127
    .local v6, "testRatio":D
    float-to-double v8, p2

    cmpg-double v5, v6, v8

    if-gez v5, :cond_2

    .line 129
    const/4 v0, -0x1

    .line 154
    :cond_1
    return v0

    .line 133
    :cond_2
    const/4 v2, 0x0

    .line 134
    .local v2, "numIterations":I
    const/4 v1, 0x0

    .line 135
    .local v1, "minAlpha":I
    const/16 v0, 0xff

    .line 137
    .local v0, "maxAlpha":I
    :goto_0
    const/16 v5, 0xa

    if-gt v2, v5, :cond_1

    sub-int v5, v0, v1

    const/4 v8, 0x1

    if-le v5, v8, :cond_1

    .line 139
    add-int v5, v1, v0

    div-int/lit8 v3, v5, 0x2

    .line 141
    .local v3, "testAlpha":I
    invoke-static {p0, v3}, Landroid/support/v4/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v4

    .line 142
    invoke-static {v4, p1}, Landroid/support/v4/graphics/ColorUtils;->calculateContrast(II)D

    move-result-wide v6

    .line 144
    float-to-double v8, p2

    cmpg-double v5, v6, v8

    if-gez v5, :cond_3

    .line 145
    move v1, v3

    .line 150
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 151
    goto :goto_0

    .line 147
    :cond_3
    move v0, v3

    goto :goto_1
.end method

.method public static colorToHSL(I[F)V
    .locals 3
    .param p0, "color"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param
    .param p1, "hsl"    # [F
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 221
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v1

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    invoke-static {v0, v1, v2, p1}, Landroid/support/v4/graphics/ColorUtils;->RGBToHSL(III[F)V

    .line 222
    return-void
.end method

.method private static compositeAlpha(II)I
    .locals 2
    .param p0, "foregroundAlpha"    # I
    .param p1, "backgroundAlpha"    # I

    .prologue
    .line 54
    rsub-int v0, p1, 0xff

    rsub-int v1, p0, 0xff

    mul-int/2addr v0, v1

    div-int/lit16 v0, v0, 0xff

    rsub-int v0, v0, 0xff

    return v0
.end method

.method public static compositeColors(II)I
    .locals 8
    .param p0, "foreground"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param
    .param p1, "background"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 39
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    .line 40
    .local v2, "bgAlpha":I
    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v3

    .line 41
    .local v3, "fgAlpha":I
    invoke-static {v3, v2}, Landroid/support/v4/graphics/ColorUtils;->compositeAlpha(II)I

    move-result v0

    .line 43
    .local v0, "a":I
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v6

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v7

    invoke-static {v6, v3, v7, v2, v0}, Landroid/support/v4/graphics/ColorUtils;->compositeComponent(IIIII)I

    move-result v5

    .line 45
    .local v5, "r":I
    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v6

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v7

    invoke-static {v6, v3, v7, v2, v0}, Landroid/support/v4/graphics/ColorUtils;->compositeComponent(IIIII)I

    move-result v4

    .line 47
    .local v4, "g":I
    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v6

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v7

    invoke-static {v6, v3, v7, v2, v0}, Landroid/support/v4/graphics/ColorUtils;->compositeComponent(IIIII)I

    move-result v1

    .line 50
    .local v1, "b":I
    invoke-static {v0, v5, v4, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v6

    return v6
.end method

.method private static compositeComponent(IIIII)I
    .locals 3
    .param p0, "fgC"    # I
    .param p1, "fgA"    # I
    .param p2, "bgC"    # I
    .param p3, "bgA"    # I
    .param p4, "a"    # I

    .prologue
    .line 58
    if-nez p4, :cond_0

    const/4 v0, 0x0

    .line 59
    :goto_0
    return v0

    :cond_0
    mul-int/lit16 v0, p0, 0xff

    mul-int/2addr v0, p1

    mul-int v1, p2, p3

    rsub-int v2, p1, 0xff

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    mul-int/lit16 v1, p4, 0xff

    div-int/2addr v0, v1

    goto :goto_0
.end method

.method private static constrain(FFF)F
    .locals 1
    .param p0, "amount"    # F
    .param p1, "low"    # F
    .param p2, "high"    # F

    .prologue
    .line 304
    cmpg-float v0, p0, p1

    if-gez v0, :cond_0

    .end local p1    # "low":F
    :goto_0
    return p1

    .restart local p1    # "low":F
    :cond_0
    cmpl-float v0, p0, p2

    if-lez v0, :cond_1

    move p1, p2

    goto :goto_0

    :cond_1
    move p1, p0

    goto :goto_0
.end method

.method private static constrain(III)I
    .locals 0
    .param p0, "amount"    # I
    .param p1, "low"    # I
    .param p2, "high"    # I

    .prologue
    .line 308
    if-ge p0, p1, :cond_0

    .end local p1    # "low":I
    :goto_0
    return p1

    .restart local p1    # "low":I
    :cond_0
    if-le p0, p2, :cond_1

    move p1, p2

    goto :goto_0

    :cond_1
    move p1, p0

    goto :goto_0
.end method

.method public static setAlphaComponent(II)I
    .locals 2
    .param p0, "color"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param
    .param p1, "alpha"    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
            to = 0xffL
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation

    .prologue
    .line 297
    if-ltz p1, :cond_0

    const/16 v0, 0xff

    if-le p1, v0, :cond_1

    .line 298
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "alpha must be between 0 and 255."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 300
    :cond_1
    const v0, 0xffffff

    and-int/2addr v0, p0

    shl-int/lit8 v1, p1, 0x18

    or-int/2addr v0, v1

    return v0
.end method
