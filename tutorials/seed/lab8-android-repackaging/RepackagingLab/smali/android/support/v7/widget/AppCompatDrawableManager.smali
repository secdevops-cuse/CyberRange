.class public final Landroid/support/v7/widget/AppCompatDrawableManager;
.super Ljava/lang/Object;
.source "AppCompatDrawableManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/widget/AppCompatDrawableManager$ColorFilterLruCache;,
        Landroid/support/v7/widget/AppCompatDrawableManager$InflateDelegate;
    }
.end annotation


# static fields
.field private static final COLORFILTER_COLOR_BACKGROUND_MULTIPLY:[I

.field private static final COLORFILTER_COLOR_CONTROL_ACTIVATED:[I

.field private static final COLORFILTER_TINT_COLOR_CONTROL_NORMAL:[I

.field private static final COLOR_FILTER_CACHE:Landroid/support/v7/widget/AppCompatDrawableManager$ColorFilterLruCache;

.field private static final DEBUG:Z = false

.field private static final DEFAULT_MODE:Landroid/graphics/PorterDuff$Mode;

.field private static INSTANCE:Landroid/support/v7/widget/AppCompatDrawableManager; = null

.field private static final TAG:Ljava/lang/String; = "TintManager"

.field private static final TINT_CHECKABLE_BUTTON_LIST:[I

.field private static final TINT_COLOR_CONTROL_NORMAL:[I

.field private static final TINT_COLOR_CONTROL_STATE_LIST:[I


# instance fields
.field private mDelegates:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v7/widget/AppCompatDrawableManager$InflateDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private mTintLists:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Landroid/content/Context;",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/content/res/ColorStateList;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 67
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    sput-object v0, Landroid/support/v7/widget/AppCompatDrawableManager;->DEFAULT_MODE:Landroid/graphics/PorterDuff$Mode;

    .line 78
    new-instance v0, Landroid/support/v7/widget/AppCompatDrawableManager$ColorFilterLruCache;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Landroid/support/v7/widget/AppCompatDrawableManager$ColorFilterLruCache;-><init>(I)V

    sput-object v0, Landroid/support/v7/widget/AppCompatDrawableManager;->COLOR_FILTER_CACHE:Landroid/support/v7/widget/AppCompatDrawableManager$ColorFilterLruCache;

    .line 84
    new-array v0, v6, [I

    sget v1, Landroid/support/v7/appcompat/R$drawable;->abc_textfield_search_default_mtrl_alpha:I

    aput v1, v0, v3

    sget v1, Landroid/support/v7/appcompat/R$drawable;->abc_textfield_default_mtrl_alpha:I

    aput v1, v0, v4

    sget v1, Landroid/support/v7/appcompat/R$drawable;->abc_ab_share_pack_mtrl_alpha:I

    aput v1, v0, v5

    sput-object v0, Landroid/support/v7/widget/AppCompatDrawableManager;->COLORFILTER_TINT_COLOR_CONTROL_NORMAL:[I

    .line 94
    const/16 v0, 0xc

    new-array v0, v0, [I

    sget v1, Landroid/support/v7/appcompat/R$drawable;->abc_ic_ab_back_mtrl_am_alpha:I

    aput v1, v0, v3

    sget v1, Landroid/support/v7/appcompat/R$drawable;->abc_ic_go_search_api_mtrl_alpha:I

    aput v1, v0, v4

    sget v1, Landroid/support/v7/appcompat/R$drawable;->abc_ic_search_api_mtrl_alpha:I

    aput v1, v0, v5

    sget v1, Landroid/support/v7/appcompat/R$drawable;->abc_ic_commit_search_api_mtrl_alpha:I

    aput v1, v0, v6

    sget v1, Landroid/support/v7/appcompat/R$drawable;->abc_ic_clear_mtrl_alpha:I

    aput v1, v0, v7

    const/4 v1, 0x5

    sget v2, Landroid/support/v7/appcompat/R$drawable;->abc_ic_menu_share_mtrl_alpha:I

    aput v2, v0, v1

    const/4 v1, 0x6

    sget v2, Landroid/support/v7/appcompat/R$drawable;->abc_ic_menu_copy_mtrl_am_alpha:I

    aput v2, v0, v1

    const/4 v1, 0x7

    sget v2, Landroid/support/v7/appcompat/R$drawable;->abc_ic_menu_cut_mtrl_alpha:I

    aput v2, v0, v1

    const/16 v1, 0x8

    sget v2, Landroid/support/v7/appcompat/R$drawable;->abc_ic_menu_selectall_mtrl_alpha:I

    aput v2, v0, v1

    const/16 v1, 0x9

    sget v2, Landroid/support/v7/appcompat/R$drawable;->abc_ic_menu_paste_mtrl_am_alpha:I

    aput v2, v0, v1

    const/16 v1, 0xa

    sget v2, Landroid/support/v7/appcompat/R$drawable;->abc_ic_menu_moreoverflow_mtrl_alpha:I

    aput v2, v0, v1

    const/16 v1, 0xb

    sget v2, Landroid/support/v7/appcompat/R$drawable;->abc_ic_voice_search_api_mtrl_alpha:I

    aput v2, v0, v1

    sput-object v0, Landroid/support/v7/widget/AppCompatDrawableManager;->TINT_COLOR_CONTROL_NORMAL:[I

    .line 113
    new-array v0, v7, [I

    sget v1, Landroid/support/v7/appcompat/R$drawable;->abc_textfield_activated_mtrl_alpha:I

    aput v1, v0, v3

    sget v1, Landroid/support/v7/appcompat/R$drawable;->abc_textfield_search_activated_mtrl_alpha:I

    aput v1, v0, v4

    sget v1, Landroid/support/v7/appcompat/R$drawable;->abc_cab_background_top_mtrl_alpha:I

    aput v1, v0, v5

    sget v1, Landroid/support/v7/appcompat/R$drawable;->abc_text_cursor_material:I

    aput v1, v0, v6

    sput-object v0, Landroid/support/v7/widget/AppCompatDrawableManager;->COLORFILTER_COLOR_CONTROL_ACTIVATED:[I

    .line 124
    new-array v0, v6, [I

    sget v1, Landroid/support/v7/appcompat/R$drawable;->abc_popup_background_mtrl_mult:I

    aput v1, v0, v3

    sget v1, Landroid/support/v7/appcompat/R$drawable;->abc_cab_background_internal_bg:I

    aput v1, v0, v4

    sget v1, Landroid/support/v7/appcompat/R$drawable;->abc_menu_hardkey_panel_mtrl_mult:I

    aput v1, v0, v5

    sput-object v0, Landroid/support/v7/widget/AppCompatDrawableManager;->COLORFILTER_COLOR_BACKGROUND_MULTIPLY:[I

    .line 134
    const/16 v0, 0xa

    new-array v0, v0, [I

    sget v1, Landroid/support/v7/appcompat/R$drawable;->abc_edit_text_material:I

    aput v1, v0, v3

    sget v1, Landroid/support/v7/appcompat/R$drawable;->abc_tab_indicator_material:I

    aput v1, v0, v4

    sget v1, Landroid/support/v7/appcompat/R$drawable;->abc_textfield_search_material:I

    aput v1, v0, v5

    sget v1, Landroid/support/v7/appcompat/R$drawable;->abc_spinner_mtrl_am_alpha:I

    aput v1, v0, v6

    sget v1, Landroid/support/v7/appcompat/R$drawable;->abc_spinner_textfield_background_material:I

    aput v1, v0, v7

    const/4 v1, 0x5

    sget v2, Landroid/support/v7/appcompat/R$drawable;->abc_ratingbar_full_material:I

    aput v2, v0, v1

    const/4 v1, 0x6

    sget v2, Landroid/support/v7/appcompat/R$drawable;->abc_switch_track_mtrl_alpha:I

    aput v2, v0, v1

    const/4 v1, 0x7

    sget v2, Landroid/support/v7/appcompat/R$drawable;->abc_switch_thumb_material:I

    aput v2, v0, v1

    const/16 v1, 0x8

    sget v2, Landroid/support/v7/appcompat/R$drawable;->abc_btn_default_mtrl_shape:I

    aput v2, v0, v1

    const/16 v1, 0x9

    sget v2, Landroid/support/v7/appcompat/R$drawable;->abc_btn_borderless_material:I

    aput v2, v0, v1

    sput-object v0, Landroid/support/v7/widget/AppCompatDrawableManager;->TINT_COLOR_CONTROL_STATE_LIST:[I

    .line 152
    new-array v0, v5, [I

    sget v1, Landroid/support/v7/appcompat/R$drawable;->abc_btn_check_material:I

    aput v1, v0, v3

    sget v1, Landroid/support/v7/appcompat/R$drawable;->abc_btn_radio_material:I

    aput v1, v0, v4

    sput-object v0, Landroid/support/v7/widget/AppCompatDrawableManager;->TINT_CHECKABLE_BUTTON_LIST:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 587
    return-void
.end method

.method private addTintListToCache(Landroid/content/Context;ILandroid/content/res/ColorStateList;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "resId"    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param
    .param p3, "tintList"    # Landroid/content/res/ColorStateList;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 343
    iget-object v1, p0, Landroid/support/v7/widget/AppCompatDrawableManager;->mTintLists:Ljava/util/WeakHashMap;

    if-nez v1, :cond_0

    .line 344
    new-instance v1, Ljava/util/WeakHashMap;

    invoke-direct {v1}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v1, p0, Landroid/support/v7/widget/AppCompatDrawableManager;->mTintLists:Ljava/util/WeakHashMap;

    .line 346
    :cond_0
    iget-object v1, p0, Landroid/support/v7/widget/AppCompatDrawableManager;->mTintLists:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    .line 347
    .local v0, "themeTints":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/content/res/ColorStateList;>;"
    if-nez v0, :cond_1

    .line 348
    new-instance v0, Landroid/util/SparseArray;

    .end local v0    # "themeTints":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/content/res/ColorStateList;>;"
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 349
    .restart local v0    # "themeTints":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/content/res/ColorStateList;>;"
    iget-object v1, p0, Landroid/support/v7/widget/AppCompatDrawableManager;->mTintLists:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 351
    :cond_1
    invoke-virtual {v0, p2, p3}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 352
    return-void
.end method

.method private static arrayContains([II)Z
    .locals 5
    .param p0, "array"    # [I
    .param p1, "value"    # I

    .prologue
    .line 278
    move-object v0, p0

    .local v0, "arr$":[I
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v3, :cond_1

    aget v2, v0, v1

    .line 279
    .local v2, "id":I
    if-ne v2, p1, :cond_0

    .line 280
    const/4 v4, 0x1

    .line 283
    .end local v2    # "id":I
    :goto_1
    return v4

    .line 278
    .restart local v2    # "id":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 283
    .end local v2    # "id":I
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private createButtonColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "baseColorAttr"    # I

    .prologue
    const/4 v5, 0x4

    .line 521
    new-array v4, v5, [[I

    .line 522
    .local v4, "states":[[I
    new-array v2, v5, [I

    .line 523
    .local v2, "colors":[I
    const/4 v3, 0x0

    .line 525
    .local v3, "i":I
    invoke-static {p1, p2}, Landroid/support/v7/widget/ThemeUtils;->getThemeAttrColor(Landroid/content/Context;I)I

    move-result v0

    .line 526
    .local v0, "baseColor":I
    sget v5, Landroid/support/v7/appcompat/R$attr;->colorControlHighlight:I

    invoke-static {p1, v5}, Landroid/support/v7/widget/ThemeUtils;->getThemeAttrColor(Landroid/content/Context;I)I

    move-result v1

    .line 529
    .local v1, "colorControlHighlight":I
    sget-object v5, Landroid/support/v7/widget/ThemeUtils;->DISABLED_STATE_SET:[I

    aput-object v5, v4, v3

    .line 530
    sget v5, Landroid/support/v7/appcompat/R$attr;->colorButtonNormal:I

    invoke-static {p1, v5}, Landroid/support/v7/widget/ThemeUtils;->getDisabledThemeAttrColor(Landroid/content/Context;I)I

    move-result v5

    aput v5, v2, v3

    .line 531
    add-int/lit8 v3, v3, 0x1

    .line 533
    sget-object v5, Landroid/support/v7/widget/ThemeUtils;->PRESSED_STATE_SET:[I

    aput-object v5, v4, v3

    .line 534
    invoke-static {v1, v0}, Landroid/support/v4/graphics/ColorUtils;->compositeColors(II)I

    move-result v5

    aput v5, v2, v3

    .line 535
    add-int/lit8 v3, v3, 0x1

    .line 537
    sget-object v5, Landroid/support/v7/widget/ThemeUtils;->FOCUSED_STATE_SET:[I

    aput-object v5, v4, v3

    .line 538
    invoke-static {v1, v0}, Landroid/support/v4/graphics/ColorUtils;->compositeColors(II)I

    move-result v5

    aput v5, v2, v3

    .line 539
    add-int/lit8 v3, v3, 0x1

    .line 542
    sget-object v5, Landroid/support/v7/widget/ThemeUtils;->EMPTY_STATE_SET:[I

    aput-object v5, v4, v3

    .line 543
    aput v0, v2, v3

    .line 544
    add-int/lit8 v3, v3, 0x1

    .line 546
    new-instance v5, Landroid/content/res/ColorStateList;

    invoke-direct {v5, v4, v2}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object v5
.end method

.method private createCheckableButtonColorStateList(Landroid/content/Context;)Landroid/content/res/ColorStateList;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x3

    .line 401
    new-array v2, v3, [[I

    .line 402
    .local v2, "states":[[I
    new-array v0, v3, [I

    .line 403
    .local v0, "colors":[I
    const/4 v1, 0x0

    .line 406
    .local v1, "i":I
    sget-object v3, Landroid/support/v7/widget/ThemeUtils;->DISABLED_STATE_SET:[I

    aput-object v3, v2, v1

    .line 407
    sget v3, Landroid/support/v7/appcompat/R$attr;->colorControlNormal:I

    invoke-static {p1, v3}, Landroid/support/v7/widget/ThemeUtils;->getDisabledThemeAttrColor(Landroid/content/Context;I)I

    move-result v3

    aput v3, v0, v1

    .line 408
    add-int/lit8 v1, v1, 0x1

    .line 410
    sget-object v3, Landroid/support/v7/widget/ThemeUtils;->CHECKED_STATE_SET:[I

    aput-object v3, v2, v1

    .line 411
    sget v3, Landroid/support/v7/appcompat/R$attr;->colorControlActivated:I

    invoke-static {p1, v3}, Landroid/support/v7/widget/ThemeUtils;->getThemeAttrColor(Landroid/content/Context;I)I

    move-result v3

    aput v3, v0, v1

    .line 412
    add-int/lit8 v1, v1, 0x1

    .line 415
    sget-object v3, Landroid/support/v7/widget/ThemeUtils;->EMPTY_STATE_SET:[I

    aput-object v3, v2, v1

    .line 416
    sget v3, Landroid/support/v7/appcompat/R$attr;->colorControlNormal:I

    invoke-static {p1, v3}, Landroid/support/v7/widget/ThemeUtils;->getThemeAttrColor(Landroid/content/Context;I)I

    move-result v3

    aput v3, v0, v1

    .line 417
    add-int/lit8 v1, v1, 0x1

    .line 419
    new-instance v3, Landroid/content/res/ColorStateList;

    invoke-direct {v3, v2, v0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object v3
.end method

.method private createColoredButtonColorStateList(Landroid/content/Context;)Landroid/content/res/ColorStateList;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 517
    sget v0, Landroid/support/v7/appcompat/R$attr;->colorAccent:I

    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/AppCompatDrawableManager;->createButtonColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method private createDefaultButtonColorStateList(Landroid/content/Context;)Landroid/content/res/ColorStateList;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 513
    sget v0, Landroid/support/v7/appcompat/R$attr;->colorButtonNormal:I

    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/AppCompatDrawableManager;->createButtonColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method private createDefaultColorStateList(Landroid/content/Context;)Landroid/content/res/ColorStateList;
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x7

    .line 360
    sget v5, Landroid/support/v7/appcompat/R$attr;->colorControlNormal:I

    invoke-static {p1, v5}, Landroid/support/v7/widget/ThemeUtils;->getThemeAttrColor(Landroid/content/Context;I)I

    move-result v1

    .line 361
    .local v1, "colorControlNormal":I
    sget v5, Landroid/support/v7/appcompat/R$attr;->colorControlActivated:I

    invoke-static {p1, v5}, Landroid/support/v7/widget/ThemeUtils;->getThemeAttrColor(Landroid/content/Context;I)I

    move-result v0

    .line 363
    .local v0, "colorControlActivated":I
    new-array v4, v6, [[I

    .line 364
    .local v4, "states":[[I
    new-array v2, v6, [I

    .line 365
    .local v2, "colors":[I
    const/4 v3, 0x0

    .line 368
    .local v3, "i":I
    sget-object v5, Landroid/support/v7/widget/ThemeUtils;->DISABLED_STATE_SET:[I

    aput-object v5, v4, v3

    .line 369
    sget v5, Landroid/support/v7/appcompat/R$attr;->colorControlNormal:I

    invoke-static {p1, v5}, Landroid/support/v7/widget/ThemeUtils;->getDisabledThemeAttrColor(Landroid/content/Context;I)I

    move-result v5

    aput v5, v2, v3

    .line 370
    add-int/lit8 v3, v3, 0x1

    .line 372
    sget-object v5, Landroid/support/v7/widget/ThemeUtils;->FOCUSED_STATE_SET:[I

    aput-object v5, v4, v3

    .line 373
    aput v0, v2, v3

    .line 374
    add-int/lit8 v3, v3, 0x1

    .line 376
    sget-object v5, Landroid/support/v7/widget/ThemeUtils;->ACTIVATED_STATE_SET:[I

    aput-object v5, v4, v3

    .line 377
    aput v0, v2, v3

    .line 378
    add-int/lit8 v3, v3, 0x1

    .line 380
    sget-object v5, Landroid/support/v7/widget/ThemeUtils;->PRESSED_STATE_SET:[I

    aput-object v5, v4, v3

    .line 381
    aput v0, v2, v3

    .line 382
    add-int/lit8 v3, v3, 0x1

    .line 384
    sget-object v5, Landroid/support/v7/widget/ThemeUtils;->CHECKED_STATE_SET:[I

    aput-object v5, v4, v3

    .line 385
    aput v0, v2, v3

    .line 386
    add-int/lit8 v3, v3, 0x1

    .line 388
    sget-object v5, Landroid/support/v7/widget/ThemeUtils;->SELECTED_STATE_SET:[I

    aput-object v5, v4, v3

    .line 389
    aput v0, v2, v3

    .line 390
    add-int/lit8 v3, v3, 0x1

    .line 393
    sget-object v5, Landroid/support/v7/widget/ThemeUtils;->EMPTY_STATE_SET:[I

    aput-object v5, v4, v3

    .line 394
    aput v1, v2, v3

    .line 395
    add-int/lit8 v3, v3, 0x1

    .line 397
    new-instance v5, Landroid/content/res/ColorStateList;

    invoke-direct {v5, v4, v2}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object v5
.end method

.method private createEditTextColorStateList(Landroid/content/Context;)Landroid/content/res/ColorStateList;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x3

    .line 491
    new-array v2, v3, [[I

    .line 492
    .local v2, "states":[[I
    new-array v0, v3, [I

    .line 493
    .local v0, "colors":[I
    const/4 v1, 0x0

    .line 496
    .local v1, "i":I
    sget-object v3, Landroid/support/v7/widget/ThemeUtils;->DISABLED_STATE_SET:[I

    aput-object v3, v2, v1

    .line 497
    sget v3, Landroid/support/v7/appcompat/R$attr;->colorControlNormal:I

    invoke-static {p1, v3}, Landroid/support/v7/widget/ThemeUtils;->getDisabledThemeAttrColor(Landroid/content/Context;I)I

    move-result v3

    aput v3, v0, v1

    .line 498
    add-int/lit8 v1, v1, 0x1

    .line 500
    sget-object v3, Landroid/support/v7/widget/ThemeUtils;->NOT_PRESSED_OR_FOCUSED_STATE_SET:[I

    aput-object v3, v2, v1

    .line 501
    sget v3, Landroid/support/v7/appcompat/R$attr;->colorControlNormal:I

    invoke-static {p1, v3}, Landroid/support/v7/widget/ThemeUtils;->getThemeAttrColor(Landroid/content/Context;I)I

    move-result v3

    aput v3, v0, v1

    .line 502
    add-int/lit8 v1, v1, 0x1

    .line 505
    sget-object v3, Landroid/support/v7/widget/ThemeUtils;->EMPTY_STATE_SET:[I

    aput-object v3, v2, v1

    .line 506
    sget v3, Landroid/support/v7/appcompat/R$attr;->colorControlActivated:I

    invoke-static {p1, v3}, Landroid/support/v7/widget/ThemeUtils;->getThemeAttrColor(Landroid/content/Context;I)I

    move-result v3

    aput v3, v0, v1

    .line 507
    add-int/lit8 v1, v1, 0x1

    .line 509
    new-instance v3, Landroid/content/res/ColorStateList;

    invoke-direct {v3, v2, v0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object v3
.end method

.method private createSeekbarThumbColorStateList(Landroid/content/Context;)Landroid/content/res/ColorStateList;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x2

    .line 571
    new-array v2, v3, [[I

    .line 572
    .local v2, "states":[[I
    new-array v0, v3, [I

    .line 573
    .local v0, "colors":[I
    const/4 v1, 0x0

    .line 576
    .local v1, "i":I
    sget-object v3, Landroid/support/v7/widget/ThemeUtils;->DISABLED_STATE_SET:[I

    aput-object v3, v2, v1

    .line 577
    sget v3, Landroid/support/v7/appcompat/R$attr;->colorControlActivated:I

    invoke-static {p1, v3}, Landroid/support/v7/widget/ThemeUtils;->getDisabledThemeAttrColor(Landroid/content/Context;I)I

    move-result v3

    aput v3, v0, v1

    .line 578
    add-int/lit8 v1, v1, 0x1

    .line 580
    sget-object v3, Landroid/support/v7/widget/ThemeUtils;->EMPTY_STATE_SET:[I

    aput-object v3, v2, v1

    .line 581
    sget v3, Landroid/support/v7/appcompat/R$attr;->colorControlActivated:I

    invoke-static {p1, v3}, Landroid/support/v7/widget/ThemeUtils;->getThemeAttrColor(Landroid/content/Context;I)I

    move-result v3

    aput v3, v0, v1

    .line 582
    add-int/lit8 v1, v1, 0x1

    .line 584
    new-instance v3, Landroid/content/res/ColorStateList;

    invoke-direct {v3, v2, v0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object v3
.end method

.method private createSpinnerColorStateList(Landroid/content/Context;)Landroid/content/res/ColorStateList;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x3

    .line 550
    new-array v2, v3, [[I

    .line 551
    .local v2, "states":[[I
    new-array v0, v3, [I

    .line 552
    .local v0, "colors":[I
    const/4 v1, 0x0

    .line 555
    .local v1, "i":I
    sget-object v3, Landroid/support/v7/widget/ThemeUtils;->DISABLED_STATE_SET:[I

    aput-object v3, v2, v1

    .line 556
    sget v3, Landroid/support/v7/appcompat/R$attr;->colorControlNormal:I

    invoke-static {p1, v3}, Landroid/support/v7/widget/ThemeUtils;->getDisabledThemeAttrColor(Landroid/content/Context;I)I

    move-result v3

    aput v3, v0, v1

    .line 557
    add-int/lit8 v1, v1, 0x1

    .line 559
    sget-object v3, Landroid/support/v7/widget/ThemeUtils;->NOT_PRESSED_OR_FOCUSED_STATE_SET:[I

    aput-object v3, v2, v1

    .line 560
    sget v3, Landroid/support/v7/appcompat/R$attr;->colorControlNormal:I

    invoke-static {p1, v3}, Landroid/support/v7/widget/ThemeUtils;->getThemeAttrColor(Landroid/content/Context;I)I

    move-result v3

    aput v3, v0, v1

    .line 561
    add-int/lit8 v1, v1, 0x1

    .line 563
    sget-object v3, Landroid/support/v7/widget/ThemeUtils;->EMPTY_STATE_SET:[I

    aput-object v3, v2, v1

    .line 564
    sget v3, Landroid/support/v7/appcompat/R$attr;->colorControlActivated:I

    invoke-static {p1, v3}, Landroid/support/v7/widget/ThemeUtils;->getThemeAttrColor(Landroid/content/Context;I)I

    move-result v3

    aput v3, v0, v1

    .line 565
    add-int/lit8 v1, v1, 0x1

    .line 567
    new-instance v3, Landroid/content/res/ColorStateList;

    invoke-direct {v3, v2, v0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object v3
.end method

.method private createSwitchThumbColorStateList(Landroid/content/Context;)Landroid/content/res/ColorStateList;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x3

    .line 445
    new-array v2, v4, [[I

    .line 446
    .local v2, "states":[[I
    new-array v0, v4, [I

    .line 447
    .local v0, "colors":[I
    const/4 v1, 0x0

    .line 449
    .local v1, "i":I
    sget v4, Landroid/support/v7/appcompat/R$attr;->colorSwitchThumbNormal:I

    invoke-static {p1, v4}, Landroid/support/v7/widget/ThemeUtils;->getThemeAttrColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v3

    .line 452
    .local v3, "thumbColor":Landroid/content/res/ColorStateList;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 457
    sget-object v4, Landroid/support/v7/widget/ThemeUtils;->DISABLED_STATE_SET:[I

    aput-object v4, v2, v1

    .line 458
    aget-object v4, v2, v1

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v4

    aput v4, v0, v1

    .line 459
    add-int/lit8 v1, v1, 0x1

    .line 461
    sget-object v4, Landroid/support/v7/widget/ThemeUtils;->CHECKED_STATE_SET:[I

    aput-object v4, v2, v1

    .line 462
    sget v4, Landroid/support/v7/appcompat/R$attr;->colorControlActivated:I

    invoke-static {p1, v4}, Landroid/support/v7/widget/ThemeUtils;->getThemeAttrColor(Landroid/content/Context;I)I

    move-result v4

    aput v4, v0, v1

    .line 463
    add-int/lit8 v1, v1, 0x1

    .line 466
    sget-object v4, Landroid/support/v7/widget/ThemeUtils;->EMPTY_STATE_SET:[I

    aput-object v4, v2, v1

    .line 467
    invoke-virtual {v3}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v4

    aput v4, v0, v1

    .line 468
    add-int/lit8 v1, v1, 0x1

    .line 487
    :goto_0
    new-instance v4, Landroid/content/res/ColorStateList;

    invoke-direct {v4, v2, v0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object v4

    .line 473
    :cond_0
    sget-object v4, Landroid/support/v7/widget/ThemeUtils;->DISABLED_STATE_SET:[I

    aput-object v4, v2, v1

    .line 474
    sget v4, Landroid/support/v7/appcompat/R$attr;->colorSwitchThumbNormal:I

    invoke-static {p1, v4}, Landroid/support/v7/widget/ThemeUtils;->getDisabledThemeAttrColor(Landroid/content/Context;I)I

    move-result v4

    aput v4, v0, v1

    .line 475
    add-int/lit8 v1, v1, 0x1

    .line 477
    sget-object v4, Landroid/support/v7/widget/ThemeUtils;->CHECKED_STATE_SET:[I

    aput-object v4, v2, v1

    .line 478
    sget v4, Landroid/support/v7/appcompat/R$attr;->colorControlActivated:I

    invoke-static {p1, v4}, Landroid/support/v7/widget/ThemeUtils;->getThemeAttrColor(Landroid/content/Context;I)I

    move-result v4

    aput v4, v0, v1

    .line 479
    add-int/lit8 v1, v1, 0x1

    .line 482
    sget-object v4, Landroid/support/v7/widget/ThemeUtils;->EMPTY_STATE_SET:[I

    aput-object v4, v2, v1

    .line 483
    sget v4, Landroid/support/v7/appcompat/R$attr;->colorSwitchThumbNormal:I

    invoke-static {p1, v4}, Landroid/support/v7/widget/ThemeUtils;->getThemeAttrColor(Landroid/content/Context;I)I

    move-result v4

    aput v4, v0, v1

    .line 484
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private createSwitchTrackColorStateList(Landroid/content/Context;)Landroid/content/res/ColorStateList;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const v5, 0x1010030

    const/4 v3, 0x3

    const v4, 0x3e99999a    # 0.3f

    .line 423
    new-array v2, v3, [[I

    .line 424
    .local v2, "states":[[I
    new-array v0, v3, [I

    .line 425
    .local v0, "colors":[I
    const/4 v1, 0x0

    .line 428
    .local v1, "i":I
    sget-object v3, Landroid/support/v7/widget/ThemeUtils;->DISABLED_STATE_SET:[I

    aput-object v3, v2, v1

    .line 429
    const v3, 0x3dcccccd    # 0.1f

    invoke-static {p1, v5, v3}, Landroid/support/v7/widget/ThemeUtils;->getThemeAttrColor(Landroid/content/Context;IF)I

    move-result v3

    aput v3, v0, v1

    .line 430
    add-int/lit8 v1, v1, 0x1

    .line 432
    sget-object v3, Landroid/support/v7/widget/ThemeUtils;->CHECKED_STATE_SET:[I

    aput-object v3, v2, v1

    .line 433
    sget v3, Landroid/support/v7/appcompat/R$attr;->colorControlActivated:I

    invoke-static {p1, v3, v4}, Landroid/support/v7/widget/ThemeUtils;->getThemeAttrColor(Landroid/content/Context;IF)I

    move-result v3

    aput v3, v0, v1

    .line 434
    add-int/lit8 v1, v1, 0x1

    .line 437
    sget-object v3, Landroid/support/v7/widget/ThemeUtils;->EMPTY_STATE_SET:[I

    aput-object v3, v2, v1

    .line 438
    invoke-static {p1, v5, v4}, Landroid/support/v7/widget/ThemeUtils;->getThemeAttrColor(Landroid/content/Context;IF)I

    move-result v3

    aput v3, v0, v1

    .line 439
    add-int/lit8 v1, v1, 0x1

    .line 441
    new-instance v3, Landroid/content/res/ColorStateList;

    invoke-direct {v3, v2, v0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object v3
.end method

.method private static createTintFilter(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;[I)Landroid/graphics/PorterDuffColorFilter;
    .locals 2
    .param p0, "tint"    # Landroid/content/res/ColorStateList;
    .param p1, "tintMode"    # Landroid/graphics/PorterDuff$Mode;
    .param p2, "state"    # [I

    .prologue
    .line 659
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 660
    :cond_0
    const/4 v1, 0x0

    .line 663
    :goto_0
    return-object v1

    .line 662
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p0, p2, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    .line 663
    .local v0, "color":I
    invoke-static {v0, p1}, Landroid/support/v7/widget/AppCompatDrawableManager;->getPorterDuffColorFilter(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v1

    goto :goto_0
.end method

.method public static get()Landroid/support/v7/widget/AppCompatDrawableManager;
    .locals 1

    .prologue
    .line 72
    sget-object v0, Landroid/support/v7/widget/AppCompatDrawableManager;->INSTANCE:Landroid/support/v7/widget/AppCompatDrawableManager;

    if-nez v0, :cond_0

    .line 73
    new-instance v0, Landroid/support/v7/widget/AppCompatDrawableManager;

    invoke-direct {v0}, Landroid/support/v7/widget/AppCompatDrawableManager;-><init>()V

    sput-object v0, Landroid/support/v7/widget/AppCompatDrawableManager;->INSTANCE:Landroid/support/v7/widget/AppCompatDrawableManager;

    .line 75
    :cond_0
    sget-object v0, Landroid/support/v7/widget/AppCompatDrawableManager;->INSTANCE:Landroid/support/v7/widget/AppCompatDrawableManager;

    return-object v0
.end method

.method private static getPorterDuffColorFilter(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;
    .locals 2
    .param p0, "color"    # I
    .param p1, "mode"    # Landroid/graphics/PorterDuff$Mode;

    .prologue
    .line 668
    sget-object v1, Landroid/support/v7/widget/AppCompatDrawableManager;->COLOR_FILTER_CACHE:Landroid/support/v7/widget/AppCompatDrawableManager$ColorFilterLruCache;

    invoke-virtual {v1, p0, p1}, Landroid/support/v7/widget/AppCompatDrawableManager$ColorFilterLruCache;->get(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v0

    .line 670
    .local v0, "filter":Landroid/graphics/PorterDuffColorFilter;
    if-nez v0, :cond_0

    .line 672
    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    .end local v0    # "filter":Landroid/graphics/PorterDuffColorFilter;
    invoke-direct {v0, p0, p1}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    .line 673
    .restart local v0    # "filter":Landroid/graphics/PorterDuffColorFilter;
    sget-object v1, Landroid/support/v7/widget/AppCompatDrawableManager;->COLOR_FILTER_CACHE:Landroid/support/v7/widget/AppCompatDrawableManager$ColorFilterLruCache;

    invoke-virtual {v1, p0, p1, v0}, Landroid/support/v7/widget/AppCompatDrawableManager$ColorFilterLruCache;->put(ILandroid/graphics/PorterDuff$Mode;Landroid/graphics/PorterDuffColorFilter;)Landroid/graphics/PorterDuffColorFilter;

    .line 676
    :cond_0
    return-object v0
.end method

.method private getTintListFromCache(Landroid/content/Context;I)Landroid/content/res/ColorStateList;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "resId"    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x0

    .line 334
    iget-object v2, p0, Landroid/support/v7/widget/AppCompatDrawableManager;->mTintLists:Ljava/util/WeakHashMap;

    if-eqz v2, :cond_0

    .line 335
    iget-object v2, p0, Landroid/support/v7/widget/AppCompatDrawableManager;->mTintLists:Ljava/util/WeakHashMap;

    invoke-virtual {v2, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    .line 336
    .local v0, "tints":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/content/res/ColorStateList;>;"
    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/res/ColorStateList;

    .line 338
    .end local v0    # "tints":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/content/res/ColorStateList;>;"
    :cond_0
    return-object v1
.end method

.method private static setPorterDuffColorFilter(Landroid/graphics/drawable/Drawable;ILandroid/graphics/PorterDuff$Mode;)V
    .locals 1
    .param p0, "d"    # Landroid/graphics/drawable/Drawable;
    .param p1, "color"    # I
    .param p2, "mode"    # Landroid/graphics/PorterDuff$Mode;

    .prologue
    .line 680
    if-nez p2, :cond_0

    sget-object p2, Landroid/support/v7/widget/AppCompatDrawableManager;->DEFAULT_MODE:Landroid/graphics/PorterDuff$Mode;

    .end local p2    # "mode":Landroid/graphics/PorterDuff$Mode;
    :cond_0
    invoke-static {p1, p2}, Landroid/support/v7/widget/AppCompatDrawableManager;->getPorterDuffColorFilter(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 681
    return-void
.end method

.method private static shouldMutateBackground(Landroid/graphics/drawable/Drawable;)Z
    .locals 10
    .param p0, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/16 v9, 0x10

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 632
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v8, v9, :cond_1

    .line 654
    :cond_0
    :goto_0
    return v6

    .line 637
    :cond_1
    instance-of v8, p0, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v8, :cond_2

    .line 638
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v8, v9, :cond_0

    move v6, v7

    goto :goto_0

    .line 639
    :cond_2
    instance-of v8, p0, Landroid/graphics/drawable/InsetDrawable;

    if-eqz v8, :cond_3

    .line 640
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0xe

    if-ge v8, v9, :cond_0

    move v6, v7

    goto :goto_0

    .line 641
    :cond_3
    instance-of v8, p0, Landroid/graphics/drawable/DrawableContainer;

    if-eqz v8, :cond_0

    .line 643
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v5

    .line 644
    .local v5, "state":Landroid/graphics/drawable/Drawable$ConstantState;
    instance-of v8, v5, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    if-eqz v8, :cond_0

    move-object v2, v5

    .line 645
    check-cast v2, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    .line 647
    .local v2, "containerState":Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;
    invoke-virtual {v2}, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->getChildren()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .local v0, "arr$":[Landroid/graphics/drawable/Drawable;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_1
    if-ge v3, v4, :cond_0

    aget-object v1, v0, v3

    .line 648
    .local v1, "child":Landroid/graphics/drawable/Drawable;
    invoke-static {v1}, Landroid/support/v7/widget/AppCompatDrawableManager;->shouldMutateBackground(Landroid/graphics/drawable/Drawable;)Z

    move-result v8

    if-nez v8, :cond_4

    move v6, v7

    .line 649
    goto :goto_0

    .line 647
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method public static tintDrawable(Landroid/graphics/drawable/Drawable;Landroid/support/v7/widget/TintInfo;[I)V
    .locals 2
    .param p0, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p1, "tint"    # Landroid/support/v7/widget/TintInfo;
    .param p2, "state"    # [I

    .prologue
    .line 610
    invoke-static {p0}, Landroid/support/v7/widget/AppCompatDrawableManager;->shouldMutateBackground(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eq v0, p0, :cond_1

    .line 611
    const-string v0, "TintManager"

    const-string v1, "Mutated drawable is not the same instance as the input."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 629
    :cond_0
    :goto_0
    return-void

    .line 615
    :cond_1
    iget-boolean v0, p1, Landroid/support/v7/widget/TintInfo;->mHasTintList:Z

    if-nez v0, :cond_2

    iget-boolean v0, p1, Landroid/support/v7/widget/TintInfo;->mHasTintMode:Z

    if-eqz v0, :cond_5

    .line 616
    :cond_2
    iget-boolean v0, p1, Landroid/support/v7/widget/TintInfo;->mHasTintList:Z

    if-eqz v0, :cond_3

    iget-object v0, p1, Landroid/support/v7/widget/TintInfo;->mTintList:Landroid/content/res/ColorStateList;

    :goto_1
    iget-boolean v1, p1, Landroid/support/v7/widget/TintInfo;->mHasTintMode:Z

    if-eqz v1, :cond_4

    iget-object v1, p1, Landroid/support/v7/widget/TintInfo;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    :goto_2
    invoke-static {v0, v1, p2}, Landroid/support/v7/widget/AppCompatDrawableManager;->createTintFilter(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;[I)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 624
    :goto_3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xa

    if-gt v0, v1, :cond_0

    .line 627
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    goto :goto_0

    .line 616
    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    :cond_4
    sget-object v1, Landroid/support/v7/widget/AppCompatDrawableManager;->DEFAULT_MODE:Landroid/graphics/PorterDuff$Mode;

    goto :goto_2

    .line 621
    :cond_5
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    goto :goto_3
.end method


# virtual methods
.method public addDelegate(Landroid/support/v7/widget/AppCompatDrawableManager$InflateDelegate;)V
    .locals 1
    .param p1, "delegate"    # Landroid/support/v7/widget/AppCompatDrawableManager$InflateDelegate;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 263
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatDrawableManager;->mDelegates:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 264
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/AppCompatDrawableManager;->mDelegates:Ljava/util/ArrayList;

    .line 266
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatDrawableManager;->mDelegates:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 267
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatDrawableManager;->mDelegates:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 269
    :cond_1
    return-void
.end method

.method public getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "resId"    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    .prologue
    .line 161
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/support/v7/widget/AppCompatDrawableManager;->getDrawable(Landroid/content/Context;IZ)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getDrawable(Landroid/content/Context;IZ)Landroid/graphics/drawable/Drawable;
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "resId"    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param
    .param p3, "failIfNotKnown"    # Z

    .prologue
    .line 167
    iget-object v9, p0, Landroid/support/v7/widget/AppCompatDrawableManager;->mDelegates:Ljava/util/ArrayList;

    if-eqz v9, :cond_1

    .line 168
    const/4 v3, 0x0

    .local v3, "i":I
    iget-object v9, p0, Landroid/support/v7/widget/AppCompatDrawableManager;->mDelegates:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    .local v0, "count":I
    :goto_0
    if-ge v3, v0, :cond_1

    .line 169
    iget-object v9, p0, Landroid/support/v7/widget/AppCompatDrawableManager;->mDelegates:Ljava/util/ArrayList;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/AppCompatDrawableManager$InflateDelegate;

    .line 170
    .local v1, "delegate":Landroid/support/v7/widget/AppCompatDrawableManager$InflateDelegate;
    invoke-interface {v1, p1, p2}, Landroid/support/v7/widget/AppCompatDrawableManager$InflateDelegate;->onInflateDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 171
    .local v5, "result":Landroid/graphics/drawable/Drawable;
    if-eqz v5, :cond_0

    .line 219
    .end local v0    # "count":I
    .end local v1    # "delegate":Landroid/support/v7/widget/AppCompatDrawableManager$InflateDelegate;
    .end local v3    # "i":I
    .end local v5    # "result":Landroid/graphics/drawable/Drawable;
    :goto_1
    return-object v5

    .line 168
    .restart local v0    # "count":I
    .restart local v1    # "delegate":Landroid/support/v7/widget/AppCompatDrawableManager$InflateDelegate;
    .restart local v3    # "i":I
    .restart local v5    # "result":Landroid/graphics/drawable/Drawable;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 178
    .end local v0    # "count":I
    .end local v1    # "delegate":Landroid/support/v7/widget/AppCompatDrawableManager$InflateDelegate;
    .end local v3    # "i":I
    .end local v5    # "result":Landroid/graphics/drawable/Drawable;
    :cond_1
    invoke-static {p1, p2}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 180
    .local v2, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_3

    .line 181
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x8

    if-lt v9, v10, :cond_2

    .line 183
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 186
    :cond_2
    invoke-virtual {p0, p1, p2}, Landroid/support/v7/widget/AppCompatDrawableManager;->getTintList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v6

    .line 187
    .local v6, "tintList":Landroid/content/res/ColorStateList;
    if-eqz v6, :cond_4

    .line 189
    invoke-static {v2}, Landroid/support/v4/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 190
    invoke-static {v2, v6}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 193
    invoke-virtual {p0, p2}, Landroid/support/v7/widget/AppCompatDrawableManager;->getTintMode(I)Landroid/graphics/PorterDuff$Mode;

    move-result-object v7

    .line 194
    .local v7, "tintMode":Landroid/graphics/PorterDuff$Mode;
    if-eqz v7, :cond_3

    .line 195
    invoke-static {v2, v7}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setTintMode(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    .end local v6    # "tintList":Landroid/content/res/ColorStateList;
    .end local v7    # "tintMode":Landroid/graphics/PorterDuff$Mode;
    :cond_3
    :goto_2
    move-object v5, v2

    .line 219
    goto :goto_1

    .line 197
    .restart local v6    # "tintList":Landroid/content/res/ColorStateList;
    :cond_4
    sget v9, Landroid/support/v7/appcompat/R$drawable;->abc_cab_background_top_material:I

    if-ne p2, v9, :cond_5

    .line 198
    new-instance v5, Landroid/graphics/drawable/LayerDrawable;

    const/4 v9, 0x2

    new-array v9, v9, [Landroid/graphics/drawable/Drawable;

    const/4 v10, 0x0

    sget v11, Landroid/support/v7/appcompat/R$drawable;->abc_cab_background_internal_bg:I

    invoke-virtual {p0, p1, v11}, Landroid/support/v7/widget/AppCompatDrawableManager;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    sget v11, Landroid/support/v7/appcompat/R$drawable;->abc_cab_background_top_mtrl_alpha:I

    invoke-virtual {p0, p1, v11}, Landroid/support/v7/widget/AppCompatDrawableManager;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-direct {v5, v9}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 202
    :cond_5
    sget v9, Landroid/support/v7/appcompat/R$drawable;->abc_seekbar_track_material:I

    if-ne p2, v9, :cond_6

    move-object v4, v2

    .line 203
    check-cast v4, Landroid/graphics/drawable/LayerDrawable;

    .line 204
    .local v4, "ld":Landroid/graphics/drawable/LayerDrawable;
    const/high16 v9, 0x1020000

    invoke-virtual {v4, v9}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    sget v10, Landroid/support/v7/appcompat/R$attr;->colorControlNormal:I

    invoke-static {p1, v10}, Landroid/support/v7/widget/ThemeUtils;->getThemeAttrColor(Landroid/content/Context;I)I

    move-result v10

    sget-object v11, Landroid/support/v7/widget/AppCompatDrawableManager;->DEFAULT_MODE:Landroid/graphics/PorterDuff$Mode;

    invoke-static {v9, v10, v11}, Landroid/support/v7/widget/AppCompatDrawableManager;->setPorterDuffColorFilter(Landroid/graphics/drawable/Drawable;ILandroid/graphics/PorterDuff$Mode;)V

    .line 206
    const v9, 0x102000f

    invoke-virtual {v4, v9}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    sget v10, Landroid/support/v7/appcompat/R$attr;->colorControlNormal:I

    invoke-static {p1, v10}, Landroid/support/v7/widget/ThemeUtils;->getThemeAttrColor(Landroid/content/Context;I)I

    move-result v10

    sget-object v11, Landroid/support/v7/widget/AppCompatDrawableManager;->DEFAULT_MODE:Landroid/graphics/PorterDuff$Mode;

    invoke-static {v9, v10, v11}, Landroid/support/v7/widget/AppCompatDrawableManager;->setPorterDuffColorFilter(Landroid/graphics/drawable/Drawable;ILandroid/graphics/PorterDuff$Mode;)V

    .line 208
    const v9, 0x102000d

    invoke-virtual {v4, v9}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    sget v10, Landroid/support/v7/appcompat/R$attr;->colorControlActivated:I

    invoke-static {p1, v10}, Landroid/support/v7/widget/ThemeUtils;->getThemeAttrColor(Landroid/content/Context;I)I

    move-result v10

    sget-object v11, Landroid/support/v7/widget/AppCompatDrawableManager;->DEFAULT_MODE:Landroid/graphics/PorterDuff$Mode;

    invoke-static {v9, v10, v11}, Landroid/support/v7/widget/AppCompatDrawableManager;->setPorterDuffColorFilter(Landroid/graphics/drawable/Drawable;ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_2

    .line 211
    .end local v4    # "ld":Landroid/graphics/drawable/LayerDrawable;
    :cond_6
    invoke-virtual {p0, p1, p2, v2}, Landroid/support/v7/widget/AppCompatDrawableManager;->tintDrawableUsingColorFilter(Landroid/content/Context;ILandroid/graphics/drawable/Drawable;)Z

    move-result v8

    .line 212
    .local v8, "tinted":Z
    if-nez v8, :cond_3

    if-eqz p3, :cond_3

    .line 215
    const/4 v2, 0x0

    goto :goto_2
.end method

.method public final getTintList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "resId"    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    .prologue
    .line 298
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/AppCompatDrawableManager;->getTintListFromCache(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 300
    .local v0, "tint":Landroid/content/res/ColorStateList;
    if-nez v0, :cond_1

    .line 302
    sget v1, Landroid/support/v7/appcompat/R$drawable;->abc_edit_text_material:I

    if-ne p2, v1, :cond_2

    .line 303
    invoke-direct {p0, p1}, Landroid/support/v7/widget/AppCompatDrawableManager;->createEditTextColorStateList(Landroid/content/Context;)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 326
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 327
    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/AppCompatDrawableManager;->addTintListToCache(Landroid/content/Context;ILandroid/content/res/ColorStateList;)V

    .line 330
    :cond_1
    return-object v0

    .line 304
    :cond_2
    sget v1, Landroid/support/v7/appcompat/R$drawable;->abc_switch_track_mtrl_alpha:I

    if-ne p2, v1, :cond_3

    .line 305
    invoke-direct {p0, p1}, Landroid/support/v7/widget/AppCompatDrawableManager;->createSwitchTrackColorStateList(Landroid/content/Context;)Landroid/content/res/ColorStateList;

    move-result-object v0

    goto :goto_0

    .line 306
    :cond_3
    sget v1, Landroid/support/v7/appcompat/R$drawable;->abc_switch_thumb_material:I

    if-ne p2, v1, :cond_4

    .line 307
    invoke-direct {p0, p1}, Landroid/support/v7/widget/AppCompatDrawableManager;->createSwitchThumbColorStateList(Landroid/content/Context;)Landroid/content/res/ColorStateList;

    move-result-object v0

    goto :goto_0

    .line 308
    :cond_4
    sget v1, Landroid/support/v7/appcompat/R$drawable;->abc_btn_default_mtrl_shape:I

    if-eq p2, v1, :cond_5

    sget v1, Landroid/support/v7/appcompat/R$drawable;->abc_btn_borderless_material:I

    if-ne p2, v1, :cond_6

    .line 310
    :cond_5
    invoke-direct {p0, p1}, Landroid/support/v7/widget/AppCompatDrawableManager;->createDefaultButtonColorStateList(Landroid/content/Context;)Landroid/content/res/ColorStateList;

    move-result-object v0

    goto :goto_0

    .line 311
    :cond_6
    sget v1, Landroid/support/v7/appcompat/R$drawable;->abc_btn_colored_material:I

    if-ne p2, v1, :cond_7

    .line 312
    invoke-direct {p0, p1}, Landroid/support/v7/widget/AppCompatDrawableManager;->createColoredButtonColorStateList(Landroid/content/Context;)Landroid/content/res/ColorStateList;

    move-result-object v0

    goto :goto_0

    .line 313
    :cond_7
    sget v1, Landroid/support/v7/appcompat/R$drawable;->abc_spinner_mtrl_am_alpha:I

    if-eq p2, v1, :cond_8

    sget v1, Landroid/support/v7/appcompat/R$drawable;->abc_spinner_textfield_background_material:I

    if-ne p2, v1, :cond_9

    .line 315
    :cond_8
    invoke-direct {p0, p1}, Landroid/support/v7/widget/AppCompatDrawableManager;->createSpinnerColorStateList(Landroid/content/Context;)Landroid/content/res/ColorStateList;

    move-result-object v0

    goto :goto_0

    .line 316
    :cond_9
    sget-object v1, Landroid/support/v7/widget/AppCompatDrawableManager;->TINT_COLOR_CONTROL_NORMAL:[I

    invoke-static {v1, p2}, Landroid/support/v7/widget/AppCompatDrawableManager;->arrayContains([II)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 317
    sget v1, Landroid/support/v7/appcompat/R$attr;->colorControlNormal:I

    invoke-static {p1, v1}, Landroid/support/v7/widget/ThemeUtils;->getThemeAttrColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    goto :goto_0

    .line 318
    :cond_a
    sget-object v1, Landroid/support/v7/widget/AppCompatDrawableManager;->TINT_COLOR_CONTROL_STATE_LIST:[I

    invoke-static {v1, p2}, Landroid/support/v7/widget/AppCompatDrawableManager;->arrayContains([II)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 319
    invoke-direct {p0, p1}, Landroid/support/v7/widget/AppCompatDrawableManager;->createDefaultColorStateList(Landroid/content/Context;)Landroid/content/res/ColorStateList;

    move-result-object v0

    goto :goto_0

    .line 320
    :cond_b
    sget-object v1, Landroid/support/v7/widget/AppCompatDrawableManager;->TINT_CHECKABLE_BUTTON_LIST:[I

    invoke-static {v1, p2}, Landroid/support/v7/widget/AppCompatDrawableManager;->arrayContains([II)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 321
    invoke-direct {p0, p1}, Landroid/support/v7/widget/AppCompatDrawableManager;->createCheckableButtonColorStateList(Landroid/content/Context;)Landroid/content/res/ColorStateList;

    move-result-object v0

    goto :goto_0

    .line 322
    :cond_c
    sget v1, Landroid/support/v7/appcompat/R$drawable;->abc_seekbar_thumb_material:I

    if-ne p2, v1, :cond_0

    .line 323
    invoke-direct {p0, p1}, Landroid/support/v7/widget/AppCompatDrawableManager;->createSeekbarThumbColorStateList(Landroid/content/Context;)Landroid/content/res/ColorStateList;

    move-result-object v0

    goto :goto_0
.end method

.method final getTintMode(I)Landroid/graphics/PorterDuff$Mode;
    .locals 2
    .param p1, "resId"    # I

    .prologue
    .line 287
    const/4 v0, 0x0

    .line 289
    .local v0, "mode":Landroid/graphics/PorterDuff$Mode;
    sget v1, Landroid/support/v7/appcompat/R$drawable;->abc_switch_thumb_material:I

    if-ne p1, v1, :cond_0

    .line 290
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    .line 293
    :cond_0
    return-object v0
.end method

.method public removeDelegate(Landroid/support/v7/widget/AppCompatDrawableManager$InflateDelegate;)V
    .locals 1
    .param p1, "delegate"    # Landroid/support/v7/widget/AppCompatDrawableManager$InflateDelegate;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 272
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatDrawableManager;->mDelegates:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 273
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatDrawableManager;->mDelegates:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 275
    :cond_0
    return-void
.end method

.method public final tintDrawableUsingColorFilter(Landroid/content/Context;ILandroid/graphics/drawable/Drawable;)Z
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "resId"    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param
    .param p3, "drawable"    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 224
    sget-object v4, Landroid/support/v7/widget/AppCompatDrawableManager;->DEFAULT_MODE:Landroid/graphics/PorterDuff$Mode;

    .line 225
    .local v4, "tintMode":Landroid/graphics/PorterDuff$Mode;
    const/4 v3, 0x0

    .line 226
    .local v3, "colorAttrSet":Z
    const/4 v2, 0x0

    .line 227
    .local v2, "colorAttr":I
    const/4 v0, -0x1

    .line 229
    .local v0, "alpha":I
    sget-object v5, Landroid/support/v7/widget/AppCompatDrawableManager;->COLORFILTER_TINT_COLOR_CONTROL_NORMAL:[I

    invoke-static {v5, p2}, Landroid/support/v7/widget/AppCompatDrawableManager;->arrayContains([II)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 230
    sget v2, Landroid/support/v7/appcompat/R$attr;->colorControlNormal:I

    .line 231
    const/4 v3, 0x1

    .line 245
    :cond_0
    :goto_0
    if-eqz v3, :cond_5

    .line 246
    invoke-static {p1, v2}, Landroid/support/v7/widget/ThemeUtils;->getThemeAttrColor(Landroid/content/Context;I)I

    move-result v1

    .line 247
    .local v1, "color":I
    invoke-static {v1, v4}, Landroid/support/v7/widget/AppCompatDrawableManager;->getPorterDuffColorFilter(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v5

    invoke-virtual {p3, v5}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 249
    const/4 v5, -0x1

    if-eq v0, v5, :cond_1

    .line 250
    invoke-virtual {p3, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 257
    :cond_1
    const/4 v5, 0x1

    .line 259
    .end local v1    # "color":I
    :goto_1
    return v5

    .line 232
    :cond_2
    sget-object v5, Landroid/support/v7/widget/AppCompatDrawableManager;->COLORFILTER_COLOR_CONTROL_ACTIVATED:[I

    invoke-static {v5, p2}, Landroid/support/v7/widget/AppCompatDrawableManager;->arrayContains([II)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 233
    sget v2, Landroid/support/v7/appcompat/R$attr;->colorControlActivated:I

    .line 234
    const/4 v3, 0x1

    goto :goto_0

    .line 235
    :cond_3
    sget-object v5, Landroid/support/v7/widget/AppCompatDrawableManager;->COLORFILTER_COLOR_BACKGROUND_MULTIPLY:[I

    invoke-static {v5, p2}, Landroid/support/v7/widget/AppCompatDrawableManager;->arrayContains([II)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 236
    const v2, 0x1010031

    .line 237
    const/4 v3, 0x1

    .line 238
    sget-object v4, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    goto :goto_0

    .line 239
    :cond_4
    sget v5, Landroid/support/v7/appcompat/R$drawable;->abc_list_divider_mtrl_alpha:I

    if-ne p2, v5, :cond_0

    .line 240
    const v2, 0x1010030

    .line 241
    const/4 v3, 0x1

    .line 242
    const v5, 0x42233333    # 40.8f

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v0

    goto :goto_0

    .line 259
    :cond_5
    const/4 v5, 0x0

    goto :goto_1
.end method
