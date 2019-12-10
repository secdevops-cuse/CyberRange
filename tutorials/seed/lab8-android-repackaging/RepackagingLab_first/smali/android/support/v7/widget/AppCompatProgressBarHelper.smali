.class Landroid/support/v7/widget/AppCompatProgressBarHelper;
.super Ljava/lang/Object;
.source "AppCompatProgressBarHelper.java"


# static fields
.field private static final TINT_ATTRS:[I


# instance fields
.field private mSampleTile:Landroid/graphics/Bitmap;

.field final mTintManager:Landroid/support/v7/widget/TintManager;

.field private final mView:Landroid/widget/ProgressBar;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroid/support/v7/widget/AppCompatProgressBarHelper;->TINT_ATTRS:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x101013b
        0x101013c
    .end array-data
.end method

.method constructor <init>(Landroid/widget/ProgressBar;Landroid/support/v7/widget/TintManager;)V
    .locals 0
    .param p1, "view"    # Landroid/widget/ProgressBar;
    .param p2, "tintManager"    # Landroid/support/v7/widget/TintManager;

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Landroid/support/v7/widget/AppCompatProgressBarHelper;->mView:Landroid/widget/ProgressBar;

    .line 50
    iput-object p2, p0, Landroid/support/v7/widget/AppCompatProgressBarHelper;->mTintManager:Landroid/support/v7/widget/TintManager;

    .line 51
    return-void
.end method

.method private getDrawableShape()Landroid/graphics/drawable/shapes/Shape;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 140
    const/16 v1, 0x8

    new-array v0, v1, [F

    fill-array-data v0, :array_0

    .line 141
    .local v0, "roundedCorners":[F
    new-instance v1, Landroid/graphics/drawable/shapes/RoundRectShape;

    invoke-direct {v1, v0, v2, v2}, Landroid/graphics/drawable/shapes/RoundRectShape;-><init>([FLandroid/graphics/RectF;[F)V

    return-object v1

    .line 140
    :array_0
    .array-data 4
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
    .end array-data
.end method

.method private tileify(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/Drawable;
    .locals 13
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "clip"    # Z

    .prologue
    const/4 v11, 0x1

    .line 75
    instance-of v10, p1, Landroid/support/v4/graphics/drawable/DrawableWrapper;

    if-eqz v10, :cond_2

    move-object v10, p1

    .line 76
    check-cast v10, Landroid/support/v4/graphics/drawable/DrawableWrapper;

    invoke-interface {v10}, Landroid/support/v4/graphics/drawable/DrawableWrapper;->getWrappedDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 77
    .local v5, "inner":Landroid/graphics/drawable/Drawable;
    if-eqz v5, :cond_0

    .line 78
    invoke-direct {p0, v5, p2}, Landroid/support/v7/widget/AppCompatProgressBarHelper;->tileify(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    move-object v10, p1

    .line 79
    check-cast v10, Landroid/support/v4/graphics/drawable/DrawableWrapper;

    invoke-interface {v10, v5}, Landroid/support/v4/graphics/drawable/DrawableWrapper;->setWrappedDrawable(Landroid/graphics/drawable/Drawable;)V

    .end local v5    # "inner":Landroid/graphics/drawable/Drawable;
    :cond_0
    move-object v6, p1

    .line 113
    .end local p1    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_1
    :goto_0
    return-object v6

    .line 81
    .restart local p1    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_2
    instance-of v10, p1, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v10, :cond_6

    move-object v1, p1

    .line 82
    check-cast v1, Landroid/graphics/drawable/LayerDrawable;

    .line 83
    .local v1, "background":Landroid/graphics/drawable/LayerDrawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/LayerDrawable;->getNumberOfLayers()I

    move-result v0

    .line 84
    .local v0, "N":I
    new-array v7, v0, [Landroid/graphics/drawable/Drawable;

    .line 86
    .local v7, "outDrawables":[Landroid/graphics/drawable/Drawable;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v0, :cond_5

    .line 87
    invoke-virtual {v1, v3}, Landroid/graphics/drawable/LayerDrawable;->getId(I)I

    move-result v4

    .line 88
    .local v4, "id":I
    invoke-virtual {v1, v3}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    const v10, 0x102000d

    if-eq v4, v10, :cond_3

    const v10, 0x102000f

    if-ne v4, v10, :cond_4

    :cond_3
    move v10, v11

    :goto_2
    invoke-direct {p0, v12, v10}, Landroid/support/v7/widget/AppCompatProgressBarHelper;->tileify(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    aput-object v10, v7, v3

    .line 86
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 88
    :cond_4
    const/4 v10, 0x0

    goto :goto_2

    .line 91
    .end local v4    # "id":I
    :cond_5
    new-instance v6, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {v6, v7}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 93
    .local v6, "newBg":Landroid/graphics/drawable/LayerDrawable;
    const/4 v3, 0x0

    :goto_3
    if-ge v3, v0, :cond_1

    .line 94
    invoke-virtual {v1, v3}, Landroid/graphics/drawable/LayerDrawable;->getId(I)I

    move-result v10

    invoke-virtual {v6, v3, v10}, Landroid/graphics/drawable/LayerDrawable;->setId(II)V

    .line 93
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 99
    .end local v0    # "N":I
    .end local v1    # "background":Landroid/graphics/drawable/LayerDrawable;
    .end local v3    # "i":I
    .end local v6    # "newBg":Landroid/graphics/drawable/LayerDrawable;
    .end local v7    # "outDrawables":[Landroid/graphics/drawable/Drawable;
    :cond_6
    instance-of v10, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v10, :cond_0

    .line 100
    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    .end local p1    # "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v9

    .line 101
    .local v9, "tileBitmap":Landroid/graphics/Bitmap;
    iget-object v10, p0, Landroid/support/v7/widget/AppCompatProgressBarHelper;->mSampleTile:Landroid/graphics/Bitmap;

    if-nez v10, :cond_7

    .line 102
    iput-object v9, p0, Landroid/support/v7/widget/AppCompatProgressBarHelper;->mSampleTile:Landroid/graphics/Bitmap;

    .line 105
    :cond_7
    new-instance v8, Landroid/graphics/drawable/ShapeDrawable;

    invoke-direct {p0}, Landroid/support/v7/widget/AppCompatProgressBarHelper;->getDrawableShape()Landroid/graphics/drawable/shapes/Shape;

    move-result-object v10

    invoke-direct {v8, v10}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 106
    .local v8, "shapeDrawable":Landroid/graphics/drawable/ShapeDrawable;
    new-instance v2, Landroid/graphics/BitmapShader;

    sget-object v10, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    sget-object v12, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v2, v9, v10, v12}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 108
    .local v2, "bitmapShader":Landroid/graphics/BitmapShader;
    invoke-virtual {v8}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v10

    invoke-virtual {v10, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 109
    if-eqz p2, :cond_8

    new-instance v10, Landroid/graphics/drawable/ClipDrawable;

    const/4 v12, 0x3

    invoke-direct {v10, v8, v12, v11}, Landroid/graphics/drawable/ClipDrawable;-><init>(Landroid/graphics/drawable/Drawable;II)V

    move-object v8, v10

    .end local v8    # "shapeDrawable":Landroid/graphics/drawable/ShapeDrawable;
    :cond_8
    move-object v6, v8

    goto :goto_0
.end method

.method private tileifyIndeterminate(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 8
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/16 v7, 0x2710

    .line 122
    instance-of v5, p1, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v5, :cond_1

    move-object v1, p1

    .line 123
    check-cast v1, Landroid/graphics/drawable/AnimationDrawable;

    .line 124
    .local v1, "background":Landroid/graphics/drawable/AnimationDrawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable;->getNumberOfFrames()I

    move-result v0

    .line 125
    .local v0, "N":I
    new-instance v4, Landroid/graphics/drawable/AnimationDrawable;

    invoke-direct {v4}, Landroid/graphics/drawable/AnimationDrawable;-><init>()V

    .line 126
    .local v4, "newBg":Landroid/graphics/drawable/AnimationDrawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable;->isOneShot()Z

    move-result v5

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/AnimationDrawable;->setOneShot(Z)V

    .line 128
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_0

    .line 129
    invoke-virtual {v1, v3}, Landroid/graphics/drawable/AnimationDrawable;->getFrame(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    const/4 v6, 0x1

    invoke-direct {p0, v5, v6}, Landroid/support/v7/widget/AppCompatProgressBarHelper;->tileify(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 130
    .local v2, "frame":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v2, v7}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 131
    invoke-virtual {v1, v3}, Landroid/graphics/drawable/AnimationDrawable;->getDuration(I)I

    move-result v5

    invoke-virtual {v4, v2, v5}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 128
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 133
    .end local v2    # "frame":Landroid/graphics/drawable/Drawable;
    :cond_0
    invoke-virtual {v4, v7}, Landroid/graphics/drawable/AnimationDrawable;->setLevel(I)Z

    .line 134
    move-object p1, v4

    .line 136
    .end local v0    # "N":I
    .end local v1    # "background":Landroid/graphics/drawable/AnimationDrawable;
    .end local v3    # "i":I
    .end local v4    # "newBg":Landroid/graphics/drawable/AnimationDrawable;
    :cond_1
    return-object p1
.end method


# virtual methods
.method getSampleTime()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatProgressBarHelper;->mSampleTile:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method loadFromAttributes(Landroid/util/AttributeSet;I)V
    .locals 5
    .param p1, "attrs"    # Landroid/util/AttributeSet;
    .param p2, "defStyleAttr"    # I

    .prologue
    const/4 v4, 0x0

    .line 54
    iget-object v2, p0, Landroid/support/v7/widget/AppCompatProgressBarHelper;->mView:Landroid/widget/ProgressBar;

    invoke-virtual {v2}, Landroid/widget/ProgressBar;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Landroid/support/v7/widget/AppCompatProgressBarHelper;->TINT_ATTRS:[I

    invoke-static {v2, p1, v3, p2, v4}, Landroid/support/v7/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroid/support/v7/widget/TintTypedArray;

    move-result-object v0

    .line 57
    .local v0, "a":Landroid/support/v7/widget/TintTypedArray;
    invoke-virtual {v0, v4}, Landroid/support/v7/widget/TintTypedArray;->getDrawableIfKnown(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 58
    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_0

    .line 59
    iget-object v2, p0, Landroid/support/v7/widget/AppCompatProgressBarHelper;->mView:Landroid/widget/ProgressBar;

    invoke-direct {p0, v1}, Landroid/support/v7/widget/AppCompatProgressBarHelper;->tileifyIndeterminate(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 62
    :cond_0
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/TintTypedArray;->getDrawableIfKnown(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 63
    if-eqz v1, :cond_1

    .line 64
    iget-object v2, p0, Landroid/support/v7/widget/AppCompatProgressBarHelper;->mView:Landroid/widget/ProgressBar;

    invoke-direct {p0, v1, v4}, Landroid/support/v7/widget/AppCompatProgressBarHelper;->tileify(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 67
    :cond_1
    invoke-virtual {v0}, Landroid/support/v7/widget/TintTypedArray;->recycle()V

    .line 68
    return-void
.end method
