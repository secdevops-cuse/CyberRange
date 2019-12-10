.class public abstract Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;
.super Ljava/lang/Object;
.source "ItemTouchHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/helper/ItemTouchHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Callback"
.end annotation


# static fields
.field private static final ABS_HORIZONTAL_DIR_FLAGS:I = 0xc0c0c

.field public static final DEFAULT_DRAG_ANIMATION_DURATION:I = 0xc8

.field public static final DEFAULT_SWIPE_ANIMATION_DURATION:I = 0xfa

.field private static final DRAG_SCROLL_ACCELERATION_LIMIT_TIME_MS:J = 0x7d0L

.field static final RELATIVE_DIR_FLAGS:I = 0x303030

.field private static final sDragScrollInterpolator:Landroid/view/animation/Interpolator;

.field private static final sDragViewScrollCapInterpolator:Landroid/view/animation/Interpolator;

.field private static final sUICallback:Landroid/support/v7/widget/helper/ItemTouchUIUtil;


# instance fields
.field private mCachedMaxScrollSpeed:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 1342
    new-instance v0, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback$1;

    invoke-direct {v0}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback$1;-><init>()V

    sput-object v0, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->sDragScrollInterpolator:Landroid/view/animation/Interpolator;

    .line 1348
    new-instance v0, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback$2;

    invoke-direct {v0}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback$2;-><init>()V

    sput-object v0, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->sDragViewScrollCapInterpolator:Landroid/view/animation/Interpolator;

    .line 1363
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 1364
    new-instance v0, Landroid/support/v7/widget/helper/ItemTouchUIUtilImpl$Lollipop;

    invoke-direct {v0}, Landroid/support/v7/widget/helper/ItemTouchUIUtilImpl$Lollipop;-><init>()V

    sput-object v0, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->sUICallback:Landroid/support/v7/widget/helper/ItemTouchUIUtil;

    .line 1370
    :goto_0
    return-void

    .line 1365
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_1

    .line 1366
    new-instance v0, Landroid/support/v7/widget/helper/ItemTouchUIUtilImpl$Honeycomb;

    invoke-direct {v0}, Landroid/support/v7/widget/helper/ItemTouchUIUtilImpl$Honeycomb;-><init>()V

    sput-object v0, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->sUICallback:Landroid/support/v7/widget/helper/ItemTouchUIUtil;

    goto :goto_0

    .line 1368
    :cond_1
    new-instance v0, Landroid/support/v7/widget/helper/ItemTouchUIUtilImpl$Gingerbread;

    invoke-direct {v0}, Landroid/support/v7/widget/helper/ItemTouchUIUtilImpl$Gingerbread;-><init>()V

    sput-object v0, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->sUICallback:Landroid/support/v7/widget/helper/ItemTouchUIUtil;

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1326
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1360
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->mCachedMaxScrollSpeed:I

    return-void
.end method

.method static synthetic access$1300(Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;Ljava/util/List;IFF)V
    .locals 0
    .param p0, "x0"    # Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;
    .param p1, "x1"    # Landroid/graphics/Canvas;
    .param p2, "x2"    # Landroid/support/v7/widget/RecyclerView;
    .param p3, "x3"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .param p4, "x4"    # Ljava/util/List;
    .param p5, "x5"    # I
    .param p6, "x6"    # F
    .param p7, "x7"    # F

    .prologue
    .line 1326
    invoke-direct/range {p0 .. p7}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->onDrawOver(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;Ljava/util/List;IFF)V

    return-void
.end method

.method static synthetic access$1400(Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;Ljava/util/List;IFF)V
    .locals 0
    .param p0, "x0"    # Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;
    .param p1, "x1"    # Landroid/graphics/Canvas;
    .param p2, "x2"    # Landroid/support/v7/widget/RecyclerView;
    .param p3, "x3"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .param p4, "x4"    # Ljava/util/List;
    .param p5, "x5"    # I
    .param p6, "x6"    # F
    .param p7, "x7"    # F

    .prologue
    .line 1326
    invoke-direct/range {p0 .. p7}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->onDraw(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;Ljava/util/List;IFF)V

    return-void
.end method

.method static synthetic access$2100(Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z
    .locals 1
    .param p0, "x0"    # Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;
    .param p1, "x1"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "x2"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .prologue
    .line 1326
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->hasDragFlag(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2200(Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z
    .locals 1
    .param p0, "x0"    # Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;
    .param p1, "x1"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "x2"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .prologue
    .line 1326
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->hasSwipeFlag(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z

    move-result v0

    return v0
.end method

.method public static convertToRelativeDirection(II)I
    .locals 4
    .param p0, "flags"    # I
    .param p1, "layoutDirection"    # I

    .prologue
    const v3, 0xc0c0c

    .line 1427
    and-int v0, p0, v3

    .line 1428
    .local v0, "masked":I
    if-nez v0, :cond_0

    .line 1442
    :goto_0
    return p0

    .line 1431
    :cond_0
    xor-int/lit8 v1, v0, -0x1

    and-int/2addr p0, v1

    .line 1432
    if-nez p1, :cond_1

    .line 1434
    shl-int/lit8 v1, v0, 0x2

    or-int/2addr p0, v1

    .line 1435
    goto :goto_0

    .line 1438
    :cond_1
    shl-int/lit8 v1, v0, 0x1

    const v2, -0xc0c0d

    and-int/2addr v1, v2

    or-int/2addr p0, v1

    .line 1440
    shl-int/lit8 v1, v0, 0x1

    and-int/2addr v1, v3

    shl-int/lit8 v1, v1, 0x2

    or-int/2addr p0, v1

    .line 1442
    goto :goto_0
.end method

.method public static getDefaultUIUtil()Landroid/support/v7/widget/helper/ItemTouchUIUtil;
    .locals 1

    .prologue
    .line 1412
    sget-object v0, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->sUICallback:Landroid/support/v7/widget/helper/ItemTouchUIUtil;

    return-object v0
.end method

.method private getMaxDragScroll(Landroid/support/v7/widget/RecyclerView;)I
    .locals 2
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;

    .prologue
    .line 1790
    iget v0, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->mCachedMaxScrollSpeed:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 1791
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Landroid/support/v7/recyclerview/R$dimen;->item_touch_helper_max_drag_scroll_per_frame:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->mCachedMaxScrollSpeed:I

    .line 1794
    :cond_0
    iget v0, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->mCachedMaxScrollSpeed:I

    return v0
.end method

.method private hasDragFlag(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z
    .locals 2
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "viewHolder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .prologue
    .line 1541
    invoke-virtual {p0, p1, p2}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->getAbsoluteMovementFlags(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;)I

    move-result v0

    .line 1542
    .local v0, "flags":I
    const/high16 v1, 0xff0000

    and-int/2addr v1, v0

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private hasSwipeFlag(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z
    .locals 2
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "viewHolder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .prologue
    .line 1547
    invoke-virtual {p0, p1, p2}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->getAbsoluteMovementFlags(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;)I

    move-result v0

    .line 1548
    .local v0, "flags":I
    const v1, 0xff00

    and-int/2addr v1, v0

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static makeFlag(II)I
    .locals 1
    .param p0, "actionState"    # I
    .param p1, "directions"    # I

    .prologue
    .line 1473
    mul-int/lit8 v0, p0, 0x8

    shl-int v0, p1, v0

    return v0
.end method

.method public static makeMovementFlags(II)I
    .locals 2
    .param p0, "dragFlags"    # I
    .param p1, "swipeFlags"    # I

    .prologue
    .line 1457
    const/4 v0, 0x0

    or-int v1, p1, p0

    invoke-static {v0, v1}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->makeFlag(II)I

    move-result v0

    const/4 v1, 0x1

    invoke-static {v1, p1}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->makeFlag(II)I

    move-result v1

    or-int/2addr v0, v1

    const/4 v1, 0x2

    invoke-static {v1, p0}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->makeFlag(II)I

    move-result v1

    or-int/2addr v0, v1

    return v0
.end method

.method private onDraw(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;Ljava/util/List;IFF)V
    .locals 13
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "parent"    # Landroid/support/v7/widget/RecyclerView;
    .param p3, "selected"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .param p5, "actionState"    # I
    .param p6, "dX"    # F
    .param p7, "dY"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            "Landroid/support/v7/widget/RecyclerView;",
            "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
            "Ljava/util/List",
            "<",
            "Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;",
            ">;IFF)V"
        }
    .end annotation

    .prologue
    .line 1867
    .local p4, "recoverAnimationList":Ljava/util/List;, "Ljava/util/List<Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;>;"
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result v12

    .line 1868
    .local v12, "recoverAnimSize":I
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_0
    if-ge v11, v12, :cond_0

    .line 1869
    move-object/from16 v0, p4

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;

    .line 1870
    .local v9, "anim":Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;
    invoke-virtual {v9}, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;->update()V

    .line 1871
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v10

    .line 1872
    .local v10, "count":I
    iget-object v4, v9, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;->mViewHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    iget v5, v9, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;->mX:F

    iget v6, v9, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;->mY:F

    iget v7, v9, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;->mActionState:I

    const/4 v8, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-virtual/range {v1 .. v8}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->onChildDraw(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;FFIZ)V

    .line 1874
    invoke-virtual {p1, v10}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 1868
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 1876
    .end local v9    # "anim":Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;
    .end local v10    # "count":I
    :cond_0
    if-eqz p3, :cond_1

    .line 1877
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v10

    .line 1878
    .restart local v10    # "count":I
    const/4 v8, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p5

    invoke-virtual/range {v1 .. v8}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->onChildDraw(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;FFIZ)V

    .line 1879
    invoke-virtual {p1, v10}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 1881
    .end local v10    # "count":I
    :cond_1
    return-void
.end method

.method private onDrawOver(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;Ljava/util/List;IFF)V
    .locals 14
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "parent"    # Landroid/support/v7/widget/RecyclerView;
    .param p3, "selected"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .param p5, "actionState"    # I
    .param p6, "dX"    # F
    .param p7, "dY"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            "Landroid/support/v7/widget/RecyclerView;",
            "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
            "Ljava/util/List",
            "<",
            "Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;",
            ">;IFF)V"
        }
    .end annotation

    .prologue
    .line 1886
    .local p4, "recoverAnimationList":Ljava/util/List;, "Ljava/util/List<Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;>;"
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result v13

    .line 1887
    .local v13, "recoverAnimSize":I
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_0
    if-ge v12, v13, :cond_0

    .line 1888
    move-object/from16 v0, p4

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;

    .line 1889
    .local v9, "anim":Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v10

    .line 1890
    .local v10, "count":I
    iget-object v4, v9, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;->mViewHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    iget v5, v9, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;->mX:F

    iget v6, v9, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;->mY:F

    iget v7, v9, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;->mActionState:I

    const/4 v8, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p2

    invoke-virtual/range {v1 .. v8}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->onChildDrawOver(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;FFIZ)V

    .line 1892
    invoke-virtual {p1, v10}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 1887
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 1894
    .end local v9    # "anim":Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;
    .end local v10    # "count":I
    :cond_0
    if-eqz p3, :cond_1

    .line 1895
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v10

    .line 1896
    .restart local v10    # "count":I
    const/4 v8, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p5

    invoke-virtual/range {v1 .. v8}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->onChildDrawOver(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;FFIZ)V

    .line 1897
    invoke-virtual {p1, v10}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 1899
    .end local v10    # "count":I
    :cond_1
    const/4 v11, 0x0

    .line 1900
    .local v11, "hasRunningAnimation":Z
    add-int/lit8 v12, v13, -0x1

    :goto_1
    if-ltz v12, :cond_4

    .line 1901
    move-object/from16 v0, p4

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;

    .line 1902
    .restart local v9    # "anim":Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;
    # getter for: Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;->mEnded:Z
    invoke-static {v9}, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;->access$1900(Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-boolean v1, v9, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;->mIsPendingCleanup:Z

    if-nez v1, :cond_3

    .line 1903
    move-object/from16 v0, p4

    invoke-interface {v0, v12}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1900
    :cond_2
    :goto_2
    add-int/lit8 v12, v12, -0x1

    goto :goto_1

    .line 1904
    :cond_3
    # getter for: Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;->mEnded:Z
    invoke-static {v9}, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;->access$1900(Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1905
    const/4 v11, 0x1

    goto :goto_2

    .line 1908
    .end local v9    # "anim":Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;
    :cond_4
    if-eqz v11, :cond_5

    .line 1909
    invoke-virtual/range {p2 .. p2}, Landroid/support/v7/widget/RecyclerView;->invalidate()V

    .line 1911
    :cond_5
    return-void
.end method


# virtual methods
.method public canDropOver(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z
    .locals 1
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "current"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .param p3, "target"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .prologue
    .line 1568
    const/4 v0, 0x1

    return v0
.end method

.method public chooseDropTarget(Landroid/support/v7/widget/RecyclerView$ViewHolder;Ljava/util/List;II)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 13
    .param p1, "selected"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .param p3, "curX"    # I
    .param p4, "curY"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
            "Ljava/util/List",
            "<",
            "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
            ">;II)",
            "Landroid/support/v7/widget/RecyclerView$ViewHolder;"
        }
    .end annotation

    .prologue
    .line 1690
    .local p2, "dropTargets":Ljava/util/List;, "Ljava/util/List<Landroid/support/v7/widget/RecyclerView$ViewHolder;>;"
    iget-object v11, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getWidth()I

    move-result v11

    add-int v5, p3, v11

    .line 1691
    .local v5, "right":I
    iget-object v11, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getHeight()I

    move-result v11

    add-int v0, p4, v11

    .line 1692
    .local v0, "bottom":I
    const/4 v9, 0x0

    .line 1693
    .local v9, "winner":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    const/4 v10, -0x1

    .line 1694
    .local v10, "winnerScore":I
    iget-object v11, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getLeft()I

    move-result v11

    sub-int v2, p3, v11

    .line 1695
    .local v2, "dx":I
    iget-object v11, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getTop()I

    move-result v11

    sub-int v3, p4, v11

    .line 1696
    .local v3, "dy":I
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v8

    .line 1697
    .local v8, "targetsSize":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v8, :cond_4

    .line 1698
    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .line 1699
    .local v7, "target":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    if-lez v2, :cond_0

    .line 1700
    iget-object v11, v7, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getRight()I

    move-result v11

    sub-int v1, v11, v5

    .line 1701
    .local v1, "diff":I
    if-gez v1, :cond_0

    iget-object v11, v7, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getRight()I

    move-result v11

    iget-object v12, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v12}, Landroid/view/View;->getRight()I

    move-result v12

    if-le v11, v12, :cond_0

    .line 1702
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v6

    .line 1703
    .local v6, "score":I
    if-le v6, v10, :cond_0

    .line 1704
    move v10, v6

    .line 1705
    move-object v9, v7

    .line 1709
    .end local v1    # "diff":I
    .end local v6    # "score":I
    :cond_0
    if-gez v2, :cond_1

    .line 1710
    iget-object v11, v7, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getLeft()I

    move-result v11

    sub-int v1, v11, p3

    .line 1711
    .restart local v1    # "diff":I
    if-lez v1, :cond_1

    iget-object v11, v7, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getLeft()I

    move-result v11

    iget-object v12, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v12}, Landroid/view/View;->getLeft()I

    move-result v12

    if-ge v11, v12, :cond_1

    .line 1712
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v6

    .line 1713
    .restart local v6    # "score":I
    if-le v6, v10, :cond_1

    .line 1714
    move v10, v6

    .line 1715
    move-object v9, v7

    .line 1719
    .end local v1    # "diff":I
    .end local v6    # "score":I
    :cond_1
    if-gez v3, :cond_2

    .line 1720
    iget-object v11, v7, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getTop()I

    move-result v11

    sub-int v1, v11, p4

    .line 1721
    .restart local v1    # "diff":I
    if-lez v1, :cond_2

    iget-object v11, v7, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getTop()I

    move-result v11

    iget-object v12, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v12}, Landroid/view/View;->getTop()I

    move-result v12

    if-ge v11, v12, :cond_2

    .line 1722
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v6

    .line 1723
    .restart local v6    # "score":I
    if-le v6, v10, :cond_2

    .line 1724
    move v10, v6

    .line 1725
    move-object v9, v7

    .line 1730
    .end local v1    # "diff":I
    .end local v6    # "score":I
    :cond_2
    if-lez v3, :cond_3

    .line 1731
    iget-object v11, v7, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getBottom()I

    move-result v11

    sub-int v1, v11, v0

    .line 1732
    .restart local v1    # "diff":I
    if-gez v1, :cond_3

    iget-object v11, v7, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getBottom()I

    move-result v11

    iget-object v12, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v12}, Landroid/view/View;->getBottom()I

    move-result v12

    if-le v11, v12, :cond_3

    .line 1733
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v6

    .line 1734
    .restart local v6    # "score":I
    if-le v6, v10, :cond_3

    .line 1735
    move v10, v6

    .line 1736
    move-object v9, v7

    .line 1697
    .end local v1    # "diff":I
    .end local v6    # "score":I
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 1741
    .end local v7    # "target":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    :cond_4
    return-object v9
.end method

.method public clearView(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 2
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "viewHolder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .prologue
    .line 1927
    sget-object v0, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->sUICallback:Landroid/support/v7/widget/helper/ItemTouchUIUtil;

    iget-object v1, p2, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/support/v7/widget/helper/ItemTouchUIUtil;->clearView(Landroid/view/View;)V

    .line 1928
    return-void
.end method

.method public convertToAbsoluteDirection(II)I
    .locals 5
    .param p1, "flags"    # I
    .param p2, "layoutDirection"    # I

    .prologue
    const v4, 0x303030

    .line 1516
    and-int v1, p1, v4

    .line 1517
    .local v1, "masked":I
    if-nez v1, :cond_0

    move v0, p1

    .line 1531
    .end local p1    # "flags":I
    .local v0, "flags":I
    :goto_0
    return v0

    .line 1520
    .end local v0    # "flags":I
    .restart local p1    # "flags":I
    :cond_0
    xor-int/lit8 v2, v1, -0x1

    and-int/2addr p1, v2

    .line 1521
    if-nez p2, :cond_1

    .line 1523
    shr-int/lit8 v2, v1, 0x2

    or-int/2addr p1, v2

    move v0, p1

    .line 1524
    .end local p1    # "flags":I
    .restart local v0    # "flags":I
    goto :goto_0

    .line 1527
    .end local v0    # "flags":I
    .restart local p1    # "flags":I
    :cond_1
    shr-int/lit8 v2, v1, 0x1

    const v3, -0x303031

    and-int/2addr v2, v3

    or-int/2addr p1, v2

    .line 1529
    shr-int/lit8 v2, v1, 0x1

    and-int/2addr v2, v4

    shr-int/lit8 v2, v2, 0x2

    or-int/2addr p1, v2

    move v0, p1

    .line 1531
    .end local p1    # "flags":I
    .restart local v0    # "flags":I
    goto :goto_0
.end method

.method final getAbsoluteMovementFlags(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;)I
    .locals 2
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "viewHolder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .prologue
    .line 1536
    invoke-virtual {p0, p1, p2}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->getMovementFlags(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;)I

    move-result v0

    .line 1537
    .local v0, "flags":I
    invoke-static {p1}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->convertToAbsoluteDirection(II)I

    move-result v1

    return v1
.end method

.method public getAnimationDuration(Landroid/support/v7/widget/RecyclerView;IFF)J
    .locals 4
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "animationType"    # I
    .param p3, "animateDx"    # F
    .param p4, "animateDy"    # F

    .prologue
    const/16 v1, 0x8

    .line 2020
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getItemAnimator()Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    move-result-object v0

    .line 2021
    .local v0, "itemAnimator":Landroid/support/v7/widget/RecyclerView$ItemAnimator;
    if-nez v0, :cond_1

    .line 2022
    if-ne p2, v1, :cond_0

    const-wide/16 v2, 0xc8

    .line 2025
    :goto_0
    return-wide v2

    .line 2022
    :cond_0
    const-wide/16 v2, 0xfa

    goto :goto_0

    .line 2025
    :cond_1
    if-ne p2, v1, :cond_2

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$ItemAnimator;->getMoveDuration()J

    move-result-wide v2

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$ItemAnimator;->getRemoveDuration()J

    move-result-wide v2

    goto :goto_0
.end method

.method public getBoundingBoxMargin()I
    .locals 1

    .prologue
    .line 1631
    const/4 v0, 0x0

    return v0
.end method

.method public getMoveThreshold(Landroid/support/v7/widget/RecyclerView$ViewHolder;)F
    .locals 1
    .param p1, "viewHolder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .prologue
    .line 1659
    const/high16 v0, 0x3f000000    # 0.5f

    return v0
.end method

.method public abstract getMovementFlags(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;)I
.end method

.method public getSwipeThreshold(Landroid/support/v7/widget/RecyclerView$ViewHolder;)F
    .locals 1
    .param p1, "viewHolder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .prologue
    .line 1646
    const/high16 v0, 0x3f000000    # 0.5f

    return v0
.end method

.method public interpolateOutOfBoundsScroll(Landroid/support/v7/widget/RecyclerView;IIIJ)I
    .locals 13
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "viewSize"    # I
    .param p3, "viewSizeOutOfBounds"    # I
    .param p4, "totalSize"    # I
    .param p5, "msSinceStartScroll"    # J

    .prologue
    .line 2054
    invoke-direct {p0, p1}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->getMaxDragScroll(Landroid/support/v7/widget/RecyclerView;)I

    move-result v5

    .line 2055
    .local v5, "maxScroll":I
    invoke-static/range {p3 .. p3}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 2056
    .local v2, "absOutOfBounds":I
    move/from16 v0, p3

    int-to-float v9, v0

    invoke-static {v9}, Ljava/lang/Math;->signum(F)F

    move-result v9

    float-to-int v4, v9

    .line 2058
    .local v4, "direction":I
    const/high16 v9, 0x3f800000    # 1.0f

    const/high16 v10, 0x3f800000    # 1.0f

    int-to-float v11, v2

    mul-float/2addr v10, v11

    int-to-float v11, p2

    div-float/2addr v10, v11

    invoke-static {v9, v10}, Ljava/lang/Math;->min(FF)F

    move-result v6

    .line 2059
    .local v6, "outOfBoundsRatio":F
    mul-int v9, v4, v5

    int-to-float v9, v9

    sget-object v10, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->sDragViewScrollCapInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v10, v6}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v10

    mul-float/2addr v9, v10

    float-to-int v3, v9

    .line 2062
    .local v3, "cappedScroll":I
    const-wide/16 v10, 0x7d0

    cmp-long v9, p5, v10

    if-lez v9, :cond_0

    .line 2063
    const/high16 v7, 0x3f800000    # 1.0f

    .line 2067
    .local v7, "timeRatio":F
    :goto_0
    int-to-float v9, v3

    sget-object v10, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->sDragScrollInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v10, v7}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v10

    mul-float/2addr v9, v10

    float-to-int v8, v9

    .line 2069
    .local v8, "value":I
    if-nez v8, :cond_2

    .line 2070
    if-lez p3, :cond_1

    const/4 v9, 0x1

    .line 2072
    :goto_1
    return v9

    .line 2065
    .end local v7    # "timeRatio":F
    .end local v8    # "value":I
    :cond_0
    move-wide/from16 v0, p5

    long-to-float v9, v0

    const/high16 v10, 0x44fa0000    # 2000.0f

    div-float v7, v9, v10

    .restart local v7    # "timeRatio":F
    goto :goto_0

    .line 2070
    .restart local v8    # "value":I
    :cond_1
    const/4 v9, -0x1

    goto :goto_1

    :cond_2
    move v9, v8

    .line 2072
    goto :goto_1
.end method

.method public isItemViewSwipeEnabled()Z
    .locals 1

    .prologue
    .line 1620
    const/4 v0, 0x1

    return v0
.end method

.method public isLongPressDragEnabled()Z
    .locals 1

    .prologue
    .line 1605
    const/4 v0, 0x1

    return v0
.end method

.method public onChildDraw(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;FFIZ)V
    .locals 8
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
    .param p3, "viewHolder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .param p4, "dX"    # F
    .param p5, "dY"    # F
    .param p6, "actionState"    # I
    .param p7, "isCurrentlyActive"    # Z

    .prologue
    .line 1960
    sget-object v0, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->sUICallback:Landroid/support/v7/widget/helper/ItemTouchUIUtil;

    iget-object v3, p3, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move-object v1, p1

    move-object v2, p2

    move v4, p4

    move v5, p5

    move v6, p6

    move v7, p7

    invoke-interface/range {v0 .. v7}, Landroid/support/v7/widget/helper/ItemTouchUIUtil;->onDraw(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/view/View;FFIZ)V

    .line 1962
    return-void
.end method

.method public onChildDrawOver(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;FFIZ)V
    .locals 8
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
    .param p3, "viewHolder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .param p4, "dX"    # F
    .param p5, "dY"    # F
    .param p6, "actionState"    # I
    .param p7, "isCurrentlyActive"    # Z

    .prologue
    .line 1994
    sget-object v0, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->sUICallback:Landroid/support/v7/widget/helper/ItemTouchUIUtil;

    iget-object v3, p3, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move-object v1, p1

    move-object v2, p2

    move v4, p4

    move v5, p5

    move v6, p6

    move v7, p7

    invoke-interface/range {v0 .. v7}, Landroid/support/v7/widget/helper/ItemTouchUIUtil;->onDrawOver(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/view/View;FFIZ)V

    .line 1996
    return-void
.end method

.method public abstract onMove(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z
.end method

.method public onMoved(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;ILandroid/support/v7/widget/RecyclerView$ViewHolder;III)V
    .locals 7
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "viewHolder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .param p3, "fromPos"    # I
    .param p4, "target"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .param p5, "toPos"    # I
    .param p6, "x"    # I
    .param p7, "y"    # I

    .prologue
    .line 1833
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    .line 1834
    .local v0, "layoutManager":Landroid/support/v7/widget/RecyclerView$LayoutManager;
    instance-of v5, v0, Landroid/support/v7/widget/helper/ItemTouchHelper$ViewDropHandler;

    if-eqz v5, :cond_1

    .line 1835
    check-cast v0, Landroid/support/v7/widget/helper/ItemTouchHelper$ViewDropHandler;

    .end local v0    # "layoutManager":Landroid/support/v7/widget/RecyclerView$LayoutManager;
    iget-object v5, p2, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget-object v6, p4, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-interface {v0, v5, v6, p6, p7}, Landroid/support/v7/widget/helper/ItemTouchHelper$ViewDropHandler;->prepareForDrop(Landroid/view/View;Landroid/view/View;II)V

    .line 1862
    :cond_0
    :goto_0
    return-void

    .line 1841
    .restart local v0    # "layoutManager":Landroid/support/v7/widget/RecyclerView$LayoutManager;
    :cond_1
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1842
    iget-object v5, p4, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getDecoratedLeft(Landroid/view/View;)I

    move-result v3

    .line 1843
    .local v3, "minLeft":I
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getPaddingLeft()I

    move-result v5

    if-gt v3, v5, :cond_2

    .line 1844
    invoke-virtual {p1, p5}, Landroid/support/v7/widget/RecyclerView;->scrollToPosition(I)V

    .line 1846
    :cond_2
    iget-object v5, p4, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getDecoratedRight(Landroid/view/View;)I

    move-result v2

    .line 1847
    .local v2, "maxRight":I
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v5

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getPaddingRight()I

    move-result v6

    sub-int/2addr v5, v6

    if-lt v2, v5, :cond_3

    .line 1848
    invoke-virtual {p1, p5}, Landroid/support/v7/widget/RecyclerView;->scrollToPosition(I)V

    .line 1852
    .end local v2    # "maxRight":I
    .end local v3    # "minLeft":I
    :cond_3
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1853
    iget-object v5, p4, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getDecoratedTop(Landroid/view/View;)I

    move-result v4

    .line 1854
    .local v4, "minTop":I
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getPaddingTop()I

    move-result v5

    if-gt v4, v5, :cond_4

    .line 1855
    invoke-virtual {p1, p5}, Landroid/support/v7/widget/RecyclerView;->scrollToPosition(I)V

    .line 1857
    :cond_4
    iget-object v5, p4, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getDecoratedBottom(Landroid/view/View;)I

    move-result v1

    .line 1858
    .local v1, "maxBottom":I
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v5

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getPaddingBottom()I

    move-result v6

    sub-int/2addr v5, v6

    if-lt v1, v5, :cond_0

    .line 1859
    invoke-virtual {p1, p5}, Landroid/support/v7/widget/RecyclerView;->scrollToPosition(I)V

    goto :goto_0
.end method

.method public onSelectedChanged(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 2
    .param p1, "viewHolder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .param p2, "actionState"    # I

    .prologue
    .line 1784
    if-eqz p1, :cond_0

    .line 1785
    sget-object v0, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->sUICallback:Landroid/support/v7/widget/helper/ItemTouchUIUtil;

    iget-object v1, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/support/v7/widget/helper/ItemTouchUIUtil;->onSelected(Landroid/view/View;)V

    .line 1787
    :cond_0
    return-void
.end method

.method public abstract onSwiped(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
.end method
