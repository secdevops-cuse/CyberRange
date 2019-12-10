.class public Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "DrawerArrowDrawable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/graphics/drawable/DrawerArrowDrawable$ArrowDirection;
    }
.end annotation


# static fields
.field public static final ARROW_DIRECTION_END:I = 0x3

.field public static final ARROW_DIRECTION_LEFT:I = 0x0

.field public static final ARROW_DIRECTION_RIGHT:I = 0x1

.field public static final ARROW_DIRECTION_START:I = 0x2

.field private static final ARROW_HEAD_ANGLE:F


# instance fields
.field private mArrowHeadLength:F

.field private mArrowShaftLength:F

.field private mBarGap:F

.field private mBarLength:F

.field private mDirection:I

.field private mMaxCutForBarSize:F

.field private final mPaint:Landroid/graphics/Paint;

.field private final mPath:Landroid/graphics/Path;

.field private mProgress:F

.field private final mSize:I

.field private mSpin:Z

.field private mVerticalMirror:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 95
    const-wide v0, 0x4046800000000000L    # 45.0

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    double-to-float v0, v0

    sput v0, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->ARROW_HEAD_ANGLE:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 123
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 92
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->mPaint:Landroid/graphics/Paint;

    .line 108
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->mPath:Landroid/graphics/Path;

    .line 112
    iput-boolean v7, p0, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->mVerticalMirror:Z

    .line 118
    const/4 v1, 0x2

    iput v1, p0, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->mDirection:I

    .line 124
    iget-object v1, p0, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 125
    iget-object v1, p0, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Join;->MITER:Landroid/graphics/Paint$Join;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 126
    iget-object v1, p0, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 127
    iget-object v1, p0, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v8}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 129
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const/4 v2, 0x0

    sget-object v3, Landroid/support/v7/appcompat/R$styleable;->DrawerArrowToggle:[I

    sget v4, Landroid/support/v7/appcompat/R$attr;->drawerArrowStyle:I

    sget v5, Landroid/support/v7/appcompat/R$style;->Base_Widget_AppCompat_DrawerArrowToggle:I

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 133
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v1, Landroid/support/v7/appcompat/R$styleable;->DrawerArrowToggle_color:I

    invoke-virtual {v0, v1, v7}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->setColor(I)V

    .line 134
    sget v1, Landroid/support/v7/appcompat/R$styleable;->DrawerArrowToggle_thickness:I

    invoke-virtual {v0, v1, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    invoke-virtual {p0, v1}, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->setBarThickness(F)V

    .line 135
    sget v1, Landroid/support/v7/appcompat/R$styleable;->DrawerArrowToggle_spinBars:I

    invoke-virtual {v0, v1, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {p0, v1}, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->setSpinEnabled(Z)V

    .line 137
    sget v1, Landroid/support/v7/appcompat/R$styleable;->DrawerArrowToggle_gapBetweenBars:I

    invoke-virtual {v0, v1, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0, v1}, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->setGapSize(F)V

    .line 139
    sget v1, Landroid/support/v7/appcompat/R$styleable;->DrawerArrowToggle_drawableSize:I

    invoke-virtual {v0, v1, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->mSize:I

    .line 141
    sget v1, Landroid/support/v7/appcompat/R$styleable;->DrawerArrowToggle_barLength:I

    invoke-virtual {v0, v1, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->mBarLength:F

    .line 143
    sget v1, Landroid/support/v7/appcompat/R$styleable;->DrawerArrowToggle_arrowHeadLength:I

    invoke-virtual {v0, v1, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->mArrowHeadLength:F

    .line 145
    sget v1, Landroid/support/v7/appcompat/R$styleable;->DrawerArrowToggle_arrowShaftLength:I

    invoke-virtual {v0, v1, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->mArrowShaftLength:F

    .line 146
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 147
    return-void
.end method

.method private static lerp(FFF)F
    .locals 1
    .param p0, "a"    # F
    .param p1, "b"    # F
    .param p2, "t"    # F

    .prologue
    .line 460
    sub-float v0, p1, p0

    mul-float/2addr v0, p2

    add-float/2addr v0, p0

    return v0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 24
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 321
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v11

    .line 324
    .local v11, "bounds":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->mDirection:I

    move/from16 v18, v0

    packed-switch v18, :pswitch_data_0

    .line 337
    :pswitch_0
    invoke-static/range {p0 .. p0}, Landroid/support/v4/graphics/drawable/DrawableCompat;->getLayoutDirection(Landroid/graphics/drawable/Drawable;)I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_2

    const/4 v13, 0x1

    .line 344
    .local v13, "flipToPointRight":Z
    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->mArrowHeadLength:F

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->mArrowHeadLength:F

    move/from16 v19, v0

    mul-float v18, v18, v19

    const/high16 v19, 0x40000000    # 2.0f

    mul-float v18, v18, v19

    move/from16 v0, v18

    float-to-double v0, v0

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v18

    move-wide/from16 v0, v18

    double-to-float v5, v0

    .line 345
    .local v5, "arrowHeadBarLength":F
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->mBarLength:F

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->mProgress:F

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-static {v0, v5, v1}, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->lerp(FFF)F

    move-result v5

    .line 346
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->mBarLength:F

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->mArrowShaftLength:F

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->mProgress:F

    move/from16 v20, v0

    invoke-static/range {v18 .. v20}, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->lerp(FFF)F

    move-result v8

    .line 348
    .local v8, "arrowShaftLength":F
    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->mMaxCutForBarSize:F

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->mProgress:F

    move/from16 v20, v0

    invoke-static/range {v18 .. v20}, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->lerp(FFF)F

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->round(F)I

    move-result v18

    move/from16 v0, v18

    int-to-float v7, v0

    .line 350
    .local v7, "arrowShaftCut":F
    const/16 v18, 0x0

    sget v19, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->ARROW_HEAD_ANGLE:F

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->mProgress:F

    move/from16 v20, v0

    invoke-static/range {v18 .. v20}, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->lerp(FFF)F

    move-result v15

    .line 353
    .local v15, "rotation":F
    if-eqz v13, :cond_3

    const/16 v18, 0x0

    move/from16 v19, v18

    :goto_1
    if-eqz v13, :cond_4

    const/high16 v18, 0x43340000    # 180.0f

    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->mProgress:F

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v18

    move/from16 v2, v20

    invoke-static {v0, v1, v2}, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->lerp(FFF)F

    move-result v12

    .line 356
    .local v12, "canvasRotate":F
    float-to-double v0, v5

    move-wide/from16 v18, v0

    float-to-double v0, v15

    move-wide/from16 v20, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->cos(D)D

    move-result-wide v20

    mul-double v18, v18, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->round(D)J

    move-result-wide v18

    move-wide/from16 v0, v18

    long-to-float v9, v0

    .line 357
    .local v9, "arrowWidth":F
    float-to-double v0, v5

    move-wide/from16 v18, v0

    float-to-double v0, v15

    move-wide/from16 v20, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->sin(D)D

    move-result-wide v20

    mul-double v18, v18, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->round(D)J

    move-result-wide v18

    move-wide/from16 v0, v18

    long-to-float v6, v0

    .line 359
    .local v6, "arrowHeight":F
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->mPath:Landroid/graphics/Path;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Path;->rewind()V

    .line 360
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->mBarGap:F

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v19

    add-float v18, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->mMaxCutForBarSize:F

    move/from16 v19, v0

    move/from16 v0, v19

    neg-float v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->mProgress:F

    move/from16 v20, v0

    invoke-static/range {v18 .. v20}, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->lerp(FFF)F

    move-result v16

    .line 363
    .local v16, "topBottomBarOffset":F
    neg-float v0, v8

    move/from16 v18, v0

    const/high16 v19, 0x40000000    # 2.0f

    div-float v4, v18, v19

    .line 365
    .local v4, "arrowEdge":F
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->mPath:Landroid/graphics/Path;

    move-object/from16 v18, v0

    add-float v19, v4, v7

    const/16 v20, 0x0

    invoke-virtual/range {v18 .. v20}, Landroid/graphics/Path;->moveTo(FF)V

    .line 366
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->mPath:Landroid/graphics/Path;

    move-object/from16 v18, v0

    const/high16 v19, 0x40000000    # 2.0f

    mul-float v19, v19, v7

    sub-float v19, v8, v19

    const/16 v20, 0x0

    invoke-virtual/range {v18 .. v20}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 369
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->mPath:Landroid/graphics/Path;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, v16

    invoke-virtual {v0, v4, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 370
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->mPath:Landroid/graphics/Path;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v9, v6}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 373
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->mPath:Landroid/graphics/Path;

    move-object/from16 v18, v0

    move/from16 v0, v16

    neg-float v0, v0

    move/from16 v19, v0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v0, v4, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 374
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->mPath:Landroid/graphics/Path;

    move-object/from16 v18, v0

    neg-float v0, v6

    move/from16 v19, v0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v0, v9, v1}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 376
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->mPath:Landroid/graphics/Path;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Path;->close()V

    .line 378
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 382
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v10

    .line 383
    .local v10, "barThickness":F
    invoke-virtual {v11}, Landroid/graphics/Rect;->height()I

    move-result v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    const/high16 v19, 0x40400000    # 3.0f

    mul-float v19, v19, v10

    sub-float v18, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->mBarGap:F

    move/from16 v19, v0

    const/high16 v20, 0x40000000    # 2.0f

    mul-float v19, v19, v20

    sub-float v18, v18, v19

    move/from16 v0, v18

    float-to-int v14, v0

    .line 384
    .local v14, "remainingSpace":I
    div-int/lit8 v18, v14, 0x4

    mul-int/lit8 v18, v18, 0x2

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v17, v0

    .line 385
    .local v17, "yOffset":F
    move/from16 v0, v17

    float-to-double v0, v0

    move-wide/from16 v18, v0

    float-to-double v0, v10

    move-wide/from16 v20, v0

    const-wide/high16 v22, 0x3ff8000000000000L    # 1.5

    mul-double v20, v20, v22

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->mBarGap:F

    move/from16 v22, v0

    move/from16 v0, v22

    float-to-double v0, v0

    move-wide/from16 v22, v0

    add-double v20, v20, v22

    add-double v18, v18, v20

    move-wide/from16 v0, v18

    double-to-float v0, v0

    move/from16 v17, v0

    .line 387
    invoke-virtual {v11}, Landroid/graphics/Rect;->centerX()I

    move-result v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move-object/from16 v0, p1

    move/from16 v1, v18

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 388
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->mSpin:Z

    move/from16 v18, v0

    if-eqz v18, :cond_6

    .line 389
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->mVerticalMirror:Z

    move/from16 v18, v0

    xor-int v18, v18, v13

    if-eqz v18, :cond_5

    const/16 v18, -0x1

    :goto_3
    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    mul-float v18, v18, v12

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->rotate(F)V

    .line 393
    :cond_0
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->mPath:Landroid/graphics/Path;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v19, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 395
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 396
    return-void

    .line 326
    .end local v4    # "arrowEdge":F
    .end local v5    # "arrowHeadBarLength":F
    .end local v6    # "arrowHeight":F
    .end local v7    # "arrowShaftCut":F
    .end local v8    # "arrowShaftLength":F
    .end local v9    # "arrowWidth":F
    .end local v10    # "barThickness":F
    .end local v12    # "canvasRotate":F
    .end local v13    # "flipToPointRight":Z
    .end local v14    # "remainingSpace":I
    .end local v15    # "rotation":F
    .end local v16    # "topBottomBarOffset":F
    .end local v17    # "yOffset":F
    :pswitch_1
    const/4 v13, 0x0

    .line 327
    .restart local v13    # "flipToPointRight":Z
    goto/16 :goto_0

    .line 329
    .end local v13    # "flipToPointRight":Z
    :pswitch_2
    const/4 v13, 0x1

    .line 330
    .restart local v13    # "flipToPointRight":Z
    goto/16 :goto_0

    .line 332
    .end local v13    # "flipToPointRight":Z
    :pswitch_3
    invoke-static/range {p0 .. p0}, Landroid/support/v4/graphics/drawable/DrawableCompat;->getLayoutDirection(Landroid/graphics/drawable/Drawable;)I

    move-result v18

    if-nez v18, :cond_1

    const/4 v13, 0x1

    .line 334
    .restart local v13    # "flipToPointRight":Z
    :goto_5
    goto/16 :goto_0

    .line 332
    .end local v13    # "flipToPointRight":Z
    :cond_1
    const/4 v13, 0x0

    goto :goto_5

    .line 337
    :cond_2
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 353
    .restart local v5    # "arrowHeadBarLength":F
    .restart local v7    # "arrowShaftCut":F
    .restart local v8    # "arrowShaftLength":F
    .restart local v13    # "flipToPointRight":Z
    .restart local v15    # "rotation":F
    :cond_3
    const/high16 v18, -0x3ccc0000    # -180.0f

    move/from16 v19, v18

    goto/16 :goto_1

    :cond_4
    const/16 v18, 0x0

    goto/16 :goto_2

    .line 389
    .restart local v4    # "arrowEdge":F
    .restart local v6    # "arrowHeight":F
    .restart local v9    # "arrowWidth":F
    .restart local v10    # "barThickness":F
    .restart local v12    # "canvasRotate":F
    .restart local v14    # "remainingSpace":I
    .restart local v16    # "topBottomBarOffset":F
    .restart local v17    # "yOffset":F
    :cond_5
    const/16 v18, 0x1

    goto :goto_3

    .line 390
    :cond_6
    if-eqz v13, :cond_0

    .line 391
    const/high16 v18, 0x43340000    # 180.0f

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->rotate(F)V

    goto :goto_4

    .line 324
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public getArrowHeadLength()F
    .locals 1

    .prologue
    .line 166
    iget v0, p0, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->mArrowHeadLength:F

    return v0
.end method

.method public getArrowShaftLength()F
    .locals 1

    .prologue
    .line 185
    iget v0, p0, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->mArrowShaftLength:F

    return v0
.end method

.method public getBarLength()F
    .locals 1

    .prologue
    .line 192
    iget v0, p0, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->mBarLength:F

    return v0
.end method

.method public getBarThickness()F
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v0

    return v0
.end method

.method public getColor()I
    .locals 1
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation

    .prologue
    .line 222
    iget-object v0, p0, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    return v0
.end method

.method public getDirection()I
    .locals 1

    .prologue
    .line 306
    iget v0, p0, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->mDirection:I

    return v0
.end method

.method public getGapSize()F
    .locals 1

    .prologue
    .line 251
    iget v0, p0, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->mBarGap:F

    return v0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .prologue
    .line 414
    iget v0, p0, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->mSize:I

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .prologue
    .line 419
    iget v0, p0, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->mSize:I

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 424
    const/4 v0, -0x3

    return v0
.end method

.method public final getPaint()Landroid/graphics/Paint;
    .locals 1

    .prologue
    .line 453
    iget-object v0, p0, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->mPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public getProgress()F
    .locals 1
    .annotation build Landroid/support/annotation/FloatRange;
        from = 0.0
        to = 1.0
    .end annotation

    .prologue
    .line 432
    iget v0, p0, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->mProgress:F

    return v0
.end method

.method public isSpinEnabled()Z
    .locals 1

    .prologue
    .line 284
    iget-boolean v0, p0, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->mSpin:Z

    return v0
.end method

.method public setAlpha(I)V
    .locals 1
    .param p1, "alpha"    # I

    .prologue
    .line 400
    iget-object v0, p0, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    if-eq p1, v0, :cond_0

    .line 401
    iget-object v0, p0, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 402
    invoke-virtual {p0}, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->invalidateSelf()V

    .line 404
    :cond_0
    return-void
.end method

.method public setArrowHeadLength(F)V
    .locals 1
    .param p1, "length"    # F

    .prologue
    .line 155
    iget v0, p0, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->mArrowHeadLength:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 156
    iput p1, p0, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->mArrowHeadLength:F

    .line 157
    invoke-virtual {p0}, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->invalidateSelf()V

    .line 159
    :cond_0
    return-void
.end method

.method public setArrowShaftLength(F)V
    .locals 1
    .param p1, "length"    # F

    .prologue
    .line 175
    iget v0, p0, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->mArrowShaftLength:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 176
    iput p1, p0, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->mArrowShaftLength:F

    .line 177
    invoke-virtual {p0}, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->invalidateSelf()V

    .line 179
    :cond_0
    return-void
.end method

.method public setBarLength(F)V
    .locals 1
    .param p1, "length"    # F

    .prologue
    .line 201
    iget v0, p0, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->mBarLength:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 202
    iput p1, p0, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->mBarLength:F

    .line 203
    invoke-virtual {p0}, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->invalidateSelf()V

    .line 205
    :cond_0
    return-void
.end method

.method public setBarThickness(F)V
    .locals 4
    .param p1, "width"    # F

    .prologue
    .line 231
    iget-object v0, p0, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v0

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 232
    iget-object v0, p0, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 233
    const/high16 v0, 0x40000000    # 2.0f

    div-float v0, p1, v0

    float-to-double v0, v0

    sget v2, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->ARROW_HEAD_ANGLE:F

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    mul-double/2addr v0, v2

    double-to-float v0, v0

    iput v0, p0, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->mMaxCutForBarSize:F

    .line 234
    invoke-virtual {p0}, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->invalidateSelf()V

    .line 236
    :cond_0
    return-void
.end method

.method public setColor(I)V
    .locals 1
    .param p1, "color"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 211
    iget-object v0, p0, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    if-eq p1, v0, :cond_0

    .line 212
    iget-object v0, p0, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 213
    invoke-virtual {p0}, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->invalidateSelf()V

    .line 215
    :cond_0
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .param p1, "colorFilter"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 408
    iget-object v0, p0, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 409
    invoke-virtual {p0}, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->invalidateSelf()V

    .line 410
    return-void
.end method

.method public setDirection(I)V
    .locals 1
    .param p1, "direction"    # I

    .prologue
    .line 272
    iget v0, p0, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->mDirection:I

    if-eq p1, v0, :cond_0

    .line 273
    iput p1, p0, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->mDirection:I

    .line 274
    invoke-virtual {p0}, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->invalidateSelf()V

    .line 276
    :cond_0
    return-void
.end method

.method public setGapSize(F)V
    .locals 1
    .param p1, "gap"    # F

    .prologue
    .line 262
    iget v0, p0, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->mBarGap:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 263
    iput p1, p0, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->mBarGap:F

    .line 264
    invoke-virtual {p0}, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->invalidateSelf()V

    .line 266
    :cond_0
    return-void
.end method

.method public setProgress(F)V
    .locals 1
    .param p1, "progress"    # F
        .annotation build Landroid/support/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param

    .prologue
    .line 443
    iget v0, p0, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->mProgress:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 444
    iput p1, p0, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->mProgress:F

    .line 445
    invoke-virtual {p0}, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->invalidateSelf()V

    .line 447
    :cond_0
    return-void
.end method

.method public setSpinEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 295
    iget-boolean v0, p0, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->mSpin:Z

    if-eq v0, p1, :cond_0

    .line 296
    iput-boolean p1, p0, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->mSpin:Z

    .line 297
    invoke-virtual {p0}, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->invalidateSelf()V

    .line 299
    :cond_0
    return-void
.end method

.method public setVerticalMirror(Z)V
    .locals 1
    .param p1, "verticalMirror"    # Z

    .prologue
    .line 313
    iget-boolean v0, p0, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->mVerticalMirror:Z

    if-eq v0, p1, :cond_0

    .line 314
    iput-boolean p1, p0, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->mVerticalMirror:Z

    .line 315
    invoke-virtual {p0}, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->invalidateSelf()V

    .line 317
    :cond_0
    return-void
.end method
