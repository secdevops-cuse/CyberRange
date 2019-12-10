.class public Landroid/support/v7/widget/ListViewCompat;
.super Landroid/widget/ListView;
.source "ListViewCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/widget/ListViewCompat$GateKeeperDrawable;
    }
.end annotation


# static fields
.field public static final INVALID_POSITION:I = -0x1

.field public static final NO_POSITION:I = -0x1

.field private static final STATE_SET_NOTHING:[I


# instance fields
.field private mIsChildViewEnabled:Ljava/lang/reflect/Field;

.field protected mMotionPosition:I

.field mSelectionBottomPadding:I

.field mSelectionLeftPadding:I

.field mSelectionRightPadding:I

.field mSelectionTopPadding:I

.field private mSelector:Landroid/support/v7/widget/ListViewCompat$GateKeeperDrawable;

.field final mSelectorRect:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 46
    const/4 v0, 0x1

    new-array v0, v0, [I

    aput v1, v0, v1

    sput-object v0, Landroid/support/v7/widget/ListViewCompat;->STATE_SET_NOTHING:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 61
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/ListViewCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 62
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 65
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/ListViewCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 66
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v2, 0x0

    .line 69
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 48
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/support/v7/widget/ListViewCompat;->mSelectorRect:Landroid/graphics/Rect;

    .line 49
    iput v2, p0, Landroid/support/v7/widget/ListViewCompat;->mSelectionLeftPadding:I

    .line 50
    iput v2, p0, Landroid/support/v7/widget/ListViewCompat;->mSelectionTopPadding:I

    .line 51
    iput v2, p0, Landroid/support/v7/widget/ListViewCompat;->mSelectionRightPadding:I

    .line 52
    iput v2, p0, Landroid/support/v7/widget/ListViewCompat;->mSelectionBottomPadding:I

    .line 72
    :try_start_0
    const-class v1, Landroid/widget/AbsListView;

    const-string v2, "mIsChildViewEnabled"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v7/widget/ListViewCompat;->mIsChildViewEnabled:Ljava/lang/reflect/Field;

    .line 73
    iget-object v1, p0, Landroid/support/v7/widget/ListViewCompat;->mIsChildViewEnabled:Ljava/lang/reflect/Field;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    :goto_0
    return-void

    .line 74
    :catch_0
    move-exception v0

    .line 75
    .local v0, "e":Ljava/lang/NoSuchFieldException;
    invoke-virtual {v0}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 105
    const/4 v0, 0x0

    .line 107
    .local v0, "drawSelectorOnTop":Z
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/ListViewCompat;->drawSelectorCompat(Landroid/graphics/Canvas;)V

    .line 110
    invoke-super {p0, p1}, Landroid/widget/ListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 111
    return-void
.end method

.method protected drawSelectorCompat(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 139
    iget-object v1, p0, Landroid/support/v7/widget/ListViewCompat;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 140
    invoke-virtual {p0}, Landroid/support/v7/widget/ListViewCompat;->getSelector()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 141
    .local v0, "selector":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 142
    iget-object v1, p0, Landroid/support/v7/widget/ListViewCompat;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 143
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 146
    .end local v0    # "selector":Landroid/graphics/drawable/Drawable;
    :cond_0
    return-void
.end method

.method protected drawableStateChanged()V
    .locals 1

    .prologue
    .line 97
    invoke-super {p0}, Landroid/widget/ListView;->drawableStateChanged()V

    .line 99
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/ListViewCompat;->setSelectorEnabled(Z)V

    .line 100
    invoke-virtual {p0}, Landroid/support/v7/widget/ListViewCompat;->updateSelectorStateCompat()V

    .line 101
    return-void
.end method

.method public lookForSelectablePosition(IZ)I
    .locals 4
    .param p1, "position"    # I
    .param p2, "lookDown"    # Z

    .prologue
    const/4 v2, -0x1

    .line 157
    invoke-virtual {p0}, Landroid/support/v7/widget/ListViewCompat;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 158
    .local v0, "adapter":Landroid/widget/ListAdapter;
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/widget/ListViewCompat;->isInTouchMode()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 184
    :cond_0
    :goto_0
    return v2

    .line 162
    :cond_1
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    .line 163
    .local v1, "count":I
    invoke-virtual {p0}, Landroid/support/v7/widget/ListViewCompat;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v3

    invoke-interface {v3}, Landroid/widget/ListAdapter;->areAllItemsEnabled()Z

    move-result v3

    if-nez v3, :cond_4

    .line 164
    if-eqz p2, :cond_2

    .line 165
    const/4 v3, 0x0

    invoke-static {v3, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 166
    :goto_1
    if-ge p1, v1, :cond_3

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v3

    if-nez v3, :cond_3

    .line 167
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 170
    :cond_2
    add-int/lit8 v3, v1, -0x1

    invoke-static {p1, v3}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 171
    :goto_2
    if-ltz p1, :cond_3

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v3

    if-nez v3, :cond_3

    .line 172
    add-int/lit8 p1, p1, -0x1

    goto :goto_2

    .line 176
    :cond_3
    if-ltz p1, :cond_0

    if-ge p1, v1, :cond_0

    move v2, p1

    .line 179
    goto :goto_0

    .line 181
    :cond_4
    if-ltz p1, :cond_0

    if-ge p1, v1, :cond_0

    move v2, p1

    .line 184
    goto :goto_0
.end method

.method public measureHeightOfChildrenCompat(IIIII)I
    .locals 21
    .param p1, "widthMeasureSpec"    # I
    .param p2, "startPosition"    # I
    .param p3, "endPosition"    # I
    .param p4, "maxHeight"    # I
    .param p5, "disallowPartialChildPosition"    # I

    .prologue
    .line 272
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/ListViewCompat;->getListPaddingTop()I

    move-result v14

    .line 273
    .local v14, "paddingTop":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/ListViewCompat;->getListPaddingBottom()I

    move-result v11

    .line 274
    .local v11, "paddingBottom":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/ListViewCompat;->getListPaddingLeft()I

    move-result v12

    .line 275
    .local v12, "paddingLeft":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/ListViewCompat;->getListPaddingRight()I

    move-result v13

    .line 276
    .local v13, "paddingRight":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/ListViewCompat;->getDividerHeight()I

    move-result v16

    .line 277
    .local v16, "reportedDividerHeight":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/ListViewCompat;->getDivider()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 279
    .local v6, "divider":Landroid/graphics/drawable/Drawable;
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/ListViewCompat;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    .line 281
    .local v2, "adapter":Landroid/widget/ListAdapter;
    if-nez v2, :cond_1

    .line 282
    add-int v15, v14, v11

    .line 351
    :cond_0
    :goto_0
    return v15

    .line 286
    :cond_1
    add-int v17, v14, v11

    .line 287
    .local v17, "returnedHeight":I
    if-lez v16, :cond_6

    if-eqz v6, :cond_6

    move/from16 v7, v16

    .line 292
    .local v7, "dividerHeight":I
    :goto_1
    const/4 v15, 0x0

    .line 294
    .local v15, "prevHeightWithoutPartialChild":I
    const/4 v3, 0x0

    .line 295
    .local v3, "child":Landroid/view/View;
    const/16 v18, 0x0

    .line 296
    .local v18, "viewType":I
    invoke-interface {v2}, Landroid/widget/ListAdapter;->getCount()I

    move-result v5

    .line 297
    .local v5, "count":I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_2
    if-ge v9, v5, :cond_a

    .line 298
    invoke-interface {v2, v9}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v10

    .line 299
    .local v10, "newType":I
    move/from16 v0, v18

    if-eq v10, v0, :cond_2

    .line 300
    const/4 v3, 0x0

    .line 301
    move/from16 v18, v10

    .line 303
    :cond_2
    move-object/from16 v0, p0

    invoke-interface {v2, v9, v3, v0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 307
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    .line 309
    .local v4, "childLp":Landroid/view/ViewGroup$LayoutParams;
    if-nez v4, :cond_3

    .line 310
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/ListViewCompat;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    .line 311
    invoke-virtual {v3, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 314
    :cond_3
    iget v0, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v19, v0

    if-lez v19, :cond_7

    .line 315
    iget v0, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v19, v0

    const/high16 v20, 0x40000000    # 2.0f

    invoke-static/range {v19 .. v20}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    .line 320
    .local v8, "heightMeasureSpec":I
    :goto_3
    move/from16 v0, p1

    invoke-virtual {v3, v0, v8}, Landroid/view/View;->measure(II)V

    .line 324
    invoke-virtual {v3}, Landroid/view/View;->forceLayout()V

    .line 326
    if-lez v9, :cond_4

    .line 328
    add-int v17, v17, v7

    .line 331
    :cond_4
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v19

    add-int v17, v17, v19

    .line 333
    move/from16 v0, v17

    move/from16 v1, p4

    if-lt v0, v1, :cond_8

    .line 336
    if-ltz p5, :cond_5

    move/from16 v0, p5

    if-le v9, v0, :cond_5

    if-lez v15, :cond_5

    move/from16 v0, v17

    move/from16 v1, p4

    if-ne v0, v1, :cond_0

    :cond_5
    move/from16 v15, p4

    goto :goto_0

    .line 287
    .end local v3    # "child":Landroid/view/View;
    .end local v4    # "childLp":Landroid/view/ViewGroup$LayoutParams;
    .end local v5    # "count":I
    .end local v7    # "dividerHeight":I
    .end local v8    # "heightMeasureSpec":I
    .end local v9    # "i":I
    .end local v10    # "newType":I
    .end local v15    # "prevHeightWithoutPartialChild":I
    .end local v18    # "viewType":I
    :cond_6
    const/4 v7, 0x0

    goto :goto_1

    .line 318
    .restart local v3    # "child":Landroid/view/View;
    .restart local v4    # "childLp":Landroid/view/ViewGroup$LayoutParams;
    .restart local v5    # "count":I
    .restart local v7    # "dividerHeight":I
    .restart local v9    # "i":I
    .restart local v10    # "newType":I
    .restart local v15    # "prevHeightWithoutPartialChild":I
    .restart local v18    # "viewType":I
    :cond_7
    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-static/range {v19 .. v20}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    .restart local v8    # "heightMeasureSpec":I
    goto :goto_3

    .line 344
    :cond_8
    if-ltz p5, :cond_9

    move/from16 v0, p5

    if-lt v9, v0, :cond_9

    .line 345
    move/from16 v15, v17

    .line 297
    :cond_9
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .end local v4    # "childLp":Landroid/view/ViewGroup$LayoutParams;
    .end local v8    # "heightMeasureSpec":I
    .end local v10    # "newType":I
    :cond_a
    move/from16 v15, v17

    .line 351
    goto/16 :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 115
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 120
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 117
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p0, v0, v1}, Landroid/support/v7/widget/ListViewCompat;->pointToPosition(II)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/ListViewCompat;->mMotionPosition:I

    goto :goto_0

    .line 115
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method protected positionSelectorCompat(ILandroid/view/View;)V
    .locals 7
    .param p1, "position"    # I
    .param p2, "sel"    # Landroid/view/View;

    .prologue
    .line 218
    iget-object v2, p0, Landroid/support/v7/widget/ListViewCompat;->mSelectorRect:Landroid/graphics/Rect;

    .line 219
    .local v2, "selectorRect":Landroid/graphics/Rect;
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v3

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v4

    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result v5

    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v6

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 222
    iget v3, v2, Landroid/graphics/Rect;->left:I

    iget v4, p0, Landroid/support/v7/widget/ListViewCompat;->mSelectionLeftPadding:I

    sub-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->left:I

    .line 223
    iget v3, v2, Landroid/graphics/Rect;->top:I

    iget v4, p0, Landroid/support/v7/widget/ListViewCompat;->mSelectionTopPadding:I

    sub-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->top:I

    .line 224
    iget v3, v2, Landroid/graphics/Rect;->right:I

    iget v4, p0, Landroid/support/v7/widget/ListViewCompat;->mSelectionRightPadding:I

    add-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->right:I

    .line 225
    iget v3, v2, Landroid/graphics/Rect;->bottom:I

    iget v4, p0, Landroid/support/v7/widget/ListViewCompat;->mSelectionBottomPadding:I

    add-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    .line 230
    :try_start_0
    iget-object v3, p0, Landroid/support/v7/widget/ListViewCompat;->mIsChildViewEnabled:Ljava/lang/reflect/Field;

    invoke-virtual {v3, p0}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v1

    .line 231
    .local v1, "isChildViewEnabled":Z
    invoke-virtual {p2}, Landroid/view/View;->isEnabled()Z

    move-result v3

    if-eq v3, v1, :cond_0

    .line 232
    iget-object v4, p0, Landroid/support/v7/widget/ListViewCompat;->mIsChildViewEnabled:Ljava/lang/reflect/Field;

    if-nez v1, :cond_1

    const/4 v3, 0x1

    :goto_0
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v4, p0, v3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 233
    const/4 v3, -0x1

    if-eq p1, v3, :cond_0

    .line 234
    invoke-virtual {p0}, Landroid/support/v7/widget/ListViewCompat;->refreshDrawableState()V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 240
    .end local v1    # "isChildViewEnabled":Z
    :cond_0
    :goto_1
    return-void

    .line 232
    .restart local v1    # "isChildViewEnabled":Z
    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    .line 237
    .end local v1    # "isChildViewEnabled":Z
    :catch_0
    move-exception v0

    .line 238
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_1
.end method

.method protected positionSelectorLikeFocusCompat(ILandroid/view/View;)V
    .locals 8
    .param p1, "position"    # I
    .param p2, "sel"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 200
    invoke-virtual {p0}, Landroid/support/v7/widget/ListViewCompat;->getSelector()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 201
    .local v2, "selector":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_2

    const/4 v7, -0x1

    if-eq p1, v7, :cond_2

    move v1, v5

    .line 202
    .local v1, "manageState":Z
    :goto_0
    if-eqz v1, :cond_0

    .line 203
    invoke-virtual {v2, v6, v6}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 206
    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/support/v7/widget/ListViewCompat;->positionSelectorCompat(ILandroid/view/View;)V

    .line 208
    if-eqz v1, :cond_1

    .line 209
    iget-object v0, p0, Landroid/support/v7/widget/ListViewCompat;->mSelectorRect:Landroid/graphics/Rect;

    .line 210
    .local v0, "bounds":Landroid/graphics/Rect;
    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v3

    .line 211
    .local v3, "x":F
    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v4

    .line 212
    .local v4, "y":F
    invoke-virtual {p0}, Landroid/support/v7/widget/ListViewCompat;->getVisibility()I

    move-result v7

    if-nez v7, :cond_3

    :goto_1
    invoke-virtual {v2, v5, v6}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 213
    invoke-static {v2, v3, v4}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setHotspot(Landroid/graphics/drawable/Drawable;FF)V

    .line 215
    .end local v0    # "bounds":Landroid/graphics/Rect;
    .end local v3    # "x":F
    .end local v4    # "y":F
    :cond_1
    return-void

    .end local v1    # "manageState":Z
    :cond_2
    move v1, v6

    .line 201
    goto :goto_0

    .restart local v0    # "bounds":Landroid/graphics/Rect;
    .restart local v1    # "manageState":Z
    .restart local v3    # "x":F
    .restart local v4    # "y":F
    :cond_3
    move v5, v6

    .line 212
    goto :goto_1
.end method

.method protected positionSelectorLikeTouchCompat(ILandroid/view/View;FF)V
    .locals 2
    .param p1, "position"    # I
    .param p2, "sel"    # Landroid/view/View;
    .param p3, "x"    # F
    .param p4, "y"    # F

    .prologue
    .line 189
    invoke-virtual {p0, p1, p2}, Landroid/support/v7/widget/ListViewCompat;->positionSelectorLikeFocusCompat(ILandroid/view/View;)V

    .line 191
    invoke-virtual {p0}, Landroid/support/v7/widget/ListViewCompat;->getSelector()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 192
    .local v0, "selector":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    const/4 v1, -0x1

    if-eq p1, v1, :cond_0

    .line 193
    invoke-static {v0, p3, p4}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setHotspot(Landroid/graphics/drawable/Drawable;FF)V

    .line 195
    :cond_0
    return-void
.end method

.method public setSelector(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "sel"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 81
    if-eqz p1, :cond_1

    new-instance v1, Landroid/support/v7/widget/ListViewCompat$GateKeeperDrawable;

    invoke-direct {v1, p1}, Landroid/support/v7/widget/ListViewCompat$GateKeeperDrawable;-><init>(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    iput-object v1, p0, Landroid/support/v7/widget/ListViewCompat;->mSelector:Landroid/support/v7/widget/ListViewCompat$GateKeeperDrawable;

    .line 82
    iget-object v1, p0, Landroid/support/v7/widget/ListViewCompat;->mSelector:Landroid/support/v7/widget/ListViewCompat$GateKeeperDrawable;

    invoke-super {p0, v1}, Landroid/widget/ListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 84
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 85
    .local v0, "padding":Landroid/graphics/Rect;
    if-eqz p1, :cond_0

    .line 86
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 89
    :cond_0
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iput v1, p0, Landroid/support/v7/widget/ListViewCompat;->mSelectionLeftPadding:I

    .line 90
    iget v1, v0, Landroid/graphics/Rect;->top:I

    iput v1, p0, Landroid/support/v7/widget/ListViewCompat;->mSelectionTopPadding:I

    .line 91
    iget v1, v0, Landroid/graphics/Rect;->right:I

    iput v1, p0, Landroid/support/v7/widget/ListViewCompat;->mSelectionRightPadding:I

    .line 92
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iput v1, p0, Landroid/support/v7/widget/ListViewCompat;->mSelectionBottomPadding:I

    .line 93
    return-void

    .line 81
    .end local v0    # "padding":Landroid/graphics/Rect;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected setSelectorEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 355
    iget-object v0, p0, Landroid/support/v7/widget/ListViewCompat;->mSelector:Landroid/support/v7/widget/ListViewCompat$GateKeeperDrawable;

    if-eqz v0, :cond_0

    .line 356
    iget-object v0, p0, Landroid/support/v7/widget/ListViewCompat;->mSelector:Landroid/support/v7/widget/ListViewCompat$GateKeeperDrawable;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/ListViewCompat$GateKeeperDrawable;->setEnabled(Z)V

    .line 358
    :cond_0
    return-void
.end method

.method protected shouldShowSelectorCompat()Z
    .locals 1

    .prologue
    .line 131
    invoke-virtual {p0}, Landroid/support/v7/widget/ListViewCompat;->touchModeDrawsInPressedStateCompat()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/widget/ListViewCompat;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected touchModeDrawsInPressedStateCompat()Z
    .locals 1

    .prologue
    .line 135
    const/4 v0, 0x0

    return v0
.end method

.method protected updateSelectorStateCompat()V
    .locals 2

    .prologue
    .line 124
    invoke-virtual {p0}, Landroid/support/v7/widget/ListViewCompat;->getSelector()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 125
    .local v0, "selector":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/widget/ListViewCompat;->shouldShowSelectorCompat()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 126
    invoke-virtual {p0}, Landroid/support/v7/widget/ListViewCompat;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 128
    :cond_0
    return-void
.end method
