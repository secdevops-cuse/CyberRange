.class public Landroid/support/v7/widget/Toolbar;
.super Landroid/view/ViewGroup;
.source "Toolbar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;,
        Landroid/support/v7/widget/Toolbar$SavedState;,
        Landroid/support/v7/widget/Toolbar$LayoutParams;,
        Landroid/support/v7/widget/Toolbar$OnMenuItemClickListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Toolbar"


# instance fields
.field private mActionMenuPresenterCallback:Landroid/support/v7/view/menu/MenuPresenter$Callback;

.field private mButtonGravity:I

.field private mCollapseButtonView:Landroid/widget/ImageButton;

.field private mCollapseDescription:Ljava/lang/CharSequence;

.field private mCollapseIcon:Landroid/graphics/drawable/Drawable;

.field private mCollapsible:Z

.field private final mContentInsets:Landroid/support/v7/widget/RtlSpacingHelper;

.field private mEatingHover:Z

.field private mEatingTouch:Z

.field mExpandedActionView:Landroid/view/View;

.field private mExpandedMenuPresenter:Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;

.field private mGravity:I

.field private final mHiddenViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mLogoView:Landroid/widget/ImageView;

.field private mMaxButtonHeight:I

.field private mMenuBuilderCallback:Landroid/support/v7/view/menu/MenuBuilder$Callback;

.field private mMenuView:Landroid/support/v7/widget/ActionMenuView;

.field private final mMenuViewItemClickListener:Landroid/support/v7/widget/ActionMenuView$OnMenuItemClickListener;

.field private mNavButtonView:Landroid/widget/ImageButton;

.field private mOnMenuItemClickListener:Landroid/support/v7/widget/Toolbar$OnMenuItemClickListener;

.field private mOuterActionMenuPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

.field private mPopupContext:Landroid/content/Context;

.field private mPopupTheme:I

.field private final mShowOverflowMenuRunnable:Ljava/lang/Runnable;

.field private mSubtitleText:Ljava/lang/CharSequence;

.field private mSubtitleTextAppearance:I

.field private mSubtitleTextColor:I

.field private mSubtitleTextView:Landroid/widget/TextView;

.field private final mTempMargins:[I

.field private final mTempViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final mTintManager:Landroid/support/v7/widget/TintManager;

.field private mTitleMarginBottom:I

.field private mTitleMarginEnd:I

.field private mTitleMarginStart:I

.field private mTitleMarginTop:I

.field private mTitleText:Ljava/lang/CharSequence;

.field private mTitleTextAppearance:I

.field private mTitleTextColor:I

.field private mTitleTextView:Landroid/widget/TextView;

.field private mWrapper:Landroid/support/v7/widget/ToolbarWidgetWrapper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 195
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/Toolbar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 196
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 199
    sget v0, Landroid/support/v7/appcompat/R$attr;->toolbarStyle:I

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/Toolbar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 200
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 23
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 203
    invoke-direct/range {p0 .. p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 144
    new-instance v20, Landroid/support/v7/widget/RtlSpacingHelper;

    invoke-direct/range {v20 .. v20}, Landroid/support/v7/widget/RtlSpacingHelper;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/support/v7/widget/Toolbar;->mContentInsets:Landroid/support/v7/widget/RtlSpacingHelper;

    .line 146
    const v20, 0x800013

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/support/v7/widget/Toolbar;->mGravity:I

    .line 158
    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/support/v7/widget/Toolbar;->mTempViews:Ljava/util/ArrayList;

    .line 161
    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/support/v7/widget/Toolbar;->mHiddenViews:Ljava/util/ArrayList;

    .line 163
    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [I

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/support/v7/widget/Toolbar;->mTempMargins:[I

    .line 167
    new-instance v20, Landroid/support/v7/widget/Toolbar$1;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/support/v7/widget/Toolbar$1;-><init>(Landroid/support/v7/widget/Toolbar;)V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/support/v7/widget/Toolbar;->mMenuViewItemClickListener:Landroid/support/v7/widget/ActionMenuView$OnMenuItemClickListener;

    .line 186
    new-instance v20, Landroid/support/v7/widget/Toolbar$2;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/support/v7/widget/Toolbar$2;-><init>(Landroid/support/v7/widget/Toolbar;)V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/support/v7/widget/Toolbar;->mShowOverflowMenuRunnable:Ljava/lang/Runnable;

    .line 206
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v20

    sget-object v21, Landroid/support/v7/appcompat/R$styleable;->Toolbar:[I

    const/16 v22, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p2

    move-object/from16 v2, v21

    move/from16 v3, p3

    move/from16 v4, v22

    invoke-static {v0, v1, v2, v3, v4}, Landroid/support/v7/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroid/support/v7/widget/TintTypedArray;

    move-result-object v5

    .line 209
    .local v5, "a":Landroid/support/v7/widget/TintTypedArray;
    sget v20, Landroid/support/v7/appcompat/R$styleable;->Toolbar_titleTextAppearance:I

    const/16 v21, 0x0

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v5, v0, v1}, Landroid/support/v7/widget/TintTypedArray;->getResourceId(II)I

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/support/v7/widget/Toolbar;->mTitleTextAppearance:I

    .line 210
    sget v20, Landroid/support/v7/appcompat/R$styleable;->Toolbar_subtitleTextAppearance:I

    const/16 v21, 0x0

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v5, v0, v1}, Landroid/support/v7/widget/TintTypedArray;->getResourceId(II)I

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/support/v7/widget/Toolbar;->mSubtitleTextAppearance:I

    .line 211
    sget v20, Landroid/support/v7/appcompat/R$styleable;->Toolbar_android_gravity:I

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v7/widget/Toolbar;->mGravity:I

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v5, v0, v1}, Landroid/support/v7/widget/TintTypedArray;->getInteger(II)I

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/support/v7/widget/Toolbar;->mGravity:I

    .line 212
    const/16 v20, 0x30

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/support/v7/widget/Toolbar;->mButtonGravity:I

    .line 213
    sget v20, Landroid/support/v7/appcompat/R$styleable;->Toolbar_titleMargins:I

    const/16 v21, 0x0

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v5, v0, v1}, Landroid/support/v7/widget/TintTypedArray;->getDimensionPixelOffset(II)I

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/support/v7/widget/Toolbar;->mTitleMarginBottom:I

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/support/v7/widget/Toolbar;->mTitleMarginTop:I

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/support/v7/widget/Toolbar;->mTitleMarginEnd:I

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/support/v7/widget/Toolbar;->mTitleMarginStart:I

    .line 216
    sget v20, Landroid/support/v7/appcompat/R$styleable;->Toolbar_titleMarginStart:I

    const/16 v21, -0x1

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v5, v0, v1}, Landroid/support/v7/widget/TintTypedArray;->getDimensionPixelOffset(II)I

    move-result v14

    .line 217
    .local v14, "marginStart":I
    if-ltz v14, :cond_0

    .line 218
    move-object/from16 v0, p0

    iput v14, v0, Landroid/support/v7/widget/Toolbar;->mTitleMarginStart:I

    .line 221
    :cond_0
    sget v20, Landroid/support/v7/appcompat/R$styleable;->Toolbar_titleMarginEnd:I

    const/16 v21, -0x1

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v5, v0, v1}, Landroid/support/v7/widget/TintTypedArray;->getDimensionPixelOffset(II)I

    move-result v13

    .line 222
    .local v13, "marginEnd":I
    if-ltz v13, :cond_1

    .line 223
    move-object/from16 v0, p0

    iput v13, v0, Landroid/support/v7/widget/Toolbar;->mTitleMarginEnd:I

    .line 226
    :cond_1
    sget v20, Landroid/support/v7/appcompat/R$styleable;->Toolbar_titleMarginTop:I

    const/16 v21, -0x1

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v5, v0, v1}, Landroid/support/v7/widget/TintTypedArray;->getDimensionPixelOffset(II)I

    move-result v15

    .line 227
    .local v15, "marginTop":I
    if-ltz v15, :cond_2

    .line 228
    move-object/from16 v0, p0

    iput v15, v0, Landroid/support/v7/widget/Toolbar;->mTitleMarginTop:I

    .line 231
    :cond_2
    sget v20, Landroid/support/v7/appcompat/R$styleable;->Toolbar_titleMarginBottom:I

    const/16 v21, -0x1

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v5, v0, v1}, Landroid/support/v7/widget/TintTypedArray;->getDimensionPixelOffset(II)I

    move-result v12

    .line 233
    .local v12, "marginBottom":I
    if-ltz v12, :cond_3

    .line 234
    move-object/from16 v0, p0

    iput v12, v0, Landroid/support/v7/widget/Toolbar;->mTitleMarginBottom:I

    .line 237
    :cond_3
    sget v20, Landroid/support/v7/appcompat/R$styleable;->Toolbar_maxButtonHeight:I

    const/16 v21, -0x1

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v5, v0, v1}, Landroid/support/v7/widget/TintTypedArray;->getDimensionPixelSize(II)I

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/support/v7/widget/Toolbar;->mMaxButtonHeight:I

    .line 239
    sget v20, Landroid/support/v7/appcompat/R$styleable;->Toolbar_contentInsetStart:I

    const/high16 v21, -0x80000000

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v5, v0, v1}, Landroid/support/v7/widget/TintTypedArray;->getDimensionPixelOffset(II)I

    move-result v9

    .line 242
    .local v9, "contentInsetStart":I
    sget v20, Landroid/support/v7/appcompat/R$styleable;->Toolbar_contentInsetEnd:I

    const/high16 v21, -0x80000000

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v5, v0, v1}, Landroid/support/v7/widget/TintTypedArray;->getDimensionPixelOffset(II)I

    move-result v6

    .line 245
    .local v6, "contentInsetEnd":I
    sget v20, Landroid/support/v7/appcompat/R$styleable;->Toolbar_contentInsetLeft:I

    const/16 v21, 0x0

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v5, v0, v1}, Landroid/support/v7/widget/TintTypedArray;->getDimensionPixelSize(II)I

    move-result v7

    .line 247
    .local v7, "contentInsetLeft":I
    sget v20, Landroid/support/v7/appcompat/R$styleable;->Toolbar_contentInsetRight:I

    const/16 v21, 0x0

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v5, v0, v1}, Landroid/support/v7/widget/TintTypedArray;->getDimensionPixelSize(II)I

    move-result v8

    .line 250
    .local v8, "contentInsetRight":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mContentInsets:Landroid/support/v7/widget/RtlSpacingHelper;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v7, v8}, Landroid/support/v7/widget/RtlSpacingHelper;->setAbsolute(II)V

    .line 252
    const/high16 v20, -0x80000000

    move/from16 v0, v20

    if-ne v9, v0, :cond_4

    const/high16 v20, -0x80000000

    move/from16 v0, v20

    if-eq v6, v0, :cond_5

    .line 254
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mContentInsets:Landroid/support/v7/widget/RtlSpacingHelper;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v9, v6}, Landroid/support/v7/widget/RtlSpacingHelper;->setRelative(II)V

    .line 257
    :cond_5
    sget v20, Landroid/support/v7/appcompat/R$styleable;->Toolbar_collapseIcon:I

    move/from16 v0, v20

    invoke-virtual {v5, v0}, Landroid/support/v7/widget/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/support/v7/widget/Toolbar;->mCollapseIcon:Landroid/graphics/drawable/Drawable;

    .line 258
    sget v20, Landroid/support/v7/appcompat/R$styleable;->Toolbar_collapseContentDescription:I

    move/from16 v0, v20

    invoke-virtual {v5, v0}, Landroid/support/v7/widget/TintTypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/support/v7/widget/Toolbar;->mCollapseDescription:Ljava/lang/CharSequence;

    .line 260
    sget v20, Landroid/support/v7/appcompat/R$styleable;->Toolbar_title:I

    move/from16 v0, v20

    invoke-virtual {v5, v0}, Landroid/support/v7/widget/TintTypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v19

    .line 261
    .local v19, "title":Ljava/lang/CharSequence;
    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_6

    .line 262
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 265
    :cond_6
    sget v20, Landroid/support/v7/appcompat/R$styleable;->Toolbar_subtitle:I

    move/from16 v0, v20

    invoke-virtual {v5, v0}, Landroid/support/v7/widget/TintTypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v18

    .line 266
    .local v18, "subtitle":Ljava/lang/CharSequence;
    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_7

    .line 267
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 270
    :cond_7
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/support/v7/widget/Toolbar;->mPopupContext:Landroid/content/Context;

    .line 271
    sget v20, Landroid/support/v7/appcompat/R$styleable;->Toolbar_popupTheme:I

    const/16 v21, 0x0

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v5, v0, v1}, Landroid/support/v7/widget/TintTypedArray;->getResourceId(II)I

    move-result v20

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setPopupTheme(I)V

    .line 273
    sget v20, Landroid/support/v7/appcompat/R$styleable;->Toolbar_navigationIcon:I

    move/from16 v0, v20

    invoke-virtual {v5, v0}, Landroid/support/v7/widget/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v17

    .line 274
    .local v17, "navIcon":Landroid/graphics/drawable/Drawable;
    if-eqz v17, :cond_8

    .line 275
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    .line 277
    :cond_8
    sget v20, Landroid/support/v7/appcompat/R$styleable;->Toolbar_navigationContentDescription:I

    move/from16 v0, v20

    invoke-virtual {v5, v0}, Landroid/support/v7/widget/TintTypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v16

    .line 278
    .local v16, "navDesc":Ljava/lang/CharSequence;
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_9

    .line 279
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setNavigationContentDescription(Ljava/lang/CharSequence;)V

    .line 282
    :cond_9
    sget v20, Landroid/support/v7/appcompat/R$styleable;->Toolbar_logo:I

    move/from16 v0, v20

    invoke-virtual {v5, v0}, Landroid/support/v7/widget/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    .line 283
    .local v10, "logo":Landroid/graphics/drawable/Drawable;
    if-eqz v10, :cond_a

    .line 284
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Landroid/support/v7/widget/Toolbar;->setLogo(Landroid/graphics/drawable/Drawable;)V

    .line 287
    :cond_a
    sget v20, Landroid/support/v7/appcompat/R$styleable;->Toolbar_logoDescription:I

    move/from16 v0, v20

    invoke-virtual {v5, v0}, Landroid/support/v7/widget/TintTypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v11

    .line 288
    .local v11, "logoDesc":Ljava/lang/CharSequence;
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_b

    .line 289
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Landroid/support/v7/widget/Toolbar;->setLogoDescription(Ljava/lang/CharSequence;)V

    .line 292
    :cond_b
    sget v20, Landroid/support/v7/appcompat/R$styleable;->Toolbar_titleTextColor:I

    move/from16 v0, v20

    invoke-virtual {v5, v0}, Landroid/support/v7/widget/TintTypedArray;->hasValue(I)Z

    move-result v20

    if-eqz v20, :cond_c

    .line 293
    sget v20, Landroid/support/v7/appcompat/R$styleable;->Toolbar_titleTextColor:I

    const/16 v21, -0x1

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v5, v0, v1}, Landroid/support/v7/widget/TintTypedArray;->getColor(II)I

    move-result v20

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setTitleTextColor(I)V

    .line 296
    :cond_c
    sget v20, Landroid/support/v7/appcompat/R$styleable;->Toolbar_subtitleTextColor:I

    move/from16 v0, v20

    invoke-virtual {v5, v0}, Landroid/support/v7/widget/TintTypedArray;->hasValue(I)Z

    move-result v20

    if-eqz v20, :cond_d

    .line 297
    sget v20, Landroid/support/v7/appcompat/R$styleable;->Toolbar_subtitleTextColor:I

    const/16 v21, -0x1

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v5, v0, v1}, Landroid/support/v7/widget/TintTypedArray;->getColor(II)I

    move-result v20

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setSubtitleTextColor(I)V

    .line 299
    :cond_d
    invoke-virtual {v5}, Landroid/support/v7/widget/TintTypedArray;->recycle()V

    .line 302
    invoke-virtual {v5}, Landroid/support/v7/widget/TintTypedArray;->getTintManager()Landroid/support/v7/widget/TintManager;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/support/v7/widget/Toolbar;->mTintManager:Landroid/support/v7/widget/TintManager;

    .line 303
    return-void
.end method

.method static synthetic access$000(Landroid/support/v7/widget/Toolbar;)Landroid/support/v7/widget/Toolbar$OnMenuItemClickListener;
    .locals 1
    .param p0, "x0"    # Landroid/support/v7/widget/Toolbar;

    .prologue
    .line 112
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mOnMenuItemClickListener:Landroid/support/v7/widget/Toolbar$OnMenuItemClickListener;

    return-object v0
.end method

.method static synthetic access$200(Landroid/support/v7/widget/Toolbar;)V
    .locals 0
    .param p0, "x0"    # Landroid/support/v7/widget/Toolbar;

    .prologue
    .line 112
    invoke-direct {p0}, Landroid/support/v7/widget/Toolbar;->ensureCollapseButtonView()V

    return-void
.end method

.method static synthetic access$300(Landroid/support/v7/widget/Toolbar;)Landroid/widget/ImageButton;
    .locals 1
    .param p0, "x0"    # Landroid/support/v7/widget/Toolbar;

    .prologue
    .line 112
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$400(Landroid/support/v7/widget/Toolbar;)I
    .locals 1
    .param p0, "x0"    # Landroid/support/v7/widget/Toolbar;

    .prologue
    .line 112
    iget v0, p0, Landroid/support/v7/widget/Toolbar;->mButtonGravity:I

    return v0
.end method

.method private addCustomViewsWithGravity(Ljava/util/List;I)V
    .locals 7
    .param p2, "gravity"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .local p1, "views":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    const/4 v4, 0x1

    .line 1687
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v6

    if-ne v6, v4, :cond_1

    .line 1688
    .local v4, "isRtl":Z
    :goto_0
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getChildCount()I

    move-result v2

    .line 1689
    .local v2, "childCount":I
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v6

    invoke-static {p2, v6}, Landroid/support/v4/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v0

    .line 1692
    .local v0, "absGrav":I
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 1694
    if-eqz v4, :cond_2

    .line 1695
    add-int/lit8 v3, v2, -0x1

    .local v3, "i":I
    :goto_1
    if-ltz v3, :cond_4

    .line 1696
    invoke-virtual {p0, v3}, Landroid/support/v7/widget/Toolbar;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1697
    .local v1, "child":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/support/v7/widget/Toolbar$LayoutParams;

    .line 1698
    .local v5, "lp":Landroid/support/v7/widget/Toolbar$LayoutParams;
    iget v6, v5, Landroid/support/v7/widget/Toolbar$LayoutParams;->mViewType:I

    if-nez v6, :cond_0

    invoke-direct {p0, v1}, Landroid/support/v7/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_0

    iget v6, v5, Landroid/support/v7/widget/Toolbar$LayoutParams;->gravity:I

    invoke-direct {p0, v6}, Landroid/support/v7/widget/Toolbar;->getChildHorizontalGravity(I)I

    move-result v6

    if-ne v6, v0, :cond_0

    .line 1700
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1695
    :cond_0
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 1687
    .end local v0    # "absGrav":I
    .end local v1    # "child":Landroid/view/View;
    .end local v2    # "childCount":I
    .end local v3    # "i":I
    .end local v4    # "isRtl":Z
    .end local v5    # "lp":Landroid/support/v7/widget/Toolbar$LayoutParams;
    :cond_1
    const/4 v4, 0x0

    goto :goto_0

    .line 1704
    .restart local v0    # "absGrav":I
    .restart local v2    # "childCount":I
    .restart local v4    # "isRtl":Z
    :cond_2
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_2
    if-ge v3, v2, :cond_4

    .line 1705
    invoke-virtual {p0, v3}, Landroid/support/v7/widget/Toolbar;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1706
    .restart local v1    # "child":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/support/v7/widget/Toolbar$LayoutParams;

    .line 1707
    .restart local v5    # "lp":Landroid/support/v7/widget/Toolbar$LayoutParams;
    iget v6, v5, Landroid/support/v7/widget/Toolbar$LayoutParams;->mViewType:I

    if-nez v6, :cond_3

    invoke-direct {p0, v1}, Landroid/support/v7/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_3

    iget v6, v5, Landroid/support/v7/widget/Toolbar$LayoutParams;->gravity:I

    invoke-direct {p0, v6}, Landroid/support/v7/widget/Toolbar;->getChildHorizontalGravity(I)I

    move-result v6

    if-ne v6, v0, :cond_3

    .line 1709
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1704
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1713
    .end local v1    # "child":Landroid/view/View;
    .end local v5    # "lp":Landroid/support/v7/widget/Toolbar$LayoutParams;
    :cond_4
    return-void
.end method

.method private addSystemView(Landroid/view/View;Z)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "allowHide"    # Z

    .prologue
    .line 1064
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 1066
    .local v1, "vlp":Landroid/view/ViewGroup$LayoutParams;
    if-nez v1, :cond_0

    .line 1067
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->generateDefaultLayoutParams()Landroid/support/v7/widget/Toolbar$LayoutParams;

    move-result-object v0

    .line 1073
    .local v0, "lp":Landroid/support/v7/widget/Toolbar$LayoutParams;
    :goto_0
    const/4 v2, 0x1

    iput v2, v0, Landroid/support/v7/widget/Toolbar$LayoutParams;->mViewType:I

    .line 1075
    if-eqz p2, :cond_2

    iget-object v2, p0, Landroid/support/v7/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    if-eqz v2, :cond_2

    .line 1076
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1077
    iget-object v2, p0, Landroid/support/v7/widget/Toolbar;->mHiddenViews:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1081
    :goto_1
    return-void

    .line 1068
    .end local v0    # "lp":Landroid/support/v7/widget/Toolbar$LayoutParams;
    :cond_0
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/Toolbar;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1069
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/Toolbar;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/support/v7/widget/Toolbar$LayoutParams;

    move-result-object v0

    .restart local v0    # "lp":Landroid/support/v7/widget/Toolbar$LayoutParams;
    goto :goto_0

    .end local v0    # "lp":Landroid/support/v7/widget/Toolbar$LayoutParams;
    :cond_1
    move-object v0, v1

    .line 1071
    check-cast v0, Landroid/support/v7/widget/Toolbar$LayoutParams;

    .restart local v0    # "lp":Landroid/support/v7/widget/Toolbar$LayoutParams;
    goto :goto_0

    .line 1079
    :cond_2
    invoke-virtual {p0, p1, v0}, Landroid/support/v7/widget/Toolbar;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1
.end method

.method private ensureCollapseButtonView()V
    .locals 5

    .prologue
    .line 1045
    iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    if-nez v1, :cond_0

    .line 1046
    new-instance v1, Landroid/widget/ImageButton;

    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    sget v4, Landroid/support/v7/appcompat/R$attr;->toolbarNavigationButtonStyle:I

    invoke-direct {v1, v2, v3, v4}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v1, p0, Landroid/support/v7/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    .line 1048
    iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    iget-object v2, p0, Landroid/support/v7/widget/Toolbar;->mCollapseIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1049
    iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    iget-object v2, p0, Landroid/support/v7/widget/Toolbar;->mCollapseDescription:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1050
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->generateDefaultLayoutParams()Landroid/support/v7/widget/Toolbar$LayoutParams;

    move-result-object v0

    .line 1051
    .local v0, "lp":Landroid/support/v7/widget/Toolbar$LayoutParams;
    const v1, 0x800003

    iget v2, p0, Landroid/support/v7/widget/Toolbar;->mButtonGravity:I

    and-int/lit8 v2, v2, 0x70

    or-int/2addr v1, v2

    iput v1, v0, Landroid/support/v7/widget/Toolbar$LayoutParams;->gravity:I

    .line 1052
    const/4 v1, 0x2

    iput v1, v0, Landroid/support/v7/widget/Toolbar$LayoutParams;->mViewType:I

    .line 1053
    iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1054
    iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    new-instance v2, Landroid/support/v7/widget/Toolbar$3;

    invoke-direct {v2, p0}, Landroid/support/v7/widget/Toolbar$3;-><init>(Landroid/support/v7/widget/Toolbar;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1061
    .end local v0    # "lp":Landroid/support/v7/widget/Toolbar$LayoutParams;
    :cond_0
    return-void
.end method

.method private ensureLogoView()V
    .locals 2

    .prologue
    .line 529
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 530
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/support/v7/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    .line 532
    :cond_0
    return-void
.end method

.method private ensureMenu()V
    .locals 3

    .prologue
    .line 865
    invoke-direct {p0}, Landroid/support/v7/widget/Toolbar;->ensureMenuView()V

    .line 866
    iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    invoke-virtual {v1}, Landroid/support/v7/widget/ActionMenuView;->peekMenu()Landroid/support/v7/view/menu/MenuBuilder;

    move-result-object v1

    if-nez v1, :cond_1

    .line 868
    iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    invoke-virtual {v1}, Landroid/support/v7/widget/ActionMenuView;->getMenu()Landroid/view/Menu;

    move-result-object v0

    check-cast v0, Landroid/support/v7/view/menu/MenuBuilder;

    .line 869
    .local v0, "menu":Landroid/support/v7/view/menu/MenuBuilder;
    iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->mExpandedMenuPresenter:Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;

    if-nez v1, :cond_0

    .line 870
    new-instance v1, Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;-><init>(Landroid/support/v7/widget/Toolbar;Landroid/support/v7/widget/Toolbar$1;)V

    iput-object v1, p0, Landroid/support/v7/widget/Toolbar;->mExpandedMenuPresenter:Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;

    .line 872
    :cond_0
    iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/ActionMenuView;->setExpandedActionViewsExclusive(Z)V

    .line 873
    iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->mExpandedMenuPresenter:Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;

    iget-object v2, p0, Landroid/support/v7/widget/Toolbar;->mPopupContext:Landroid/content/Context;

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/view/menu/MenuBuilder;->addMenuPresenter(Landroid/support/v7/view/menu/MenuPresenter;Landroid/content/Context;)V

    .line 875
    .end local v0    # "menu":Landroid/support/v7/view/menu/MenuBuilder;
    :cond_1
    return-void
.end method

.method private ensureMenuView()V
    .locals 4

    .prologue
    .line 878
    iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    if-nez v1, :cond_0

    .line 879
    new-instance v1, Landroid/support/v7/widget/ActionMenuView;

    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/support/v7/widget/ActionMenuView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/support/v7/widget/Toolbar;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    .line 880
    iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    iget v2, p0, Landroid/support/v7/widget/Toolbar;->mPopupTheme:I

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/ActionMenuView;->setPopupTheme(I)V

    .line 881
    iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    iget-object v2, p0, Landroid/support/v7/widget/Toolbar;->mMenuViewItemClickListener:Landroid/support/v7/widget/ActionMenuView$OnMenuItemClickListener;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/ActionMenuView;->setOnMenuItemClickListener(Landroid/support/v7/widget/ActionMenuView$OnMenuItemClickListener;)V

    .line 882
    iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    iget-object v2, p0, Landroid/support/v7/widget/Toolbar;->mActionMenuPresenterCallback:Landroid/support/v7/view/menu/MenuPresenter$Callback;

    iget-object v3, p0, Landroid/support/v7/widget/Toolbar;->mMenuBuilderCallback:Landroid/support/v7/view/menu/MenuBuilder$Callback;

    invoke-virtual {v1, v2, v3}, Landroid/support/v7/widget/ActionMenuView;->setMenuCallbacks(Landroid/support/v7/view/menu/MenuPresenter$Callback;Landroid/support/v7/view/menu/MenuBuilder$Callback;)V

    .line 883
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->generateDefaultLayoutParams()Landroid/support/v7/widget/Toolbar$LayoutParams;

    move-result-object v0

    .line 884
    .local v0, "lp":Landroid/support/v7/widget/Toolbar$LayoutParams;
    const v1, 0x800005

    iget v2, p0, Landroid/support/v7/widget/Toolbar;->mButtonGravity:I

    and-int/lit8 v2, v2, 0x70

    or-int/2addr v1, v2

    iput v1, v0, Landroid/support/v7/widget/Toolbar$LayoutParams;->gravity:I

    .line 885
    iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/ActionMenuView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 886
    iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Landroid/support/v7/widget/Toolbar;->addSystemView(Landroid/view/View;Z)V

    .line 888
    .end local v0    # "lp":Landroid/support/v7/widget/Toolbar$LayoutParams;
    :cond_0
    return-void
.end method

.method private ensureNavButtonView()V
    .locals 5

    .prologue
    .line 1035
    iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    if-nez v1, :cond_0

    .line 1036
    new-instance v1, Landroid/widget/ImageButton;

    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    sget v4, Landroid/support/v7/appcompat/R$attr;->toolbarNavigationButtonStyle:I

    invoke-direct {v1, v2, v3, v4}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v1, p0, Landroid/support/v7/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    .line 1038
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->generateDefaultLayoutParams()Landroid/support/v7/widget/Toolbar$LayoutParams;

    move-result-object v0

    .line 1039
    .local v0, "lp":Landroid/support/v7/widget/Toolbar$LayoutParams;
    const v1, 0x800003

    iget v2, p0, Landroid/support/v7/widget/Toolbar;->mButtonGravity:I

    and-int/lit8 v2, v2, 0x70

    or-int/2addr v1, v2

    iput v1, v0, Landroid/support/v7/widget/Toolbar$LayoutParams;->gravity:I

    .line 1040
    iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1042
    .end local v0    # "lp":Landroid/support/v7/widget/Toolbar$LayoutParams;
    :cond_0
    return-void
.end method

.method private getChildHorizontalGravity(I)I
    .locals 4
    .param p1, "gravity"    # I

    .prologue
    .line 1716
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v2

    .line 1717
    .local v2, "ld":I
    invoke-static {p1, v2}, Landroid/support/v4/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v0

    .line 1718
    .local v0, "absGrav":I
    and-int/lit8 v1, v0, 0x7

    .line 1719
    .local v1, "hGrav":I
    packed-switch v1, :pswitch_data_0

    .line 1725
    :pswitch_0
    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    const/4 v3, 0x5

    :goto_0
    move v1, v3

    .end local v1    # "hGrav":I
    :pswitch_1
    return v1

    .restart local v1    # "hGrav":I
    :cond_0
    const/4 v3, 0x3

    goto :goto_0

    .line 1719
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getChildTop(Landroid/view/View;I)I
    .locals 11
    .param p1, "child"    # Landroid/view/View;
    .param p2, "alignmentHeight"    # I

    .prologue
    const/4 v9, 0x0

    .line 1636
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/support/v7/widget/Toolbar$LayoutParams;

    .line 1637
    .local v3, "lp":Landroid/support/v7/widget/Toolbar$LayoutParams;
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    .line 1638
    .local v1, "childHeight":I
    if-lez p2, :cond_1

    sub-int v10, v1, p2

    div-int/lit8 v0, v10, 0x2

    .line 1639
    .local v0, "alignmentOffset":I
    :goto_0
    iget v10, v3, Landroid/support/v7/widget/Toolbar$LayoutParams;->gravity:I

    invoke-direct {p0, v10}, Landroid/support/v7/widget/Toolbar;->getChildVerticalGravity(I)I

    move-result v10

    sparse-switch v10, :sswitch_data_0

    .line 1649
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getPaddingTop()I

    move-result v5

    .line 1650
    .local v5, "paddingTop":I
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getPaddingBottom()I

    move-result v4

    .line 1651
    .local v4, "paddingBottom":I
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getHeight()I

    move-result v2

    .line 1652
    .local v2, "height":I
    sub-int v10, v2, v5

    sub-int v6, v10, v4

    .line 1653
    .local v6, "space":I
    sub-int v10, v6, v1

    div-int/lit8 v7, v10, 0x2

    .line 1654
    .local v7, "spaceAbove":I
    iget v10, v3, Landroid/support/v7/widget/Toolbar$LayoutParams;->topMargin:I

    if-ge v7, v10, :cond_2

    .line 1655
    iget v7, v3, Landroid/support/v7/widget/Toolbar$LayoutParams;->topMargin:I

    .line 1663
    :cond_0
    :goto_1
    add-int v9, v5, v7

    .end local v2    # "height":I
    .end local v4    # "paddingBottom":I
    .end local v5    # "paddingTop":I
    .end local v6    # "space":I
    .end local v7    # "spaceAbove":I
    :goto_2
    return v9

    .end local v0    # "alignmentOffset":I
    :cond_1
    move v0, v9

    .line 1638
    goto :goto_0

    .line 1641
    .restart local v0    # "alignmentOffset":I
    :sswitch_0
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getPaddingTop()I

    move-result v9

    sub-int/2addr v9, v0

    goto :goto_2

    .line 1644
    :sswitch_1
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getHeight()I

    move-result v9

    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getPaddingBottom()I

    move-result v10

    sub-int/2addr v9, v10

    sub-int/2addr v9, v1

    iget v10, v3, Landroid/support/v7/widget/Toolbar$LayoutParams;->bottomMargin:I

    sub-int/2addr v9, v10

    sub-int/2addr v9, v0

    goto :goto_2

    .line 1657
    .restart local v2    # "height":I
    .restart local v4    # "paddingBottom":I
    .restart local v5    # "paddingTop":I
    .restart local v6    # "space":I
    .restart local v7    # "spaceAbove":I
    :cond_2
    sub-int v10, v2, v4

    sub-int/2addr v10, v1

    sub-int/2addr v10, v7

    sub-int v8, v10, v5

    .line 1659
    .local v8, "spaceBelow":I
    iget v10, v3, Landroid/support/v7/widget/Toolbar$LayoutParams;->bottomMargin:I

    if-ge v8, v10, :cond_0

    .line 1660
    iget v10, v3, Landroid/support/v7/widget/Toolbar$LayoutParams;->bottomMargin:I

    sub-int/2addr v10, v8

    sub-int v10, v7, v10

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v7

    goto :goto_1

    .line 1639
    :sswitch_data_0
    .sparse-switch
        0x30 -> :sswitch_0
        0x50 -> :sswitch_1
    .end sparse-switch
.end method

.method private getChildVerticalGravity(I)I
    .locals 2
    .param p1, "gravity"    # I

    .prologue
    .line 1668
    and-int/lit8 v0, p1, 0x70

    .line 1669
    .local v0, "vgrav":I
    sparse-switch v0, :sswitch_data_0

    .line 1675
    iget v1, p0, Landroid/support/v7/widget/Toolbar;->mGravity:I

    and-int/lit8 v0, v1, 0x70

    .end local v0    # "vgrav":I
    :sswitch_0
    return v0

    .line 1669
    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_0
        0x30 -> :sswitch_0
        0x50 -> :sswitch_0
    .end sparse-switch
.end method

.method private getHorizontalMargins(Landroid/view/View;)I
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1734
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1735
    .local v0, "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-static {v0}, Landroid/support/v4/view/MarginLayoutParamsCompat;->getMarginStart(Landroid/view/ViewGroup$MarginLayoutParams;)I

    move-result v1

    invoke-static {v0}, Landroid/support/v4/view/MarginLayoutParamsCompat;->getMarginEnd(Landroid/view/ViewGroup$MarginLayoutParams;)I

    move-result v2

    add-int/2addr v1, v2

    return v1
.end method

.method private getMenuInflater()Landroid/view/MenuInflater;
    .locals 2

    .prologue
    .line 891
    new-instance v0, Landroid/support/v7/view/SupportMenuInflater;

    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/view/SupportMenuInflater;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method private getVerticalMargins(Landroid/view/View;)I
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1740
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1741
    .local v0, "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v1, v2

    return v1
.end method

.method private getViewListMeasuredWidth(Ljava/util/List;[I)I
    .locals 13
    .param p2, "collapsingMargins"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;[I)I"
        }
    .end annotation

    .prologue
    .local p1, "views":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    const/4 v12, 0x0

    .line 1591
    aget v0, p2, v12

    .line 1592
    .local v0, "collapseLeft":I
    const/4 v11, 0x1

    aget v1, p2, v11

    .line 1593
    .local v1, "collapseRight":I
    const/4 v10, 0x0

    .line 1594
    .local v10, "width":I
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .line 1595
    .local v2, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_0

    .line 1596
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/View;

    .line 1597
    .local v9, "v":Landroid/view/View;
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/support/v7/widget/Toolbar$LayoutParams;

    .line 1598
    .local v6, "lp":Landroid/support/v7/widget/Toolbar$LayoutParams;
    iget v11, v6, Landroid/support/v7/widget/Toolbar$LayoutParams;->leftMargin:I

    sub-int v4, v11, v0

    .line 1599
    .local v4, "l":I
    iget v11, v6, Landroid/support/v7/widget/Toolbar$LayoutParams;->rightMargin:I

    sub-int v7, v11, v1

    .line 1600
    .local v7, "r":I
    invoke-static {v12, v4}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 1601
    .local v5, "leftMargin":I
    invoke-static {v12, v7}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 1602
    .local v8, "rightMargin":I
    neg-int v11, v4

    invoke-static {v12, v11}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1603
    neg-int v11, v7

    invoke-static {v12, v11}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1604
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredWidth()I

    move-result v11

    add-int/2addr v11, v5

    add-int/2addr v11, v8

    add-int/2addr v10, v11

    .line 1595
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1606
    .end local v4    # "l":I
    .end local v5    # "leftMargin":I
    .end local v6    # "lp":Landroid/support/v7/widget/Toolbar$LayoutParams;
    .end local v7    # "r":I
    .end local v8    # "rightMargin":I
    .end local v9    # "v":Landroid/view/View;
    :cond_0
    return v10
.end method

.method private isChildOrHidden(Landroid/view/View;)Z
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 1807
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eq v0, p0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mHiddenViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isCustomView(Landroid/view/View;)Z
    .locals 1
    .param p0, "child"    # Landroid/view/View;

    .prologue
    .line 1773
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar$LayoutParams;

    iget v0, v0, Landroid/support/v7/widget/Toolbar$LayoutParams;->mViewType:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private layoutChildLeft(Landroid/view/View;I[II)I
    .locals 7
    .param p1, "child"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "collapsingMargins"    # [I
    .param p4, "alignmentHeight"    # I

    .prologue
    const/4 v6, 0x0

    .line 1611
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/Toolbar$LayoutParams;

    .line 1612
    .local v2, "lp":Landroid/support/v7/widget/Toolbar$LayoutParams;
    iget v4, v2, Landroid/support/v7/widget/Toolbar$LayoutParams;->leftMargin:I

    aget v5, p3, v6

    sub-int v1, v4, v5

    .line 1613
    .local v1, "l":I
    invoke-static {v6, v1}, Ljava/lang/Math;->max(II)I

    move-result v4

    add-int/2addr p2, v4

    .line 1614
    neg-int v4, v1

    invoke-static {v6, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    aput v4, p3, v6

    .line 1615
    invoke-direct {p0, p1, p4}, Landroid/support/v7/widget/Toolbar;->getChildTop(Landroid/view/View;I)I

    move-result v3

    .line 1616
    .local v3, "top":I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    .line 1617
    .local v0, "childWidth":I
    add-int v4, p2, v0

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v5, v3

    invoke-virtual {p1, p2, v3, v4, v5}, Landroid/view/View;->layout(IIII)V

    .line 1618
    iget v4, v2, Landroid/support/v7/widget/Toolbar$LayoutParams;->rightMargin:I

    add-int/2addr v4, v0

    add-int/2addr p2, v4

    .line 1619
    return p2
.end method

.method private layoutChildRight(Landroid/view/View;I[II)I
    .locals 8
    .param p1, "child"    # Landroid/view/View;
    .param p2, "right"    # I
    .param p3, "collapsingMargins"    # [I
    .param p4, "alignmentHeight"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1624
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/Toolbar$LayoutParams;

    .line 1625
    .local v1, "lp":Landroid/support/v7/widget/Toolbar$LayoutParams;
    iget v4, v1, Landroid/support/v7/widget/Toolbar$LayoutParams;->rightMargin:I

    aget v5, p3, v7

    sub-int v2, v4, v5

    .line 1626
    .local v2, "r":I
    invoke-static {v6, v2}, Ljava/lang/Math;->max(II)I

    move-result v4

    sub-int/2addr p2, v4

    .line 1627
    neg-int v4, v2

    invoke-static {v6, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    aput v4, p3, v7

    .line 1628
    invoke-direct {p0, p1, p4}, Landroid/support/v7/widget/Toolbar;->getChildTop(Landroid/view/View;I)I

    move-result v3

    .line 1629
    .local v3, "top":I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    .line 1630
    .local v0, "childWidth":I
    sub-int v4, p2, v0

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v5, v3

    invoke-virtual {p1, v4, v3, p2, v5}, Landroid/view/View;->layout(IIII)V

    .line 1631
    iget v4, v1, Landroid/support/v7/widget/Toolbar$LayoutParams;->leftMargin:I

    add-int/2addr v4, v0

    sub-int/2addr p2, v4

    .line 1632
    return p2
.end method

.method private measureChildCollapseMargins(Landroid/view/View;IIII[I)I
    .locals 11
    .param p1, "child"    # Landroid/view/View;
    .param p2, "parentWidthMeasureSpec"    # I
    .param p3, "widthUsed"    # I
    .param p4, "parentHeightMeasureSpec"    # I
    .param p5, "heightUsed"    # I
    .param p6, "collapsingMargins"    # [I

    .prologue
    .line 1201
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1203
    .local v5, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    iget v8, v5, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    const/4 v9, 0x0

    aget v9, p6, v9

    sub-int v3, v8, v9

    .line 1204
    .local v3, "leftDiff":I
    iget v8, v5, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    const/4 v9, 0x1

    aget v9, p6, v9

    sub-int v6, v8, v9

    .line 1205
    .local v6, "rightDiff":I
    const/4 v8, 0x0

    invoke-static {v8, v3}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 1206
    .local v4, "leftMargin":I
    const/4 v8, 0x0

    invoke-static {v8, v6}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 1207
    .local v7, "rightMargin":I
    add-int v2, v4, v7

    .line 1208
    .local v2, "hMargins":I
    const/4 v8, 0x0

    const/4 v9, 0x0

    neg-int v10, v3

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v9

    aput v9, p6, v8

    .line 1209
    const/4 v8, 0x1

    const/4 v9, 0x0

    neg-int v10, v6

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v9

    aput v9, p6, v8

    .line 1211
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getPaddingLeft()I

    move-result v8

    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getPaddingRight()I

    move-result v9

    add-int/2addr v8, v9

    add-int/2addr v8, v2

    add-int/2addr v8, p3

    iget v9, v5, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-static {p2, v8, v9}, Landroid/support/v7/widget/Toolbar;->getChildMeasureSpec(III)I

    move-result v1

    .line 1213
    .local v1, "childWidthMeasureSpec":I
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getPaddingTop()I

    move-result v8

    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getPaddingBottom()I

    move-result v9

    add-int/2addr v8, v9

    iget v9, v5, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v8, v9

    iget v9, v5, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v8, v9

    add-int v8, v8, p5

    iget v9, v5, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-static {p4, v8, v9}, Landroid/support/v7/widget/Toolbar;->getChildMeasureSpec(III)I

    move-result v0

    .line 1217
    .local v0, "childHeightMeasureSpec":I
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    .line 1218
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    add-int/2addr v8, v2

    return v8
.end method

.method private measureChildConstrained(Landroid/view/View;IIIII)V
    .locals 8
    .param p1, "child"    # Landroid/view/View;
    .param p2, "parentWidthSpec"    # I
    .param p3, "widthUsed"    # I
    .param p4, "parentHeightSpec"    # I
    .param p5, "heightUsed"    # I
    .param p6, "heightConstraint"    # I

    .prologue
    const/high16 v7, 0x40000000    # 2.0f

    .line 1176
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1178
    .local v3, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getPaddingLeft()I

    move-result v5

    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getPaddingRight()I

    move-result v6

    add-int/2addr v5, v6

    iget v6, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v5, v6

    iget v6, v3, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v5, v6

    add-int/2addr v5, p3

    iget v6, v3, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-static {p2, v5, v6}, Landroid/support/v7/widget/Toolbar;->getChildMeasureSpec(III)I

    move-result v2

    .line 1181
    .local v2, "childWidthSpec":I
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getPaddingTop()I

    move-result v5

    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getPaddingBottom()I

    move-result v6

    add-int/2addr v5, v6

    iget v6, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v5, v6

    iget v6, v3, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v5, v6

    add-int/2addr v5, p5

    iget v6, v3, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-static {p4, v5, v6}, Landroid/support/v7/widget/Toolbar;->getChildMeasureSpec(III)I

    move-result v1

    .line 1185
    .local v1, "childHeightSpec":I
    invoke-static {v1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 1186
    .local v0, "childHeightMode":I
    if-eq v0, v7, :cond_0

    if-ltz p6, :cond_0

    .line 1187
    if-eqz v0, :cond_1

    invoke-static {v1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    invoke-static {v5, p6}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 1190
    .local v4, "size":I
    :goto_0
    invoke-static {v4, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 1192
    .end local v4    # "size":I
    :cond_0
    invoke-virtual {p1, v2, v1}, Landroid/view/View;->measure(II)V

    .line 1193
    return-void

    :cond_1
    move v4, p6

    .line 1187
    goto :goto_0
.end method

.method private postShowOverflowMenu()V
    .locals 1

    .prologue
    .line 1114
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mShowOverflowMenuRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/Toolbar;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1115
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mShowOverflowMenuRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/Toolbar;->post(Ljava/lang/Runnable;)Z

    .line 1116
    return-void
.end method

.method private shouldCollapse()Z
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 1225
    iget-boolean v4, p0, Landroid/support/v7/widget/Toolbar;->mCollapsible:Z

    if-nez v4, :cond_1

    .line 1235
    :cond_0
    :goto_0
    return v3

    .line 1227
    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getChildCount()I

    move-result v1

    .line 1228
    .local v1, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v1, :cond_3

    .line 1229
    invoke-virtual {p0, v2}, Landroid/support/v7/widget/Toolbar;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1230
    .local v0, "child":Landroid/view/View;
    invoke-direct {p0, v0}, Landroid/support/v7/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    if-lez v4, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    if-gtz v4, :cond_0

    .line 1228
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1235
    .end local v0    # "child":Landroid/view/View;
    :cond_3
    const/4 v3, 0x1

    goto :goto_0
.end method

.method private shouldLayout(Landroid/view/View;)Z
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1730
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-ne v0, p0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method addChildrenForExpandedActionView()V
    .locals 3

    .prologue
    .line 1798
    iget-object v2, p0, Landroid/support/v7/widget/Toolbar;->mHiddenViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1800
    .local v0, "count":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 1801
    iget-object v2, p0, Landroid/support/v7/widget/Toolbar;->mHiddenViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {p0, v2}, Landroid/support/v7/widget/Toolbar;->addView(Landroid/view/View;)V

    .line 1800
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1803
    :cond_0
    iget-object v2, p0, Landroid/support/v7/widget/Toolbar;->mHiddenViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1804
    return-void
.end method

.method public canShowOverflowMenu()Z
    .locals 1

    .prologue
    .line 354
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionMenuView;->isOverflowReserved()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 1769
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v0

    if-eqz v0, :cond_0

    instance-of v0, p1, Landroid/support/v7/widget/Toolbar$LayoutParams;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public collapseActionView()V
    .locals 2

    .prologue
    .line 559
    iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->mExpandedMenuPresenter:Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;

    if-nez v1, :cond_1

    const/4 v0, 0x0

    .line 561
    .local v0, "item":Landroid/support/v7/view/menu/MenuItemImpl;
    :goto_0
    if-eqz v0, :cond_0

    .line 562
    invoke-virtual {v0}, Landroid/support/v7/view/menu/MenuItemImpl;->collapseActionView()Z

    .line 564
    :cond_0
    return-void

    .line 559
    .end local v0    # "item":Landroid/support/v7/view/menu/MenuItemImpl;
    :cond_1
    iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->mExpandedMenuPresenter:Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;

    iget-object v0, v1, Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Landroid/support/v7/view/menu/MenuItemImpl;

    goto :goto_0
.end method

.method public dismissPopupMenus()V
    .locals 1

    .prologue
    .line 430
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    if-eqz v0, :cond_0

    .line 431
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionMenuView;->dismissPopupMenus()V

    .line 433
    :cond_0
    return-void
.end method

.method protected generateDefaultLayoutParams()Landroid/support/v7/widget/Toolbar$LayoutParams;
    .locals 2

    .prologue
    const/4 v1, -0x2

    .line 1764
    new-instance v0, Landroid/support/v7/widget/Toolbar$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/support/v7/widget/Toolbar$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 112
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->generateDefaultLayoutParams()Landroid/support/v7/widget/Toolbar$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/support/v7/widget/Toolbar$LayoutParams;
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 1746
    new-instance v0, Landroid/support/v7/widget/Toolbar$LayoutParams;

    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/support/v7/widget/Toolbar$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/support/v7/widget/Toolbar$LayoutParams;
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 1751
    instance-of v0, p1, Landroid/support/v7/widget/Toolbar$LayoutParams;

    if-eqz v0, :cond_0

    .line 1752
    new-instance v0, Landroid/support/v7/widget/Toolbar$LayoutParams;

    check-cast p1, Landroid/support/v7/widget/Toolbar$LayoutParams;

    .end local p1    # "p":Landroid/view/ViewGroup$LayoutParams;
    invoke-direct {v0, p1}, Landroid/support/v7/widget/Toolbar$LayoutParams;-><init>(Landroid/support/v7/widget/Toolbar$LayoutParams;)V

    .line 1758
    :goto_0
    return-object v0

    .line 1753
    .restart local p1    # "p":Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    instance-of v0, p1, Landroid/support/v7/app/ActionBar$LayoutParams;

    if-eqz v0, :cond_1

    .line 1754
    new-instance v0, Landroid/support/v7/widget/Toolbar$LayoutParams;

    check-cast p1, Landroid/support/v7/app/ActionBar$LayoutParams;

    .end local p1    # "p":Landroid/view/ViewGroup$LayoutParams;
    invoke-direct {v0, p1}, Landroid/support/v7/widget/Toolbar$LayoutParams;-><init>(Landroid/support/v7/app/ActionBar$LayoutParams;)V

    goto :goto_0

    .line 1755
    .restart local p1    # "p":Landroid/view/ViewGroup$LayoutParams;
    :cond_1
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_2

    .line 1756
    new-instance v0, Landroid/support/v7/widget/Toolbar$LayoutParams;

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .end local p1    # "p":Landroid/view/ViewGroup$LayoutParams;
    invoke-direct {v0, p1}, Landroid/support/v7/widget/Toolbar$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    goto :goto_0

    .line 1758
    .restart local p1    # "p":Landroid/view/ViewGroup$LayoutParams;
    :cond_2
    new-instance v0, Landroid/support/v7/widget/Toolbar$LayoutParams;

    invoke-direct {v0, p1}, Landroid/support/v7/widget/Toolbar$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 112
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/Toolbar;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/support/v7/widget/Toolbar$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 112
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/Toolbar;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/support/v7/widget/Toolbar$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public getContentInsetEnd()I
    .locals 1

    .prologue
    .line 973
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mContentInsets:Landroid/support/v7/widget/RtlSpacingHelper;

    invoke-virtual {v0}, Landroid/support/v7/widget/RtlSpacingHelper;->getEnd()I

    move-result v0

    return v0
.end method

.method public getContentInsetLeft()I
    .locals 1

    .prologue
    .line 1012
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mContentInsets:Landroid/support/v7/widget/RtlSpacingHelper;

    invoke-virtual {v0}, Landroid/support/v7/widget/RtlSpacingHelper;->getLeft()I

    move-result v0

    return v0
.end method

.method public getContentInsetRight()I
    .locals 1

    .prologue
    .line 1031
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mContentInsets:Landroid/support/v7/widget/RtlSpacingHelper;

    invoke-virtual {v0}, Landroid/support/v7/widget/RtlSpacingHelper;->getRight()I

    move-result v0

    return v0
.end method

.method public getContentInsetStart()I
    .locals 1

    .prologue
    .line 954
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mContentInsets:Landroid/support/v7/widget/RtlSpacingHelper;

    invoke-virtual {v0}, Landroid/support/v7/widget/RtlSpacingHelper;->getStart()I

    move-result v0

    return v0
.end method

.method public getLogo()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 487
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getLogoDescription()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 525
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getMenu()Landroid/view/Menu;
    .locals 1

    .prologue
    .line 839
    invoke-direct {p0}, Landroid/support/v7/widget/Toolbar;->ensureMenu()V

    .line 840
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionMenuView;->getMenu()Landroid/view/Menu;

    move-result-object v0

    return-object v0
.end method

.method public getNavigationContentDescription()Ljava/lang/CharSequence;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 731
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getNavigationIcon()Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 813
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getOverflowIcon()Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 860
    invoke-direct {p0}, Landroid/support/v7/widget/Toolbar;->ensureMenu()V

    .line 861
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionMenuView;->getOverflowIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getPopupTheme()I
    .locals 1

    .prologue
    .line 329
    iget v0, p0, Landroid/support/v7/widget/Toolbar;->mPopupTheme:I

    return v0
.end method

.method public getSubtitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 628
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mSubtitleText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 572
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mTitleText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getWrapper()Landroid/support/v7/widget/DecorToolbar;
    .locals 2

    .prologue
    .line 1778
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mWrapper:Landroid/support/v7/widget/ToolbarWidgetWrapper;

    if-nez v0, :cond_0

    .line 1779
    new-instance v0, Landroid/support/v7/widget/ToolbarWidgetWrapper;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Landroid/support/v7/widget/ToolbarWidgetWrapper;-><init>(Landroid/support/v7/widget/Toolbar;Z)V

    iput-object v0, p0, Landroid/support/v7/widget/Toolbar;->mWrapper:Landroid/support/v7/widget/ToolbarWidgetWrapper;

    .line 1781
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mWrapper:Landroid/support/v7/widget/ToolbarWidgetWrapper;

    return-object v0
.end method

.method public hasExpandedActionView()Z
    .locals 1

    .prologue
    .line 545
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mExpandedMenuPresenter:Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mExpandedMenuPresenter:Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Landroid/support/v7/view/menu/MenuItemImpl;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hideOverflowMenu()Z
    .locals 1

    .prologue
    .line 387
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionMenuView;->hideOverflowMenu()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public inflateMenu(I)V
    .locals 2
    .param p1, "resId"    # I
        .annotation build Landroid/support/annotation/MenuRes;
        .end annotation
    .end param

    .prologue
    .line 903
    invoke-direct {p0}, Landroid/support/v7/widget/Toolbar;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getMenu()Landroid/view/Menu;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 904
    return-void
.end method

.method public isOverflowMenuShowPending()Z
    .locals 1

    .prologue
    .line 369
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionMenuView;->isOverflowMenuShowPending()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOverflowMenuShowing()Z
    .locals 1

    .prologue
    .line 364
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionMenuView;->isOverflowMenuShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTitleTruncated()Z
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 437
    iget-object v4, p0, Landroid/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    if-nez v4, :cond_1

    .line 452
    :cond_0
    :goto_0
    return v3

    .line 441
    :cond_1
    iget-object v4, p0, Landroid/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v2

    .line 442
    .local v2, "titleLayout":Landroid/text/Layout;
    if-eqz v2, :cond_0

    .line 446
    invoke-virtual {v2}, Landroid/text/Layout;->getLineCount()I

    move-result v1

    .line 447
    .local v1, "lineCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_0

    .line 448
    invoke-virtual {v2, v0}, Landroid/text/Layout;->getEllipsisCount(I)I

    move-result v4

    if-lez v4, :cond_2

    .line 449
    const/4 v3, 0x1

    goto :goto_0

    .line 447
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 1120
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 1121
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mShowOverflowMenuRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/Toolbar;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1122
    return-void
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/16 v5, 0x9

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1155
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    move-result v0

    .line 1156
    .local v0, "action":I
    if-ne v0, v5, :cond_0

    .line 1157
    iput-boolean v3, p0, Landroid/support/v7/widget/Toolbar;->mEatingHover:Z

    .line 1160
    :cond_0
    iget-boolean v2, p0, Landroid/support/v7/widget/Toolbar;->mEatingHover:Z

    if-nez v2, :cond_1

    .line 1161
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 1162
    .local v1, "handled":Z
    if-ne v0, v5, :cond_1

    if-nez v1, :cond_1

    .line 1163
    iput-boolean v4, p0, Landroid/support/v7/widget/Toolbar;->mEatingHover:Z

    .line 1167
    .end local v1    # "handled":Z
    :cond_1
    const/16 v2, 0xa

    if-eq v0, v2, :cond_2

    const/4 v2, 0x3

    if-ne v0, v2, :cond_3

    .line 1168
    :cond_2
    iput-boolean v3, p0, Landroid/support/v7/widget/Toolbar;->mEatingHover:Z

    .line 1171
    :cond_3
    return v4
.end method

.method protected onLayout(ZIIII)V
    .locals 50
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 1376
    invoke-static/range {p0 .. p0}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v46

    const/16 v47, 0x1

    move/from16 v0, v46

    move/from16 v1, v47

    if-ne v0, v1, :cond_e

    const/16 v16, 0x1

    .line 1377
    .local v16, "isRtl":Z
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/Toolbar;->getWidth()I

    move-result v45

    .line 1378
    .local v45, "width":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/Toolbar;->getHeight()I

    move-result v14

    .line 1379
    .local v14, "height":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/Toolbar;->getPaddingLeft()I

    move-result v24

    .line 1380
    .local v24, "paddingLeft":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/Toolbar;->getPaddingRight()I

    move-result v25

    .line 1381
    .local v25, "paddingRight":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/Toolbar;->getPaddingTop()I

    move-result v26

    .line 1382
    .local v26, "paddingTop":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/Toolbar;->getPaddingBottom()I

    move-result v23

    .line 1383
    .local v23, "paddingBottom":I
    move/from16 v20, v24

    .line 1384
    .local v20, "left":I
    sub-int v29, v45, v25

    .line 1386
    .local v29, "right":I
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/support/v7/widget/Toolbar;->mTempMargins:[I

    .line 1387
    .local v12, "collapsingMargins":[I
    const/16 v46, 0x0

    const/16 v47, 0x1

    const/16 v48, 0x0

    aput v48, v12, v47

    aput v48, v12, v46

    .line 1390
    invoke-static/range {p0 .. p0}, Landroid/support/v4/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result v5

    .line 1392
    .local v5, "alignmentHeight":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    move-object/from16 v46, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-direct {v0, v1}, Landroid/support/v7/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v46

    if-eqz v46, :cond_0

    .line 1393
    if-eqz v16, :cond_f

    .line 1394
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    move-object/from16 v46, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    move/from16 v2, v29

    invoke-direct {v0, v1, v2, v12, v5}, Landroid/support/v7/widget/Toolbar;->layoutChildRight(Landroid/view/View;I[II)I

    move-result v29

    .line 1402
    :cond_0
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    move-object/from16 v46, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-direct {v0, v1}, Landroid/support/v7/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v46

    if-eqz v46, :cond_1

    .line 1403
    if-eqz v16, :cond_10

    .line 1404
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    move-object/from16 v46, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    move/from16 v2, v29

    invoke-direct {v0, v1, v2, v12, v5}, Landroid/support/v7/widget/Toolbar;->layoutChildRight(Landroid/view/View;I[II)I

    move-result v29

    .line 1412
    :cond_1
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    move-object/from16 v46, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-direct {v0, v1}, Landroid/support/v7/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v46

    if-eqz v46, :cond_2

    .line 1413
    if-eqz v16, :cond_11

    .line 1414
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    move-object/from16 v46, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    move/from16 v2, v20

    invoke-direct {v0, v1, v2, v12, v5}, Landroid/support/v7/widget/Toolbar;->layoutChildLeft(Landroid/view/View;I[II)I

    move-result v20

    .line 1422
    :cond_2
    :goto_3
    const/16 v46, 0x0

    const/16 v47, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/Toolbar;->getContentInsetLeft()I

    move-result v48

    sub-int v48, v48, v20

    invoke-static/range {v47 .. v48}, Ljava/lang/Math;->max(II)I

    move-result v47

    aput v47, v12, v46

    .line 1423
    const/16 v46, 0x1

    const/16 v47, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/Toolbar;->getContentInsetRight()I

    move-result v48

    sub-int v49, v45, v25

    sub-int v49, v49, v29

    sub-int v48, v48, v49

    invoke-static/range {v47 .. v48}, Ljava/lang/Math;->max(II)I

    move-result v47

    aput v47, v12, v46

    .line 1424
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/Toolbar;->getContentInsetLeft()I

    move-result v46

    move/from16 v0, v20

    move/from16 v1, v46

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v20

    .line 1425
    sub-int v46, v45, v25

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/Toolbar;->getContentInsetRight()I

    move-result v47

    sub-int v46, v46, v47

    move/from16 v0, v29

    move/from16 v1, v46

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v29

    .line 1427
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    move-object/from16 v46, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-direct {v0, v1}, Landroid/support/v7/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v46

    if-eqz v46, :cond_3

    .line 1428
    if-eqz v16, :cond_12

    .line 1429
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    move-object/from16 v46, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    move/from16 v2, v29

    invoke-direct {v0, v1, v2, v12, v5}, Landroid/support/v7/widget/Toolbar;->layoutChildRight(Landroid/view/View;I[II)I

    move-result v29

    .line 1437
    :cond_3
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    move-object/from16 v46, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-direct {v0, v1}, Landroid/support/v7/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v46

    if-eqz v46, :cond_4

    .line 1438
    if-eqz v16, :cond_13

    .line 1439
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    move-object/from16 v46, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    move/from16 v2, v29

    invoke-direct {v0, v1, v2, v12, v5}, Landroid/support/v7/widget/Toolbar;->layoutChildRight(Landroid/view/View;I[II)I

    move-result v29

    .line 1447
    :cond_4
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    move-object/from16 v46, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-direct {v0, v1}, Landroid/support/v7/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v18

    .line 1448
    .local v18, "layoutTitle":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    move-object/from16 v46, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-direct {v0, v1}, Landroid/support/v7/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v17

    .line 1449
    .local v17, "layoutSubtitle":Z
    const/16 v39, 0x0

    .line 1450
    .local v39, "titleHeight":I
    if-eqz v18, :cond_5

    .line 1451
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v22

    check-cast v22, Landroid/support/v7/widget/Toolbar$LayoutParams;

    .line 1452
    .local v22, "lp":Landroid/support/v7/widget/Toolbar$LayoutParams;
    move-object/from16 v0, v22

    iget v0, v0, Landroid/support/v7/widget/Toolbar$LayoutParams;->topMargin:I

    move/from16 v46, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    move-object/from16 v47, v0

    invoke-virtual/range {v47 .. v47}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v47

    add-int v46, v46, v47

    move-object/from16 v0, v22

    iget v0, v0, Landroid/support/v7/widget/Toolbar$LayoutParams;->bottomMargin:I

    move/from16 v47, v0

    add-int v46, v46, v47

    add-int v39, v39, v46

    .line 1454
    .end local v22    # "lp":Landroid/support/v7/widget/Toolbar$LayoutParams;
    :cond_5
    if-eqz v17, :cond_6

    .line 1455
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v22

    check-cast v22, Landroid/support/v7/widget/Toolbar$LayoutParams;

    .line 1456
    .restart local v22    # "lp":Landroid/support/v7/widget/Toolbar$LayoutParams;
    move-object/from16 v0, v22

    iget v0, v0, Landroid/support/v7/widget/Toolbar$LayoutParams;->topMargin:I

    move/from16 v46, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    move-object/from16 v47, v0

    invoke-virtual/range {v47 .. v47}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v47

    add-int v46, v46, v47

    move-object/from16 v0, v22

    iget v0, v0, Landroid/support/v7/widget/Toolbar$LayoutParams;->bottomMargin:I

    move/from16 v47, v0

    add-int v46, v46, v47

    add-int v39, v39, v46

    .line 1459
    .end local v22    # "lp":Landroid/support/v7/widget/Toolbar$LayoutParams;
    :cond_6
    if-nez v18, :cond_7

    if-eqz v17, :cond_d

    .line 1461
    :cond_7
    if-eqz v18, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    move-object/from16 v43, v0

    .line 1462
    .local v43, "topChild":Landroid/view/View;
    :goto_6
    if-eqz v17, :cond_15

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/support/v7/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    .line 1463
    .local v6, "bottomChild":Landroid/view/View;
    :goto_7
    invoke-virtual/range {v43 .. v43}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v44

    check-cast v44, Landroid/support/v7/widget/Toolbar$LayoutParams;

    .line 1464
    .local v44, "toplp":Landroid/support/v7/widget/Toolbar$LayoutParams;
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/support/v7/widget/Toolbar$LayoutParams;

    .line 1465
    .local v7, "bottomlp":Landroid/support/v7/widget/Toolbar$LayoutParams;
    if-eqz v18, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v46

    if-gtz v46, :cond_9

    :cond_8
    if-eqz v17, :cond_16

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v46

    if-lez v46, :cond_16

    :cond_9
    const/16 v38, 0x1

    .line 1468
    .local v38, "titleHasWidth":Z
    :goto_8
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v7/widget/Toolbar;->mGravity:I

    move/from16 v46, v0

    and-int/lit8 v46, v46, 0x70

    sparse-switch v46, :sswitch_data_0

    .line 1474
    sub-int v46, v14, v26

    sub-int v31, v46, v23

    .line 1475
    .local v31, "space":I
    sub-int v46, v31, v39

    div-int/lit8 v32, v46, 0x2

    .line 1476
    .local v32, "spaceAbove":I
    move-object/from16 v0, v44

    iget v0, v0, Landroid/support/v7/widget/Toolbar$LayoutParams;->topMargin:I

    move/from16 v46, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v7/widget/Toolbar;->mTitleMarginTop:I

    move/from16 v47, v0

    add-int v46, v46, v47

    move/from16 v0, v32

    move/from16 v1, v46

    if-ge v0, v1, :cond_17

    .line 1477
    move-object/from16 v0, v44

    iget v0, v0, Landroid/support/v7/widget/Toolbar$LayoutParams;->topMargin:I

    move/from16 v46, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v7/widget/Toolbar;->mTitleMarginTop:I

    move/from16 v47, v0

    add-int v32, v46, v47

    .line 1486
    :cond_a
    :goto_9
    add-int v42, v26, v32

    .line 1493
    .end local v31    # "space":I
    .end local v32    # "spaceAbove":I
    .local v42, "titleTop":I
    :goto_a
    if-eqz v16, :cond_19

    .line 1494
    if-eqz v38, :cond_18

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v7/widget/Toolbar;->mTitleMarginStart:I

    move/from16 v46, v0

    :goto_b
    const/16 v47, 0x1

    aget v47, v12, v47

    sub-int v28, v46, v47

    .line 1495
    .local v28, "rd":I
    const/16 v46, 0x0

    move/from16 v0, v46

    move/from16 v1, v28

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v46

    sub-int v29, v29, v46

    .line 1496
    const/16 v46, 0x1

    const/16 v47, 0x0

    move/from16 v0, v28

    neg-int v0, v0

    move/from16 v48, v0

    invoke-static/range {v47 .. v48}, Ljava/lang/Math;->max(II)I

    move-result v47

    aput v47, v12, v46

    .line 1497
    move/from16 v41, v29

    .line 1498
    .local v41, "titleRight":I
    move/from16 v36, v29

    .line 1500
    .local v36, "subtitleRight":I
    if-eqz v18, :cond_b

    .line 1501
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v22

    check-cast v22, Landroid/support/v7/widget/Toolbar$LayoutParams;

    .line 1502
    .restart local v22    # "lp":Landroid/support/v7/widget/Toolbar$LayoutParams;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v46

    sub-int v40, v41, v46

    .line 1503
    .local v40, "titleLeft":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v46

    add-int v37, v42, v46

    .line 1504
    .local v37, "titleBottom":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    move-object/from16 v46, v0

    move-object/from16 v0, v46

    move/from16 v1, v40

    move/from16 v2, v42

    move/from16 v3, v41

    move/from16 v4, v37

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->layout(IIII)V

    .line 1505
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v7/widget/Toolbar;->mTitleMarginEnd:I

    move/from16 v46, v0

    sub-int v41, v40, v46

    .line 1506
    move-object/from16 v0, v22

    iget v0, v0, Landroid/support/v7/widget/Toolbar$LayoutParams;->bottomMargin:I

    move/from16 v46, v0

    add-int v42, v37, v46

    .line 1508
    .end local v22    # "lp":Landroid/support/v7/widget/Toolbar$LayoutParams;
    .end local v37    # "titleBottom":I
    .end local v40    # "titleLeft":I
    :cond_b
    if-eqz v17, :cond_c

    .line 1509
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v22

    check-cast v22, Landroid/support/v7/widget/Toolbar$LayoutParams;

    .line 1510
    .restart local v22    # "lp":Landroid/support/v7/widget/Toolbar$LayoutParams;
    move-object/from16 v0, v22

    iget v0, v0, Landroid/support/v7/widget/Toolbar$LayoutParams;->topMargin:I

    move/from16 v46, v0

    add-int v42, v42, v46

    .line 1511
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v46

    sub-int v35, v36, v46

    .line 1512
    .local v35, "subtitleLeft":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v46

    add-int v34, v42, v46

    .line 1513
    .local v34, "subtitleBottom":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    move-object/from16 v46, v0

    move-object/from16 v0, v46

    move/from16 v1, v35

    move/from16 v2, v42

    move/from16 v3, v36

    move/from16 v4, v34

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->layout(IIII)V

    .line 1514
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v7/widget/Toolbar;->mTitleMarginEnd:I

    move/from16 v46, v0

    sub-int v36, v36, v46

    .line 1515
    move-object/from16 v0, v22

    iget v0, v0, Landroid/support/v7/widget/Toolbar$LayoutParams;->bottomMargin:I

    move/from16 v46, v0

    add-int v42, v34, v46

    .line 1517
    .end local v22    # "lp":Landroid/support/v7/widget/Toolbar$LayoutParams;
    .end local v34    # "subtitleBottom":I
    .end local v35    # "subtitleLeft":I
    :cond_c
    if-eqz v38, :cond_d

    .line 1518
    move/from16 v0, v41

    move/from16 v1, v36

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v29

    .line 1553
    .end local v6    # "bottomChild":Landroid/view/View;
    .end local v7    # "bottomlp":Landroid/support/v7/widget/Toolbar$LayoutParams;
    .end local v28    # "rd":I
    .end local v36    # "subtitleRight":I
    .end local v38    # "titleHasWidth":Z
    .end local v41    # "titleRight":I
    .end local v42    # "titleTop":I
    .end local v43    # "topChild":Landroid/view/View;
    .end local v44    # "toplp":Landroid/support/v7/widget/Toolbar$LayoutParams;
    :cond_d
    :goto_c
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mTempViews:Ljava/util/ArrayList;

    move-object/from16 v46, v0

    const/16 v47, 0x3

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    move/from16 v2, v47

    invoke-direct {v0, v1, v2}, Landroid/support/v7/widget/Toolbar;->addCustomViewsWithGravity(Ljava/util/List;I)V

    .line 1554
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mTempViews:Ljava/util/ArrayList;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Ljava/util/ArrayList;->size()I

    move-result v21

    .line 1555
    .local v21, "leftViewsCount":I
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_d
    move/from16 v0, v21

    if-ge v15, v0, :cond_1d

    .line 1556
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mTempViews:Ljava/util/ArrayList;

    move-object/from16 v46, v0

    move-object/from16 v0, v46

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v46

    check-cast v46, Landroid/view/View;

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    move/from16 v2, v20

    invoke-direct {v0, v1, v2, v12, v5}, Landroid/support/v7/widget/Toolbar;->layoutChildLeft(Landroid/view/View;I[II)I

    move-result v20

    .line 1555
    add-int/lit8 v15, v15, 0x1

    goto :goto_d

    .line 1376
    .end local v5    # "alignmentHeight":I
    .end local v12    # "collapsingMargins":[I
    .end local v14    # "height":I
    .end local v15    # "i":I
    .end local v16    # "isRtl":Z
    .end local v17    # "layoutSubtitle":Z
    .end local v18    # "layoutTitle":Z
    .end local v20    # "left":I
    .end local v21    # "leftViewsCount":I
    .end local v23    # "paddingBottom":I
    .end local v24    # "paddingLeft":I
    .end local v25    # "paddingRight":I
    .end local v26    # "paddingTop":I
    .end local v29    # "right":I
    .end local v39    # "titleHeight":I
    .end local v45    # "width":I
    :cond_e
    const/16 v16, 0x0

    goto/16 :goto_0

    .line 1397
    .restart local v5    # "alignmentHeight":I
    .restart local v12    # "collapsingMargins":[I
    .restart local v14    # "height":I
    .restart local v16    # "isRtl":Z
    .restart local v20    # "left":I
    .restart local v23    # "paddingBottom":I
    .restart local v24    # "paddingLeft":I
    .restart local v25    # "paddingRight":I
    .restart local v26    # "paddingTop":I
    .restart local v29    # "right":I
    .restart local v45    # "width":I
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    move-object/from16 v46, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    move/from16 v2, v20

    invoke-direct {v0, v1, v2, v12, v5}, Landroid/support/v7/widget/Toolbar;->layoutChildLeft(Landroid/view/View;I[II)I

    move-result v20

    goto/16 :goto_1

    .line 1407
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    move-object/from16 v46, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    move/from16 v2, v20

    invoke-direct {v0, v1, v2, v12, v5}, Landroid/support/v7/widget/Toolbar;->layoutChildLeft(Landroid/view/View;I[II)I

    move-result v20

    goto/16 :goto_2

    .line 1417
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    move-object/from16 v46, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    move/from16 v2, v29

    invoke-direct {v0, v1, v2, v12, v5}, Landroid/support/v7/widget/Toolbar;->layoutChildRight(Landroid/view/View;I[II)I

    move-result v29

    goto/16 :goto_3

    .line 1432
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    move-object/from16 v46, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    move/from16 v2, v20

    invoke-direct {v0, v1, v2, v12, v5}, Landroid/support/v7/widget/Toolbar;->layoutChildLeft(Landroid/view/View;I[II)I

    move-result v20

    goto/16 :goto_4

    .line 1442
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    move-object/from16 v46, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    move/from16 v2, v20

    invoke-direct {v0, v1, v2, v12, v5}, Landroid/support/v7/widget/Toolbar;->layoutChildLeft(Landroid/view/View;I[II)I

    move-result v20

    goto/16 :goto_5

    .line 1461
    .restart local v17    # "layoutSubtitle":Z
    .restart local v18    # "layoutTitle":Z
    .restart local v39    # "titleHeight":I
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    move-object/from16 v43, v0

    goto/16 :goto_6

    .line 1462
    .restart local v43    # "topChild":Landroid/view/View;
    :cond_15
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    goto/16 :goto_7

    .line 1465
    .restart local v6    # "bottomChild":Landroid/view/View;
    .restart local v7    # "bottomlp":Landroid/support/v7/widget/Toolbar$LayoutParams;
    .restart local v44    # "toplp":Landroid/support/v7/widget/Toolbar$LayoutParams;
    :cond_16
    const/16 v38, 0x0

    goto/16 :goto_8

    .line 1470
    .restart local v38    # "titleHasWidth":Z
    :sswitch_0
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/Toolbar;->getPaddingTop()I

    move-result v46

    move-object/from16 v0, v44

    iget v0, v0, Landroid/support/v7/widget/Toolbar$LayoutParams;->topMargin:I

    move/from16 v47, v0

    add-int v46, v46, v47

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v7/widget/Toolbar;->mTitleMarginTop:I

    move/from16 v47, v0

    add-int v42, v46, v47

    .line 1471
    .restart local v42    # "titleTop":I
    goto/16 :goto_a

    .line 1479
    .end local v42    # "titleTop":I
    .restart local v31    # "space":I
    .restart local v32    # "spaceAbove":I
    :cond_17
    sub-int v46, v14, v23

    sub-int v46, v46, v39

    sub-int v46, v46, v32

    sub-int v33, v46, v26

    .line 1481
    .local v33, "spaceBelow":I
    move-object/from16 v0, v44

    iget v0, v0, Landroid/support/v7/widget/Toolbar$LayoutParams;->bottomMargin:I

    move/from16 v46, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v7/widget/Toolbar;->mTitleMarginBottom:I

    move/from16 v47, v0

    add-int v46, v46, v47

    move/from16 v0, v33

    move/from16 v1, v46

    if-ge v0, v1, :cond_a

    .line 1482
    const/16 v46, 0x0

    iget v0, v7, Landroid/support/v7/widget/Toolbar$LayoutParams;->bottomMargin:I

    move/from16 v47, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v7/widget/Toolbar;->mTitleMarginBottom:I

    move/from16 v48, v0

    add-int v47, v47, v48

    sub-int v47, v47, v33

    sub-int v47, v32, v47

    invoke-static/range {v46 .. v47}, Ljava/lang/Math;->max(II)I

    move-result v32

    goto/16 :goto_9

    .line 1489
    .end local v31    # "space":I
    .end local v32    # "spaceAbove":I
    .end local v33    # "spaceBelow":I
    :sswitch_1
    sub-int v46, v14, v23

    iget v0, v7, Landroid/support/v7/widget/Toolbar$LayoutParams;->bottomMargin:I

    move/from16 v47, v0

    sub-int v46, v46, v47

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v7/widget/Toolbar;->mTitleMarginBottom:I

    move/from16 v47, v0

    sub-int v46, v46, v47

    sub-int v42, v46, v39

    .restart local v42    # "titleTop":I
    goto/16 :goto_a

    .line 1494
    :cond_18
    const/16 v46, 0x0

    goto/16 :goto_b

    .line 1521
    :cond_19
    if-eqz v38, :cond_1c

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v7/widget/Toolbar;->mTitleMarginStart:I

    move/from16 v46, v0

    :goto_e
    const/16 v47, 0x0

    aget v47, v12, v47

    sub-int v19, v46, v47

    .line 1522
    .local v19, "ld":I
    const/16 v46, 0x0

    move/from16 v0, v46

    move/from16 v1, v19

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v46

    add-int v20, v20, v46

    .line 1523
    const/16 v46, 0x0

    const/16 v47, 0x0

    move/from16 v0, v19

    neg-int v0, v0

    move/from16 v48, v0

    invoke-static/range {v47 .. v48}, Ljava/lang/Math;->max(II)I

    move-result v47

    aput v47, v12, v46

    .line 1524
    move/from16 v40, v20

    .line 1525
    .restart local v40    # "titleLeft":I
    move/from16 v35, v20

    .line 1527
    .restart local v35    # "subtitleLeft":I
    if-eqz v18, :cond_1a

    .line 1528
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v22

    check-cast v22, Landroid/support/v7/widget/Toolbar$LayoutParams;

    .line 1529
    .restart local v22    # "lp":Landroid/support/v7/widget/Toolbar$LayoutParams;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v46

    add-int v41, v40, v46

    .line 1530
    .restart local v41    # "titleRight":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v46

    add-int v37, v42, v46

    .line 1531
    .restart local v37    # "titleBottom":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    move-object/from16 v46, v0

    move-object/from16 v0, v46

    move/from16 v1, v40

    move/from16 v2, v42

    move/from16 v3, v41

    move/from16 v4, v37

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->layout(IIII)V

    .line 1532
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v7/widget/Toolbar;->mTitleMarginEnd:I

    move/from16 v46, v0

    add-int v40, v41, v46

    .line 1533
    move-object/from16 v0, v22

    iget v0, v0, Landroid/support/v7/widget/Toolbar$LayoutParams;->bottomMargin:I

    move/from16 v46, v0

    add-int v42, v37, v46

    .line 1535
    .end local v22    # "lp":Landroid/support/v7/widget/Toolbar$LayoutParams;
    .end local v37    # "titleBottom":I
    .end local v41    # "titleRight":I
    :cond_1a
    if-eqz v17, :cond_1b

    .line 1536
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v22

    check-cast v22, Landroid/support/v7/widget/Toolbar$LayoutParams;

    .line 1537
    .restart local v22    # "lp":Landroid/support/v7/widget/Toolbar$LayoutParams;
    move-object/from16 v0, v22

    iget v0, v0, Landroid/support/v7/widget/Toolbar$LayoutParams;->topMargin:I

    move/from16 v46, v0

    add-int v42, v42, v46

    .line 1538
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v46

    add-int v36, v35, v46

    .line 1539
    .restart local v36    # "subtitleRight":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v46

    add-int v34, v42, v46

    .line 1540
    .restart local v34    # "subtitleBottom":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    move-object/from16 v46, v0

    move-object/from16 v0, v46

    move/from16 v1, v35

    move/from16 v2, v42

    move/from16 v3, v36

    move/from16 v4, v34

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->layout(IIII)V

    .line 1541
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v7/widget/Toolbar;->mTitleMarginEnd:I

    move/from16 v46, v0

    add-int v35, v36, v46

    .line 1542
    move-object/from16 v0, v22

    iget v0, v0, Landroid/support/v7/widget/Toolbar$LayoutParams;->bottomMargin:I

    move/from16 v46, v0

    add-int v42, v34, v46

    .line 1544
    .end local v22    # "lp":Landroid/support/v7/widget/Toolbar$LayoutParams;
    .end local v34    # "subtitleBottom":I
    .end local v36    # "subtitleRight":I
    :cond_1b
    if-eqz v38, :cond_d

    .line 1545
    move/from16 v0, v40

    move/from16 v1, v35

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v20

    goto/16 :goto_c

    .line 1521
    .end local v19    # "ld":I
    .end local v35    # "subtitleLeft":I
    .end local v40    # "titleLeft":I
    :cond_1c
    const/16 v46, 0x0

    goto/16 :goto_e

    .line 1560
    .end local v6    # "bottomChild":Landroid/view/View;
    .end local v7    # "bottomlp":Landroid/support/v7/widget/Toolbar$LayoutParams;
    .end local v38    # "titleHasWidth":Z
    .end local v42    # "titleTop":I
    .end local v43    # "topChild":Landroid/view/View;
    .end local v44    # "toplp":Landroid/support/v7/widget/Toolbar$LayoutParams;
    .restart local v15    # "i":I
    .restart local v21    # "leftViewsCount":I
    :cond_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mTempViews:Ljava/util/ArrayList;

    move-object/from16 v46, v0

    const/16 v47, 0x5

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    move/from16 v2, v47

    invoke-direct {v0, v1, v2}, Landroid/support/v7/widget/Toolbar;->addCustomViewsWithGravity(Ljava/util/List;I)V

    .line 1561
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mTempViews:Ljava/util/ArrayList;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Ljava/util/ArrayList;->size()I

    move-result v30

    .line 1562
    .local v30, "rightViewsCount":I
    const/4 v15, 0x0

    :goto_f
    move/from16 v0, v30

    if-ge v15, v0, :cond_1e

    .line 1563
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mTempViews:Ljava/util/ArrayList;

    move-object/from16 v46, v0

    move-object/from16 v0, v46

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v46

    check-cast v46, Landroid/view/View;

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    move/from16 v2, v29

    invoke-direct {v0, v1, v2, v12, v5}, Landroid/support/v7/widget/Toolbar;->layoutChildRight(Landroid/view/View;I[II)I

    move-result v29

    .line 1562
    add-int/lit8 v15, v15, 0x1

    goto :goto_f

    .line 1569
    :cond_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mTempViews:Ljava/util/ArrayList;

    move-object/from16 v46, v0

    const/16 v47, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    move/from16 v2, v47

    invoke-direct {v0, v1, v2}, Landroid/support/v7/widget/Toolbar;->addCustomViewsWithGravity(Ljava/util/List;I)V

    .line 1570
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mTempViews:Ljava/util/ArrayList;

    move-object/from16 v46, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-direct {v0, v1, v12}, Landroid/support/v7/widget/Toolbar;->getViewListMeasuredWidth(Ljava/util/List;[I)I

    move-result v11

    .line 1571
    .local v11, "centerViewsWidth":I
    sub-int v46, v45, v24

    sub-int v46, v46, v25

    div-int/lit8 v46, v46, 0x2

    add-int v27, v24, v46

    .line 1572
    .local v27, "parentCenter":I
    div-int/lit8 v13, v11, 0x2

    .line 1573
    .local v13, "halfCenterViewsWidth":I
    sub-int v8, v27, v13

    .line 1574
    .local v8, "centerLeft":I
    add-int v9, v8, v11

    .line 1575
    .local v9, "centerRight":I
    move/from16 v0, v20

    if-ge v8, v0, :cond_20

    .line 1576
    move/from16 v8, v20

    .line 1581
    :cond_1f
    :goto_10
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mTempViews:Ljava/util/ArrayList;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 1582
    .local v10, "centerViewsCount":I
    const/4 v15, 0x0

    :goto_11
    if-ge v15, v10, :cond_21

    .line 1583
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mTempViews:Ljava/util/ArrayList;

    move-object/from16 v46, v0

    move-object/from16 v0, v46

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v46

    check-cast v46, Landroid/view/View;

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-direct {v0, v1, v8, v12, v5}, Landroid/support/v7/widget/Toolbar;->layoutChildLeft(Landroid/view/View;I[II)I

    move-result v8

    .line 1582
    add-int/lit8 v15, v15, 0x1

    goto :goto_11

    .line 1577
    .end local v10    # "centerViewsCount":I
    :cond_20
    move/from16 v0, v29

    if-le v9, v0, :cond_1f

    .line 1578
    sub-int v46, v9, v29

    sub-int v8, v8, v46

    goto :goto_10

    .line 1587
    .restart local v10    # "centerViewsCount":I
    :cond_21
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mTempViews:Ljava/util/ArrayList;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Ljava/util/ArrayList;->clear()V

    .line 1588
    return-void

    .line 1468
    nop

    :sswitch_data_0
    .sparse-switch
        0x30 -> :sswitch_0
        0x50 -> :sswitch_1
    .end sparse-switch
.end method

.method protected onMeasure(II)V
    .locals 37
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 1240
    const/4 v6, 0x0

    .line 1241
    .local v6, "width":I
    const/16 v25, 0x0

    .line 1242
    .local v25, "height":I
    const/16 v22, 0x0

    .line 1244
    .local v22, "childState":I
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/support/v7/widget/Toolbar;->mTempMargins:[I

    .line 1247
    .local v13, "collapsingMargins":[I
    invoke-static/range {p0 .. p0}, Landroid/support/v7/widget/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1248
    const/16 v29, 0x1

    .line 1249
    .local v29, "marginStartIndex":I
    const/16 v28, 0x0

    .line 1257
    .local v28, "marginEndIndex":I
    :goto_0
    const/16 v33, 0x0

    .line 1258
    .local v33, "navWidth":I
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v7/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Landroid/support/v7/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1259
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v7/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget v9, v0, Landroid/support/v7/widget/Toolbar;->mMaxButtonHeight:I

    move-object/from16 v3, p0

    move/from16 v5, p1

    move/from16 v7, p2

    invoke-direct/range {v3 .. v9}, Landroid/support/v7/widget/Toolbar;->measureChildConstrained(Landroid/view/View;IIIII)V

    .line 1261
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v7/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    invoke-virtual {v3}, Landroid/widget/ImageButton;->getMeasuredWidth()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/support/v7/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Landroid/support/v7/widget/Toolbar;->getHorizontalMargins(Landroid/view/View;)I

    move-result v5

    add-int v33, v3, v5

    .line 1262
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v7/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    invoke-virtual {v3}, Landroid/widget/ImageButton;->getMeasuredHeight()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/support/v7/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Landroid/support/v7/widget/Toolbar;->getVerticalMargins(Landroid/view/View;)I

    move-result v5

    add-int/2addr v3, v5

    move/from16 v0, v25

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v25

    .line 1264
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v7/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    invoke-static {v3}, Landroid/support/v4/view/ViewCompat;->getMeasuredState(Landroid/view/View;)I

    move-result v3

    move/from16 v0, v22

    invoke-static {v0, v3}, Landroid/support/v7/widget/ViewUtils;->combineMeasuredStates(II)I

    move-result v22

    .line 1268
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v7/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Landroid/support/v7/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1269
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v7/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget v9, v0, Landroid/support/v7/widget/Toolbar;->mMaxButtonHeight:I

    move-object/from16 v3, p0

    move/from16 v5, p1

    move/from16 v7, p2

    invoke-direct/range {v3 .. v9}, Landroid/support/v7/widget/Toolbar;->measureChildConstrained(Landroid/view/View;IIIII)V

    .line 1271
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v7/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    invoke-virtual {v3}, Landroid/widget/ImageButton;->getMeasuredWidth()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/support/v7/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Landroid/support/v7/widget/Toolbar;->getHorizontalMargins(Landroid/view/View;)I

    move-result v5

    add-int v33, v3, v5

    .line 1273
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v7/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    invoke-virtual {v3}, Landroid/widget/ImageButton;->getMeasuredHeight()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/support/v7/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Landroid/support/v7/widget/Toolbar;->getVerticalMargins(Landroid/view/View;)I

    move-result v5

    add-int/2addr v3, v5

    move/from16 v0, v25

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v25

    .line 1275
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v7/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    invoke-static {v3}, Landroid/support/v4/view/ViewCompat;->getMeasuredState(Landroid/view/View;)I

    move-result v3

    move/from16 v0, v22

    invoke-static {v0, v3}, Landroid/support/v7/widget/ViewUtils;->combineMeasuredStates(II)I

    move-result v22

    .line 1279
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/Toolbar;->getContentInsetStart()I

    move-result v24

    .line 1280
    .local v24, "contentInsetStart":I
    move/from16 v0, v24

    move/from16 v1, v33

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v3

    add-int/2addr v6, v3

    .line 1281
    const/4 v3, 0x0

    sub-int v5, v24, v33

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    aput v3, v13, v29

    .line 1283
    const/16 v32, 0x0

    .line 1284
    .local v32, "menuWidth":I
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v7/widget/Toolbar;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Landroid/support/v7/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1285
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v7/widget/Toolbar;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget v9, v0, Landroid/support/v7/widget/Toolbar;->mMaxButtonHeight:I

    move-object/from16 v3, p0

    move/from16 v5, p1

    move/from16 v7, p2

    invoke-direct/range {v3 .. v9}, Landroid/support/v7/widget/Toolbar;->measureChildConstrained(Landroid/view/View;IIIII)V

    .line 1287
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v7/widget/Toolbar;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    invoke-virtual {v3}, Landroid/support/v7/widget/ActionMenuView;->getMeasuredWidth()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/support/v7/widget/Toolbar;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Landroid/support/v7/widget/Toolbar;->getHorizontalMargins(Landroid/view/View;)I

    move-result v5

    add-int v32, v3, v5

    .line 1288
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v7/widget/Toolbar;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    invoke-virtual {v3}, Landroid/support/v7/widget/ActionMenuView;->getMeasuredHeight()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/support/v7/widget/Toolbar;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Landroid/support/v7/widget/Toolbar;->getVerticalMargins(Landroid/view/View;)I

    move-result v5

    add-int/2addr v3, v5

    move/from16 v0, v25

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v25

    .line 1290
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v7/widget/Toolbar;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    invoke-static {v3}, Landroid/support/v4/view/ViewCompat;->getMeasuredState(Landroid/view/View;)I

    move-result v3

    move/from16 v0, v22

    invoke-static {v0, v3}, Landroid/support/v7/widget/ViewUtils;->combineMeasuredStates(II)I

    move-result v22

    .line 1294
    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/Toolbar;->getContentInsetEnd()I

    move-result v23

    .line 1295
    .local v23, "contentInsetEnd":I
    move/from16 v0, v23

    move/from16 v1, v32

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v3

    add-int/2addr v6, v3

    .line 1296
    const/4 v3, 0x0

    sub-int v5, v23, v32

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    aput v3, v13, v28

    .line 1298
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v7/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Landroid/support/v7/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1299
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v7/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    const/4 v8, 0x0

    move-object/from16 v3, p0

    move/from16 v5, p1

    move/from16 v7, p2

    move-object v9, v13

    invoke-direct/range {v3 .. v9}, Landroid/support/v7/widget/Toolbar;->measureChildCollapseMargins(Landroid/view/View;IIII[I)I

    move-result v3

    add-int/2addr v6, v3

    .line 1301
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v7/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/support/v7/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Landroid/support/v7/widget/Toolbar;->getVerticalMargins(Landroid/view/View;)I

    move-result v5

    add-int/2addr v3, v5

    move/from16 v0, v25

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v25

    .line 1303
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v7/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    invoke-static {v3}, Landroid/support/v4/view/ViewCompat;->getMeasuredState(Landroid/view/View;)I

    move-result v3

    move/from16 v0, v22

    invoke-static {v0, v3}, Landroid/support/v7/widget/ViewUtils;->combineMeasuredStates(II)I

    move-result v22

    .line 1307
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v7/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Landroid/support/v7/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1308
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v7/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    const/4 v8, 0x0

    move-object/from16 v3, p0

    move/from16 v5, p1

    move/from16 v7, p2

    move-object v9, v13

    invoke-direct/range {v3 .. v9}, Landroid/support/v7/widget/Toolbar;->measureChildCollapseMargins(Landroid/view/View;IIII[I)I

    move-result v3

    add-int/2addr v6, v3

    .line 1310
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v7/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/support/v7/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Landroid/support/v7/widget/Toolbar;->getVerticalMargins(Landroid/view/View;)I

    move-result v5

    add-int/2addr v3, v5

    move/from16 v0, v25

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v25

    .line 1312
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v7/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    invoke-static {v3}, Landroid/support/v4/view/ViewCompat;->getMeasuredState(Landroid/view/View;)I

    move-result v3

    move/from16 v0, v22

    invoke-static {v0, v3}, Landroid/support/v7/widget/ViewUtils;->combineMeasuredStates(II)I

    move-result v22

    .line 1316
    :cond_4
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/Toolbar;->getChildCount()I

    move-result v21

    .line 1317
    .local v21, "childCount":I
    const/16 v26, 0x0

    .local v26, "i":I
    :goto_1
    move/from16 v0, v26

    move/from16 v1, v21

    if-ge v0, v1, :cond_8

    .line 1318
    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1319
    .local v4, "child":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v27

    check-cast v27, Landroid/support/v7/widget/Toolbar$LayoutParams;

    .line 1320
    .local v27, "lp":Landroid/support/v7/widget/Toolbar$LayoutParams;
    move-object/from16 v0, v27

    iget v3, v0, Landroid/support/v7/widget/Toolbar$LayoutParams;->mViewType:I

    if-nez v3, :cond_5

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Landroid/support/v7/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 1317
    :cond_5
    :goto_2
    add-int/lit8 v26, v26, 0x1

    goto :goto_1

    .line 1251
    .end local v4    # "child":Landroid/view/View;
    .end local v21    # "childCount":I
    .end local v23    # "contentInsetEnd":I
    .end local v24    # "contentInsetStart":I
    .end local v26    # "i":I
    .end local v27    # "lp":Landroid/support/v7/widget/Toolbar$LayoutParams;
    .end local v28    # "marginEndIndex":I
    .end local v29    # "marginStartIndex":I
    .end local v32    # "menuWidth":I
    .end local v33    # "navWidth":I
    :cond_6
    const/16 v29, 0x0

    .line 1252
    .restart local v29    # "marginStartIndex":I
    const/16 v28, 0x1

    .restart local v28    # "marginEndIndex":I
    goto/16 :goto_0

    .line 1325
    .restart local v4    # "child":Landroid/view/View;
    .restart local v21    # "childCount":I
    .restart local v23    # "contentInsetEnd":I
    .restart local v24    # "contentInsetStart":I
    .restart local v26    # "i":I
    .restart local v27    # "lp":Landroid/support/v7/widget/Toolbar$LayoutParams;
    .restart local v32    # "menuWidth":I
    .restart local v33    # "navWidth":I
    :cond_7
    const/4 v8, 0x0

    move-object/from16 v3, p0

    move/from16 v5, p1

    move/from16 v7, p2

    move-object v9, v13

    invoke-direct/range {v3 .. v9}, Landroid/support/v7/widget/Toolbar;->measureChildCollapseMargins(Landroid/view/View;IIII[I)I

    move-result v3

    add-int/2addr v6, v3

    .line 1327
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Landroid/support/v7/widget/Toolbar;->getVerticalMargins(Landroid/view/View;)I

    move-result v5

    add-int/2addr v3, v5

    move/from16 v0, v25

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v25

    .line 1328
    invoke-static {v4}, Landroid/support/v4/view/ViewCompat;->getMeasuredState(Landroid/view/View;)I

    move-result v3

    move/from16 v0, v22

    invoke-static {v0, v3}, Landroid/support/v7/widget/ViewUtils;->combineMeasuredStates(II)I

    move-result v22

    goto :goto_2

    .line 1332
    .end local v4    # "child":Landroid/view/View;
    .end local v27    # "lp":Landroid/support/v7/widget/Toolbar$LayoutParams;
    :cond_8
    const/16 v36, 0x0

    .line 1333
    .local v36, "titleWidth":I
    const/16 v34, 0x0

    .line 1334
    .local v34, "titleHeight":I
    move-object/from16 v0, p0

    iget v3, v0, Landroid/support/v7/widget/Toolbar;->mTitleMarginTop:I

    move-object/from16 v0, p0

    iget v5, v0, Landroid/support/v7/widget/Toolbar;->mTitleMarginBottom:I

    add-int v12, v3, v5

    .line 1335
    .local v12, "titleVertMargins":I
    move-object/from16 v0, p0

    iget v3, v0, Landroid/support/v7/widget/Toolbar;->mTitleMarginStart:I

    move-object/from16 v0, p0

    iget v5, v0, Landroid/support/v7/widget/Toolbar;->mTitleMarginEnd:I

    add-int v35, v3, v5

    .line 1336
    .local v35, "titleHorizMargins":I
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Landroid/support/v7/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 1337
    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    add-int v10, v6, v35

    move-object/from16 v7, p0

    move/from16 v9, p1

    move/from16 v11, p2

    invoke-direct/range {v7 .. v13}, Landroid/support/v7/widget/Toolbar;->measureChildCollapseMargins(Landroid/view/View;IIII[I)I

    move-result v36

    .line 1340
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Landroid/support/v7/widget/Toolbar;->getHorizontalMargins(Landroid/view/View;)I

    move-result v5

    add-int v36, v3, v5

    .line 1341
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Landroid/support/v7/widget/Toolbar;->getVerticalMargins(Landroid/view/View;)I

    move-result v5

    add-int v34, v3, v5

    .line 1342
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-static {v3}, Landroid/support/v4/view/ViewCompat;->getMeasuredState(Landroid/view/View;)I

    move-result v3

    move/from16 v0, v22

    invoke-static {v0, v3}, Landroid/support/v7/widget/ViewUtils;->combineMeasuredStates(II)I

    move-result v22

    .line 1345
    :cond_9
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v7/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Landroid/support/v7/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 1346
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/support/v7/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    add-int v17, v6, v35

    add-int v19, v34, v12

    move-object/from16 v14, p0

    move/from16 v16, p1

    move/from16 v18, p2

    move-object/from16 v20, v13

    invoke-direct/range {v14 .. v20}, Landroid/support/v7/widget/Toolbar;->measureChildCollapseMargins(Landroid/view/View;IIII[I)I

    move-result v3

    move/from16 v0, v36

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v36

    .line 1350
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v7/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/support/v7/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Landroid/support/v7/widget/Toolbar;->getVerticalMargins(Landroid/view/View;)I

    move-result v5

    add-int/2addr v3, v5

    add-int v34, v34, v3

    .line 1352
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v7/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-static {v3}, Landroid/support/v4/view/ViewCompat;->getMeasuredState(Landroid/view/View;)I

    move-result v3

    move/from16 v0, v22

    invoke-static {v0, v3}, Landroid/support/v7/widget/ViewUtils;->combineMeasuredStates(II)I

    move-result v22

    .line 1356
    :cond_a
    add-int v6, v6, v36

    .line 1357
    move/from16 v0, v25

    move/from16 v1, v34

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v25

    .line 1361
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/Toolbar;->getPaddingLeft()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/Toolbar;->getPaddingRight()I

    move-result v5

    add-int/2addr v3, v5

    add-int/2addr v6, v3

    .line 1362
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/Toolbar;->getPaddingTop()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/Toolbar;->getPaddingBottom()I

    move-result v5

    add-int/2addr v3, v5

    add-int v25, v25, v3

    .line 1364
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/Toolbar;->getSuggestedMinimumWidth()I

    move-result v3

    invoke-static {v6, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    const/high16 v5, -0x1000000

    and-int v5, v5, v22

    move/from16 v0, p1

    invoke-static {v3, v0, v5}, Landroid/support/v4/view/ViewCompat;->resolveSizeAndState(III)I

    move-result v31

    .line 1367
    .local v31, "measuredWidth":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/Toolbar;->getSuggestedMinimumHeight()I

    move-result v3

    move/from16 v0, v25

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    shl-int/lit8 v5, v22, 0x10

    move/from16 v0, p2

    invoke-static {v3, v0, v5}, Landroid/support/v4/view/ViewCompat;->resolveSizeAndState(III)I

    move-result v30

    .line 1371
    .local v30, "measuredHeight":I
    invoke-direct/range {p0 .. p0}, Landroid/support/v7/widget/Toolbar;->shouldCollapse()Z

    move-result v3

    if-eqz v3, :cond_b

    const/16 v30, 0x0

    .end local v30    # "measuredHeight":I
    :cond_b
    move-object/from16 v0, p0

    move/from16 v1, v31

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/widget/Toolbar;->setMeasuredDimension(II)V

    .line 1372
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 4
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 1097
    move-object v2, p1

    check-cast v2, Landroid/support/v7/widget/Toolbar$SavedState;

    .line 1098
    .local v2, "ss":Landroid/support/v7/widget/Toolbar$SavedState;
    invoke-virtual {v2}, Landroid/support/v7/widget/Toolbar$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v3

    invoke-super {p0, v3}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1100
    iget-object v3, p0, Landroid/support/v7/widget/Toolbar;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/support/v7/widget/Toolbar;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    invoke-virtual {v3}, Landroid/support/v7/widget/ActionMenuView;->peekMenu()Landroid/support/v7/view/menu/MenuBuilder;

    move-result-object v1

    .line 1101
    .local v1, "menu":Landroid/view/Menu;
    :goto_0
    iget v3, v2, Landroid/support/v7/widget/Toolbar$SavedState;->expandedMenuItemId:I

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/support/v7/widget/Toolbar;->mExpandedMenuPresenter:Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;

    if-eqz v3, :cond_0

    if-eqz v1, :cond_0

    .line 1102
    iget v3, v2, Landroid/support/v7/widget/Toolbar$SavedState;->expandedMenuItemId:I

    invoke-interface {v1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 1103
    .local v0, "item":Landroid/view/MenuItem;
    if-eqz v0, :cond_0

    .line 1104
    invoke-static {v0}, Landroid/support/v4/view/MenuItemCompat;->expandActionView(Landroid/view/MenuItem;)Z

    .line 1108
    .end local v0    # "item":Landroid/view/MenuItem;
    :cond_0
    iget-boolean v3, v2, Landroid/support/v7/widget/Toolbar$SavedState;->isOverflowOpen:Z

    if-eqz v3, :cond_1

    .line 1109
    invoke-direct {p0}, Landroid/support/v7/widget/Toolbar;->postShowOverflowMenu()V

    .line 1111
    :cond_1
    return-void

    .line 1100
    .end local v1    # "menu":Landroid/view/Menu;
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 3
    .param p1, "layoutDirection"    # I

    .prologue
    const/4 v0, 0x1

    .line 333
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v1, v2, :cond_0

    .line 334
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRtlPropertiesChanged(I)V

    .line 336
    :cond_0
    iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->mContentInsets:Landroid/support/v7/widget/RtlSpacingHelper;

    if-ne p1, v0, :cond_1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RtlSpacingHelper;->setDirection(Z)V

    .line 337
    return-void

    .line 336
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .prologue
    .line 1085
    new-instance v0, Landroid/support/v7/widget/Toolbar$SavedState;

    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/widget/Toolbar$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1087
    .local v0, "state":Landroid/support/v7/widget/Toolbar$SavedState;
    iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->mExpandedMenuPresenter:Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->mExpandedMenuPresenter:Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;

    iget-object v1, v1, Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Landroid/support/v7/view/menu/MenuItemImpl;

    if-eqz v1, :cond_0

    .line 1088
    iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->mExpandedMenuPresenter:Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;

    iget-object v1, v1, Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Landroid/support/v7/view/menu/MenuItemImpl;

    invoke-virtual {v1}, Landroid/support/v7/view/menu/MenuItemImpl;->getItemId()I

    move-result v1

    iput v1, v0, Landroid/support/v7/widget/Toolbar$SavedState;->expandedMenuItemId:I

    .line 1091
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->isOverflowMenuShowing()Z

    move-result v1

    iput-boolean v1, v0, Landroid/support/v7/widget/Toolbar$SavedState;->isOverflowOpen:Z

    .line 1092
    return-object v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1131
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    move-result v0

    .line 1132
    .local v0, "action":I
    if-nez v0, :cond_0

    .line 1133
    iput-boolean v4, p0, Landroid/support/v7/widget/Toolbar;->mEatingTouch:Z

    .line 1136
    :cond_0
    iget-boolean v2, p0, Landroid/support/v7/widget/Toolbar;->mEatingTouch:Z

    if-nez v2, :cond_1

    .line 1137
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 1138
    .local v1, "handled":Z
    if-nez v0, :cond_1

    if-nez v1, :cond_1

    .line 1139
    iput-boolean v3, p0, Landroid/support/v7/widget/Toolbar;->mEatingTouch:Z

    .line 1143
    .end local v1    # "handled":Z
    :cond_1
    if-eq v0, v3, :cond_2

    const/4 v2, 0x3

    if-ne v0, v2, :cond_3

    .line 1144
    :cond_2
    iput-boolean v4, p0, Landroid/support/v7/widget/Toolbar;->mEatingTouch:Z

    .line 1147
    :cond_3
    return v3
.end method

.method removeChildrenForExpandedActionView()V
    .locals 6

    .prologue
    .line 1785
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getChildCount()I

    move-result v1

    .line 1787
    .local v1, "childCount":I
    add-int/lit8 v2, v1, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_1

    .line 1788
    invoke-virtual {p0, v2}, Landroid/support/v7/widget/Toolbar;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1789
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/support/v7/widget/Toolbar$LayoutParams;

    .line 1790
    .local v3, "lp":Landroid/support/v7/widget/Toolbar$LayoutParams;
    iget v4, v3, Landroid/support/v7/widget/Toolbar$LayoutParams;->mViewType:I

    const/4 v5, 0x2

    if-eq v4, v5, :cond_0

    iget-object v4, p0, Landroid/support/v7/widget/Toolbar;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    if-eq v0, v4, :cond_0

    .line 1791
    invoke-virtual {p0, v2}, Landroid/support/v7/widget/Toolbar;->removeViewAt(I)V

    .line 1792
    iget-object v4, p0, Landroid/support/v7/widget/Toolbar;->mHiddenViews:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1787
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 1795
    .end local v0    # "child":Landroid/view/View;
    .end local v3    # "lp":Landroid/support/v7/widget/Toolbar$LayoutParams;
    :cond_1
    return-void
.end method

.method public setCollapsible(Z)V
    .locals 0
    .param p1, "collapsible"    # Z

    .prologue
    .line 1816
    iput-boolean p1, p0, Landroid/support/v7/widget/Toolbar;->mCollapsible:Z

    .line 1817
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->requestLayout()V

    .line 1818
    return-void
.end method

.method public setContentInsetsAbsolute(II)V
    .locals 1
    .param p1, "contentInsetLeft"    # I
    .param p2, "contentInsetRight"    # I

    .prologue
    .line 993
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mContentInsets:Landroid/support/v7/widget/RtlSpacingHelper;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/RtlSpacingHelper;->setAbsolute(II)V

    .line 994
    return-void
.end method

.method public setContentInsetsRelative(II)V
    .locals 1
    .param p1, "contentInsetStart"    # I
    .param p2, "contentInsetEnd"    # I

    .prologue
    .line 935
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mContentInsets:Landroid/support/v7/widget/RtlSpacingHelper;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/RtlSpacingHelper;->setRelative(II)V

    .line 936
    return-void
.end method

.method public setLogo(I)V
    .locals 1
    .param p1, "resId"    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    .prologue
    .line 349
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mTintManager:Landroid/support/v7/widget/TintManager;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/TintManager;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/Toolbar;->setLogo(Landroid/graphics/drawable/Drawable;)V

    .line 350
    return-void
.end method

.method public setLogo(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 465
    if-eqz p1, :cond_2

    .line 466
    invoke-direct {p0}, Landroid/support/v7/widget/Toolbar;->ensureLogoView()V

    .line 467
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Landroid/support/v7/widget/Toolbar;->isChildOrHidden(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 468
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Landroid/support/v7/widget/Toolbar;->addSystemView(Landroid/view/View;Z)V

    .line 474
    :cond_0
    :goto_0
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 475
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 477
    :cond_1
    return-void

    .line 470
    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Landroid/support/v7/widget/Toolbar;->isChildOrHidden(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 471
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/Toolbar;->removeView(Landroid/view/View;)V

    .line 472
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mHiddenViews:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public setLogoDescription(I)V
    .locals 1
    .param p1, "resId"    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    .prologue
    .line 499
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/Toolbar;->setLogoDescription(Ljava/lang/CharSequence;)V

    .line 500
    return-void
.end method

.method public setLogoDescription(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "description"    # Ljava/lang/CharSequence;

    .prologue
    .line 511
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 512
    invoke-direct {p0}, Landroid/support/v7/widget/Toolbar;->ensureLogoView()V

    .line 514
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 515
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 517
    :cond_1
    return-void
.end method

.method public setMenu(Landroid/support/v7/view/menu/MenuBuilder;Landroid/support/v7/widget/ActionMenuPresenter;)V
    .locals 5
    .param p1, "menu"    # Landroid/support/v7/view/menu/MenuBuilder;
    .param p2, "outerPresenter"    # Landroid/support/v7/widget/ActionMenuPresenter;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 392
    if-nez p1, :cond_1

    iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    if-nez v1, :cond_1

    .line 424
    :cond_0
    :goto_0
    return-void

    .line 396
    :cond_1
    invoke-direct {p0}, Landroid/support/v7/widget/Toolbar;->ensureMenuView()V

    .line 397
    iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    invoke-virtual {v1}, Landroid/support/v7/widget/ActionMenuView;->peekMenu()Landroid/support/v7/view/menu/MenuBuilder;

    move-result-object v0

    .line 398
    .local v0, "oldMenu":Landroid/support/v7/view/menu/MenuBuilder;
    if-eq v0, p1, :cond_0

    .line 402
    if-eqz v0, :cond_2

    .line 403
    iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->mOuterActionMenuPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    invoke-virtual {v0, v1}, Landroid/support/v7/view/menu/MenuBuilder;->removeMenuPresenter(Landroid/support/v7/view/menu/MenuPresenter;)V

    .line 404
    iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->mExpandedMenuPresenter:Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;

    invoke-virtual {v0, v1}, Landroid/support/v7/view/menu/MenuBuilder;->removeMenuPresenter(Landroid/support/v7/view/menu/MenuPresenter;)V

    .line 407
    :cond_2
    iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->mExpandedMenuPresenter:Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;

    if-nez v1, :cond_3

    .line 408
    new-instance v1, Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;

    invoke-direct {v1, p0, v4}, Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;-><init>(Landroid/support/v7/widget/Toolbar;Landroid/support/v7/widget/Toolbar$1;)V

    iput-object v1, p0, Landroid/support/v7/widget/Toolbar;->mExpandedMenuPresenter:Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;

    .line 411
    :cond_3
    invoke-virtual {p2, v3}, Landroid/support/v7/widget/ActionMenuPresenter;->setExpandedActionViewsExclusive(Z)V

    .line 412
    if-eqz p1, :cond_4

    .line 413
    iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->mPopupContext:Landroid/content/Context;

    invoke-virtual {p1, p2, v1}, Landroid/support/v7/view/menu/MenuBuilder;->addMenuPresenter(Landroid/support/v7/view/menu/MenuPresenter;Landroid/content/Context;)V

    .line 414
    iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->mExpandedMenuPresenter:Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;

    iget-object v2, p0, Landroid/support/v7/widget/Toolbar;->mPopupContext:Landroid/content/Context;

    invoke-virtual {p1, v1, v2}, Landroid/support/v7/view/menu/MenuBuilder;->addMenuPresenter(Landroid/support/v7/view/menu/MenuPresenter;Landroid/content/Context;)V

    .line 421
    :goto_1
    iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    iget v2, p0, Landroid/support/v7/widget/Toolbar;->mPopupTheme:I

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/ActionMenuView;->setPopupTheme(I)V

    .line 422
    iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    invoke-virtual {v1, p2}, Landroid/support/v7/widget/ActionMenuView;->setPresenter(Landroid/support/v7/widget/ActionMenuPresenter;)V

    .line 423
    iput-object p2, p0, Landroid/support/v7/widget/Toolbar;->mOuterActionMenuPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    goto :goto_0

    .line 416
    :cond_4
    iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->mPopupContext:Landroid/content/Context;

    invoke-virtual {p2, v1, v4}, Landroid/support/v7/widget/ActionMenuPresenter;->initForMenu(Landroid/content/Context;Landroid/support/v7/view/menu/MenuBuilder;)V

    .line 417
    iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->mExpandedMenuPresenter:Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;

    iget-object v2, p0, Landroid/support/v7/widget/Toolbar;->mPopupContext:Landroid/content/Context;

    invoke-virtual {v1, v2, v4}, Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;->initForMenu(Landroid/content/Context;Landroid/support/v7/view/menu/MenuBuilder;)V

    .line 418
    invoke-virtual {p2, v3}, Landroid/support/v7/widget/ActionMenuPresenter;->updateMenuView(Z)V

    .line 419
    iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->mExpandedMenuPresenter:Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;

    invoke-virtual {v1, v3}, Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;->updateMenuView(Z)V

    goto :goto_1
.end method

.method public setMenuCallbacks(Landroid/support/v7/view/menu/MenuPresenter$Callback;Landroid/support/v7/view/menu/MenuBuilder$Callback;)V
    .locals 0
    .param p1, "pcb"    # Landroid/support/v7/view/menu/MenuPresenter$Callback;
    .param p2, "mcb"    # Landroid/support/v7/view/menu/MenuBuilder$Callback;

    .prologue
    .line 1825
    iput-object p1, p0, Landroid/support/v7/widget/Toolbar;->mActionMenuPresenterCallback:Landroid/support/v7/view/menu/MenuPresenter$Callback;

    .line 1826
    iput-object p2, p0, Landroid/support/v7/widget/Toolbar;->mMenuBuilderCallback:Landroid/support/v7/view/menu/MenuBuilder$Callback;

    .line 1827
    return-void
.end method

.method public setNavigationContentDescription(I)V
    .locals 1
    .param p1, "resId"    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    .prologue
    .line 743
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/Toolbar;->setNavigationContentDescription(Ljava/lang/CharSequence;)V

    .line 744
    return-void

    .line 743
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setNavigationContentDescription(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "description"    # Ljava/lang/CharSequence;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 755
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 756
    invoke-direct {p0}, Landroid/support/v7/widget/Toolbar;->ensureNavButtonView()V

    .line 758
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    if-eqz v0, :cond_1

    .line 759
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 761
    :cond_1
    return-void
.end method

.method public setNavigationIcon(I)V
    .locals 1
    .param p1, "resId"    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    .prologue
    .line 776
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mTintManager:Landroid/support/v7/widget/TintManager;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/TintManager;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/Toolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    .line 777
    return-void
.end method

.method public setNavigationIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 792
    if-eqz p1, :cond_2

    .line 793
    invoke-direct {p0}, Landroid/support/v7/widget/Toolbar;->ensureNavButtonView()V

    .line 794
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    invoke-direct {p0, v0}, Landroid/support/v7/widget/Toolbar;->isChildOrHidden(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 795
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Landroid/support/v7/widget/Toolbar;->addSystemView(Landroid/view/View;Z)V

    .line 801
    :cond_0
    :goto_0
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    if-eqz v0, :cond_1

    .line 802
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 804
    :cond_1
    return-void

    .line 797
    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    invoke-direct {p0, v0}, Landroid/support/v7/widget/Toolbar;->isChildOrHidden(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 798
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/Toolbar;->removeView(Landroid/view/View;)V

    .line 799
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mHiddenViews:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 826
    invoke-direct {p0}, Landroid/support/v7/widget/Toolbar;->ensureNavButtonView()V

    .line 827
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 828
    return-void
.end method

.method public setOnMenuItemClickListener(Landroid/support/v7/widget/Toolbar$OnMenuItemClickListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/support/v7/widget/Toolbar$OnMenuItemClickListener;

    .prologue
    .line 915
    iput-object p1, p0, Landroid/support/v7/widget/Toolbar;->mOnMenuItemClickListener:Landroid/support/v7/widget/Toolbar$OnMenuItemClickListener;

    .line 916
    return-void
.end method

.method public setOverflowIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 849
    invoke-direct {p0}, Landroid/support/v7/widget/Toolbar;->ensureMenu()V

    .line 850
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/ActionMenuView;->setOverflowIcon(Landroid/graphics/drawable/Drawable;)V

    .line 851
    return-void
.end method

.method public setPopupTheme(I)V
    .locals 2
    .param p1, "resId"    # I
        .annotation build Landroid/support/annotation/StyleRes;
        .end annotation
    .end param

    .prologue
    .line 313
    iget v0, p0, Landroid/support/v7/widget/Toolbar;->mPopupTheme:I

    if-eq v0, p1, :cond_0

    .line 314
    iput p1, p0, Landroid/support/v7/widget/Toolbar;->mPopupTheme:I

    .line 315
    if-nez p1, :cond_1

    .line 316
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/Toolbar;->mPopupContext:Landroid/content/Context;

    .line 321
    :cond_0
    :goto_0
    return-void

    .line 318
    :cond_1
    new-instance v0, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Landroid/support/v7/widget/Toolbar;->mPopupContext:Landroid/content/Context;

    goto :goto_0
.end method

.method public setSubtitle(I)V
    .locals 1
    .param p1, "resId"    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    .prologue
    .line 639
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/Toolbar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 640
    return-void
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)V
    .locals 3
    .param p1, "subtitle"    # Ljava/lang/CharSequence;

    .prologue
    .line 650
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 651
    iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    if-nez v1, :cond_1

    .line 652
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 653
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/support/v7/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    .line 654
    iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->setSingleLine()V

    .line 655
    iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 656
    iget v1, p0, Landroid/support/v7/widget/Toolbar;->mSubtitleTextAppearance:I

    if-eqz v1, :cond_0

    .line 657
    iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    iget v2, p0, Landroid/support/v7/widget/Toolbar;->mSubtitleTextAppearance:I

    invoke-virtual {v1, v0, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 659
    :cond_0
    iget v1, p0, Landroid/support/v7/widget/Toolbar;->mSubtitleTextColor:I

    if-eqz v1, :cond_1

    .line 660
    iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    iget v2, p0, Landroid/support/v7/widget/Toolbar;->mSubtitleTextColor:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 663
    .end local v0    # "context":Landroid/content/Context;
    :cond_1
    iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-direct {p0, v1}, Landroid/support/v7/widget/Toolbar;->isChildOrHidden(Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 664
    iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Landroid/support/v7/widget/Toolbar;->addSystemView(Landroid/view/View;Z)V

    .line 670
    :cond_2
    :goto_0
    iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    if-eqz v1, :cond_3

    .line 671
    iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 673
    :cond_3
    iput-object p1, p0, Landroid/support/v7/widget/Toolbar;->mSubtitleText:Ljava/lang/CharSequence;

    .line 674
    return-void

    .line 666
    :cond_4
    iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-direct {p0, v1}, Landroid/support/v7/widget/Toolbar;->isChildOrHidden(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 667
    iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/Toolbar;->removeView(Landroid/view/View;)V

    .line 668
    iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->mHiddenViews:Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/support/v7/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public setSubtitleTextAppearance(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resId"    # I
        .annotation build Landroid/support/annotation/StyleRes;
        .end annotation
    .end param

    .prologue
    .line 692
    iput p2, p0, Landroid/support/v7/widget/Toolbar;->mSubtitleTextAppearance:I

    .line 693
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 694
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1, p2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 696
    :cond_0
    return-void
.end method

.method public setSubtitleTextColor(I)V
    .locals 1
    .param p1, "color"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 716
    iput p1, p0, Landroid/support/v7/widget/Toolbar;->mSubtitleTextColor:I

    .line 717
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 718
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 720
    :cond_0
    return-void
.end method

.method public setTitle(I)V
    .locals 1
    .param p1, "resId"    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    .prologue
    .line 584
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 585
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 3
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 596
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 597
    iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    if-nez v1, :cond_1

    .line 598
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 599
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    .line 600
    iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->setSingleLine()V

    .line 601
    iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 602
    iget v1, p0, Landroid/support/v7/widget/Toolbar;->mTitleTextAppearance:I

    if-eqz v1, :cond_0

    .line 603
    iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    iget v2, p0, Landroid/support/v7/widget/Toolbar;->mTitleTextAppearance:I

    invoke-virtual {v1, v0, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 605
    :cond_0
    iget v1, p0, Landroid/support/v7/widget/Toolbar;->mTitleTextColor:I

    if-eqz v1, :cond_1

    .line 606
    iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    iget v2, p0, Landroid/support/v7/widget/Toolbar;->mTitleTextColor:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 609
    .end local v0    # "context":Landroid/content/Context;
    :cond_1
    iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-direct {p0, v1}, Landroid/support/v7/widget/Toolbar;->isChildOrHidden(Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 610
    iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Landroid/support/v7/widget/Toolbar;->addSystemView(Landroid/view/View;Z)V

    .line 616
    :cond_2
    :goto_0
    iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    if-eqz v1, :cond_3

    .line 617
    iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 619
    :cond_3
    iput-object p1, p0, Landroid/support/v7/widget/Toolbar;->mTitleText:Ljava/lang/CharSequence;

    .line 620
    return-void

    .line 612
    :cond_4
    iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-direct {p0, v1}, Landroid/support/v7/widget/Toolbar;->isChildOrHidden(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 613
    iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/Toolbar;->removeView(Landroid/view/View;)V

    .line 614
    iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->mHiddenViews:Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public setTitleTextAppearance(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resId"    # I
        .annotation build Landroid/support/annotation/StyleRes;
        .end annotation
    .end param

    .prologue
    .line 681
    iput p2, p0, Landroid/support/v7/widget/Toolbar;->mTitleTextAppearance:I

    .line 682
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 683
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1, p2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 685
    :cond_0
    return-void
.end method

.method public setTitleTextColor(I)V
    .locals 1
    .param p1, "color"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 704
    iput p1, p0, Landroid/support/v7/widget/Toolbar;->mTitleTextColor:I

    .line 705
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 706
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 708
    :cond_0
    return-void
.end method

.method public showOverflowMenu()Z
    .locals 1

    .prologue
    .line 378
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionMenuView;->showOverflowMenu()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
