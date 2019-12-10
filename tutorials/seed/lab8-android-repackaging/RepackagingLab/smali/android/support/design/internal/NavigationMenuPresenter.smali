.class public Landroid/support/design/internal/NavigationMenuPresenter;
.super Ljava/lang/Object;
.source "NavigationMenuPresenter.java"

# interfaces
.implements Landroid/support/v7/view/menu/MenuPresenter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuHeaderItem;,
        Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuSeparatorItem;,
        Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuTextItem;,
        Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuItem;,
        Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;,
        Landroid/support/design/internal/NavigationMenuPresenter$HeaderViewHolder;,
        Landroid/support/design/internal/NavigationMenuPresenter$SeparatorViewHolder;,
        Landroid/support/design/internal/NavigationMenuPresenter$SubheaderViewHolder;,
        Landroid/support/design/internal/NavigationMenuPresenter$NormalViewHolder;,
        Landroid/support/design/internal/NavigationMenuPresenter$ViewHolder;
    }
.end annotation


# static fields
.field private static final STATE_ADAPTER:Ljava/lang/String; = "android:menu:adapter"

.field private static final STATE_HIERARCHY:Ljava/lang/String; = "android:menu:list"


# instance fields
.field private mAdapter:Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;

.field private mCallback:Landroid/support/v7/view/menu/MenuPresenter$Callback;

.field private mHeaderLayout:Landroid/widget/LinearLayout;

.field private mIconTintList:Landroid/content/res/ColorStateList;

.field private mId:I

.field private mItemBackground:Landroid/graphics/drawable/Drawable;

.field private mLayoutInflater:Landroid/view/LayoutInflater;

.field private mMenu:Landroid/support/v7/view/menu/MenuBuilder;

.field private mMenuView:Landroid/support/design/internal/NavigationMenuView;

.field private final mOnClickListener:Landroid/view/View$OnClickListener;

.field private mPaddingSeparator:I

.field private mPaddingTopDefault:I

.field private mTextAppearance:I

.field private mTextAppearanceSet:Z

.field private mTextColor:Landroid/content/res/ColorStateList;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 301
    new-instance v0, Landroid/support/design/internal/NavigationMenuPresenter$1;

    invoke-direct {v0, p0}, Landroid/support/design/internal/NavigationMenuPresenter$1;-><init>(Landroid/support/design/internal/NavigationMenuPresenter;)V

    iput-object v0, p0, Landroid/support/design/internal/NavigationMenuPresenter;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 637
    return-void
.end method

.method static synthetic access$000(Landroid/support/design/internal/NavigationMenuPresenter;)Landroid/support/v7/view/menu/MenuBuilder;
    .locals 1
    .param p0, "x0"    # Landroid/support/design/internal/NavigationMenuPresenter;

    .prologue
    .line 51
    iget-object v0, p0, Landroid/support/design/internal/NavigationMenuPresenter;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    return-object v0
.end method

.method static synthetic access$100(Landroid/support/design/internal/NavigationMenuPresenter;)Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;
    .locals 1
    .param p0, "x0"    # Landroid/support/design/internal/NavigationMenuPresenter;

    .prologue
    .line 51
    iget-object v0, p0, Landroid/support/design/internal/NavigationMenuPresenter;->mAdapter:Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;

    return-object v0
.end method

.method static synthetic access$1100(Landroid/support/design/internal/NavigationMenuPresenter;)I
    .locals 1
    .param p0, "x0"    # Landroid/support/design/internal/NavigationMenuPresenter;

    .prologue
    .line 51
    iget v0, p0, Landroid/support/design/internal/NavigationMenuPresenter;->mPaddingSeparator:I

    return v0
.end method

.method static synthetic access$200(Landroid/support/design/internal/NavigationMenuPresenter;)Landroid/view/LayoutInflater;
    .locals 1
    .param p0, "x0"    # Landroid/support/design/internal/NavigationMenuPresenter;

    .prologue
    .line 51
    iget-object v0, p0, Landroid/support/design/internal/NavigationMenuPresenter;->mLayoutInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method static synthetic access$300(Landroid/support/design/internal/NavigationMenuPresenter;)Landroid/view/View$OnClickListener;
    .locals 1
    .param p0, "x0"    # Landroid/support/design/internal/NavigationMenuPresenter;

    .prologue
    .line 51
    iget-object v0, p0, Landroid/support/design/internal/NavigationMenuPresenter;->mOnClickListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic access$400(Landroid/support/design/internal/NavigationMenuPresenter;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Landroid/support/design/internal/NavigationMenuPresenter;

    .prologue
    .line 51
    iget-object v0, p0, Landroid/support/design/internal/NavigationMenuPresenter;->mHeaderLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$500(Landroid/support/design/internal/NavigationMenuPresenter;)Landroid/content/res/ColorStateList;
    .locals 1
    .param p0, "x0"    # Landroid/support/design/internal/NavigationMenuPresenter;

    .prologue
    .line 51
    iget-object v0, p0, Landroid/support/design/internal/NavigationMenuPresenter;->mIconTintList:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method static synthetic access$600(Landroid/support/design/internal/NavigationMenuPresenter;)Z
    .locals 1
    .param p0, "x0"    # Landroid/support/design/internal/NavigationMenuPresenter;

    .prologue
    .line 51
    iget-boolean v0, p0, Landroid/support/design/internal/NavigationMenuPresenter;->mTextAppearanceSet:Z

    return v0
.end method

.method static synthetic access$700(Landroid/support/design/internal/NavigationMenuPresenter;)I
    .locals 1
    .param p0, "x0"    # Landroid/support/design/internal/NavigationMenuPresenter;

    .prologue
    .line 51
    iget v0, p0, Landroid/support/design/internal/NavigationMenuPresenter;->mTextAppearance:I

    return v0
.end method

.method static synthetic access$800(Landroid/support/design/internal/NavigationMenuPresenter;)Landroid/content/res/ColorStateList;
    .locals 1
    .param p0, "x0"    # Landroid/support/design/internal/NavigationMenuPresenter;

    .prologue
    .line 51
    iget-object v0, p0, Landroid/support/design/internal/NavigationMenuPresenter;->mTextColor:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method static synthetic access$900(Landroid/support/design/internal/NavigationMenuPresenter;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "x0"    # Landroid/support/design/internal/NavigationMenuPresenter;

    .prologue
    .line 51
    iget-object v0, p0, Landroid/support/design/internal/NavigationMenuPresenter;->mItemBackground:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method


# virtual methods
.method public addHeaderView(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v2, 0x0

    .line 196
    iget-object v0, p0, Landroid/support/design/internal/NavigationMenuPresenter;->mHeaderLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 198
    iget-object v0, p0, Landroid/support/design/internal/NavigationMenuPresenter;->mMenuView:Landroid/support/design/internal/NavigationMenuView;

    iget-object v1, p0, Landroid/support/design/internal/NavigationMenuPresenter;->mMenuView:Landroid/support/design/internal/NavigationMenuView;

    invoke-virtual {v1}, Landroid/support/design/internal/NavigationMenuView;->getPaddingBottom()I

    move-result v1

    invoke-virtual {v0, v2, v2, v2, v1}, Landroid/support/design/internal/NavigationMenuView;->setPadding(IIII)V

    .line 199
    return-void
.end method

.method public collapseItemActionView(Landroid/support/v7/view/menu/MenuBuilder;Landroid/support/v7/view/menu/MenuItemImpl;)Z
    .locals 1
    .param p1, "menu"    # Landroid/support/v7/view/menu/MenuBuilder;
    .param p2, "item"    # Landroid/support/v7/view/menu/MenuItemImpl;

    .prologue
    .line 146
    const/4 v0, 0x0

    return v0
.end method

.method public expandItemActionView(Landroid/support/v7/view/menu/MenuBuilder;Landroid/support/v7/view/menu/MenuItemImpl;)Z
    .locals 1
    .param p1, "menu"    # Landroid/support/v7/view/menu/MenuBuilder;
    .param p2, "item"    # Landroid/support/v7/view/menu/MenuItemImpl;

    .prologue
    .line 141
    const/4 v0, 0x0

    return v0
.end method

.method public flagActionItems()Z
    .locals 1

    .prologue
    .line 136
    const/4 v0, 0x0

    return v0
.end method

.method public getHeaderCount()I
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Landroid/support/design/internal/NavigationMenuPresenter;->mHeaderLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    return v0
.end method

.method public getHeaderView(I)Landroid/view/View;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 213
    iget-object v0, p0, Landroid/support/design/internal/NavigationMenuPresenter;->mHeaderLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 151
    iget v0, p0, Landroid/support/design/internal/NavigationMenuPresenter;->mId:I

    return v0
.end method

.method public getItemBackground()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 243
    iget-object v0, p0, Landroid/support/design/internal/NavigationMenuPresenter;->mItemBackground:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getItemTextColor()Landroid/content/res/ColorStateList;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 228
    iget-object v0, p0, Landroid/support/design/internal/NavigationMenuPresenter;->mTextColor:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getItemTintList()Landroid/content/res/ColorStateList;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 218
    iget-object v0, p0, Landroid/support/design/internal/NavigationMenuPresenter;->mIconTintList:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getMenuView(Landroid/view/ViewGroup;)Landroid/support/v7/view/menu/MenuView;
    .locals 4
    .param p1, "root"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v3, 0x0

    .line 96
    iget-object v0, p0, Landroid/support/design/internal/NavigationMenuPresenter;->mMenuView:Landroid/support/design/internal/NavigationMenuView;

    if-nez v0, :cond_1

    .line 97
    iget-object v0, p0, Landroid/support/design/internal/NavigationMenuPresenter;->mLayoutInflater:Landroid/view/LayoutInflater;

    sget v1, Landroid/support/design/R$layout;->design_navigation_menu:I

    invoke-virtual {v0, v1, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/internal/NavigationMenuView;

    iput-object v0, p0, Landroid/support/design/internal/NavigationMenuPresenter;->mMenuView:Landroid/support/design/internal/NavigationMenuView;

    .line 99
    iget-object v0, p0, Landroid/support/design/internal/NavigationMenuPresenter;->mAdapter:Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;

    if-nez v0, :cond_0

    .line 100
    new-instance v0, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;

    invoke-direct {v0, p0}, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;-><init>(Landroid/support/design/internal/NavigationMenuPresenter;)V

    iput-object v0, p0, Landroid/support/design/internal/NavigationMenuPresenter;->mAdapter:Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;

    .line 102
    :cond_0
    iget-object v0, p0, Landroid/support/design/internal/NavigationMenuPresenter;->mLayoutInflater:Landroid/view/LayoutInflater;

    sget v1, Landroid/support/design/R$layout;->design_navigation_item_header:I

    iget-object v2, p0, Landroid/support/design/internal/NavigationMenuPresenter;->mMenuView:Landroid/support/design/internal/NavigationMenuView;

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Landroid/support/design/internal/NavigationMenuPresenter;->mHeaderLayout:Landroid/widget/LinearLayout;

    .line 105
    iget-object v0, p0, Landroid/support/design/internal/NavigationMenuPresenter;->mMenuView:Landroid/support/design/internal/NavigationMenuView;

    iget-object v1, p0, Landroid/support/design/internal/NavigationMenuPresenter;->mAdapter:Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;

    invoke-virtual {v0, v1}, Landroid/support/design/internal/NavigationMenuView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 107
    :cond_1
    iget-object v0, p0, Landroid/support/design/internal/NavigationMenuPresenter;->mMenuView:Landroid/support/design/internal/NavigationMenuView;

    return-object v0
.end method

.method public inflateHeaderView(I)Landroid/view/View;
    .locals 4
    .param p1, "res"    # I
        .annotation build Landroid/support/annotation/LayoutRes;
        .end annotation
    .end param

    .prologue
    .line 190
    iget-object v1, p0, Landroid/support/design/internal/NavigationMenuPresenter;->mLayoutInflater:Landroid/view/LayoutInflater;

    iget-object v2, p0, Landroid/support/design/internal/NavigationMenuPresenter;->mHeaderLayout:Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 191
    .local v0, "view":Landroid/view/View;
    invoke-virtual {p0, v0}, Landroid/support/design/internal/NavigationMenuPresenter;->addHeaderView(Landroid/view/View;)V

    .line 192
    return-object v0
.end method

.method public initForMenu(Landroid/content/Context;Landroid/support/v7/view/menu/MenuBuilder;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "menu"    # Landroid/support/v7/view/menu/MenuBuilder;

    .prologue
    .line 85
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iput-object v1, p0, Landroid/support/design/internal/NavigationMenuPresenter;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 86
    iput-object p2, p0, Landroid/support/design/internal/NavigationMenuPresenter;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    .line 87
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 88
    .local v0, "res":Landroid/content/res/Resources;
    sget v1, Landroid/support/design/R$dimen;->design_navigation_padding_top_default:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Landroid/support/design/internal/NavigationMenuPresenter;->mPaddingTopDefault:I

    .line 90
    sget v1, Landroid/support/design/R$dimen;->design_navigation_separator_vertical_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Landroid/support/design/internal/NavigationMenuPresenter;->mPaddingSeparator:I

    .line 92
    return-void
.end method

.method public onCloseMenu(Landroid/support/v7/view/menu/MenuBuilder;Z)V
    .locals 1
    .param p1, "menu"    # Landroid/support/v7/view/menu/MenuBuilder;
    .param p2, "allMenusAreClosing"    # Z

    .prologue
    .line 129
    iget-object v0, p0, Landroid/support/design/internal/NavigationMenuPresenter;->mCallback:Landroid/support/v7/view/menu/MenuPresenter$Callback;

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Landroid/support/design/internal/NavigationMenuPresenter;->mCallback:Landroid/support/v7/view/menu/MenuPresenter$Callback;

    invoke-interface {v0, p1, p2}, Landroid/support/v7/view/menu/MenuPresenter$Callback;->onCloseMenu(Landroid/support/v7/view/menu/MenuBuilder;Z)V

    .line 132
    :cond_0
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 4
    .param p1, "parcelable"    # Landroid/os/Parcelable;

    .prologue
    .line 174
    move-object v2, p1

    check-cast v2, Landroid/os/Bundle;

    .line 175
    .local v2, "state":Landroid/os/Bundle;
    const-string v3, "android:menu:list"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v1

    .line 176
    .local v1, "hierarchy":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    if-eqz v1, :cond_0

    .line 177
    iget-object v3, p0, Landroid/support/design/internal/NavigationMenuPresenter;->mMenuView:Landroid/support/design/internal/NavigationMenuView;

    invoke-virtual {v3, v1}, Landroid/support/design/internal/NavigationMenuView;->restoreHierarchyState(Landroid/util/SparseArray;)V

    .line 179
    :cond_0
    const-string v3, "android:menu:adapter"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 180
    .local v0, "adapterState":Landroid/os/Bundle;
    if-eqz v0, :cond_1

    .line 181
    iget-object v3, p0, Landroid/support/design/internal/NavigationMenuPresenter;->mAdapter:Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;

    invoke-virtual {v3, v0}, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->restoreInstanceState(Landroid/os/Bundle;)V

    .line 183
    :cond_1
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 4

    .prologue
    .line 160
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 161
    .local v1, "state":Landroid/os/Bundle;
    iget-object v2, p0, Landroid/support/design/internal/NavigationMenuPresenter;->mMenuView:Landroid/support/design/internal/NavigationMenuView;

    if-eqz v2, :cond_0

    .line 162
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 163
    .local v0, "hierarchy":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    iget-object v2, p0, Landroid/support/design/internal/NavigationMenuPresenter;->mMenuView:Landroid/support/design/internal/NavigationMenuView;

    invoke-virtual {v2, v0}, Landroid/support/design/internal/NavigationMenuView;->saveHierarchyState(Landroid/util/SparseArray;)V

    .line 164
    const-string v2, "android:menu:list"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    .line 166
    .end local v0    # "hierarchy":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    :cond_0
    iget-object v2, p0, Landroid/support/design/internal/NavigationMenuPresenter;->mAdapter:Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;

    if-eqz v2, :cond_1

    .line 167
    const-string v2, "android:menu:adapter"

    iget-object v3, p0, Landroid/support/design/internal/NavigationMenuPresenter;->mAdapter:Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;

    invoke-virtual {v3}, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->createInstanceState()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 169
    :cond_1
    return-object v1
.end method

.method public onSubMenuSelected(Landroid/support/v7/view/menu/SubMenuBuilder;)Z
    .locals 1
    .param p1, "subMenu"    # Landroid/support/v7/view/menu/SubMenuBuilder;

    .prologue
    .line 124
    const/4 v0, 0x0

    return v0
.end method

.method public removeHeaderView(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v3, 0x0

    .line 202
    iget-object v0, p0, Landroid/support/design/internal/NavigationMenuPresenter;->mHeaderLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 203
    iget-object v0, p0, Landroid/support/design/internal/NavigationMenuPresenter;->mHeaderLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 204
    iget-object v0, p0, Landroid/support/design/internal/NavigationMenuPresenter;->mMenuView:Landroid/support/design/internal/NavigationMenuView;

    iget v1, p0, Landroid/support/design/internal/NavigationMenuPresenter;->mPaddingTopDefault:I

    iget-object v2, p0, Landroid/support/design/internal/NavigationMenuPresenter;->mMenuView:Landroid/support/design/internal/NavigationMenuView;

    invoke-virtual {v2}, Landroid/support/design/internal/NavigationMenuView;->getPaddingBottom()I

    move-result v2

    invoke-virtual {v0, v3, v1, v3, v2}, Landroid/support/design/internal/NavigationMenuView;->setPadding(IIII)V

    .line 206
    :cond_0
    return-void
.end method

.method public setCallback(Landroid/support/v7/view/menu/MenuPresenter$Callback;)V
    .locals 0
    .param p1, "cb"    # Landroid/support/v7/view/menu/MenuPresenter$Callback;

    .prologue
    .line 119
    iput-object p1, p0, Landroid/support/design/internal/NavigationMenuPresenter;->mCallback:Landroid/support/v7/view/menu/MenuPresenter$Callback;

    .line 120
    return-void
.end method

.method public setCheckedItem(Landroid/support/v7/view/menu/MenuItemImpl;)V
    .locals 1
    .param p1, "item"    # Landroid/support/v7/view/menu/MenuItemImpl;

    .prologue
    .line 186
    iget-object v0, p0, Landroid/support/design/internal/NavigationMenuPresenter;->mAdapter:Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;

    invoke-virtual {v0, p1}, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->setCheckedItem(Landroid/support/v7/view/menu/MenuItemImpl;)V

    .line 187
    return-void
.end method

.method public setId(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 155
    iput p1, p0, Landroid/support/design/internal/NavigationMenuPresenter;->mId:I

    .line 156
    return-void
.end method

.method public setItemBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "itemBackground"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 247
    iput-object p1, p0, Landroid/support/design/internal/NavigationMenuPresenter;->mItemBackground:Landroid/graphics/drawable/Drawable;

    .line 248
    return-void
.end method

.method public setItemIconTintList(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "tint"    # Landroid/content/res/ColorStateList;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 222
    iput-object p1, p0, Landroid/support/design/internal/NavigationMenuPresenter;->mIconTintList:Landroid/content/res/ColorStateList;

    .line 223
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/design/internal/NavigationMenuPresenter;->updateMenuView(Z)V

    .line 224
    return-void
.end method

.method public setItemTextAppearance(I)V
    .locals 1
    .param p1, "resId"    # I
        .annotation build Landroid/support/annotation/StyleRes;
        .end annotation
    .end param

    .prologue
    .line 237
    iput p1, p0, Landroid/support/design/internal/NavigationMenuPresenter;->mTextAppearance:I

    .line 238
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/design/internal/NavigationMenuPresenter;->mTextAppearanceSet:Z

    .line 239
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/design/internal/NavigationMenuPresenter;->updateMenuView(Z)V

    .line 240
    return-void
.end method

.method public setItemTextColor(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "textColor"    # Landroid/content/res/ColorStateList;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 232
    iput-object p1, p0, Landroid/support/design/internal/NavigationMenuPresenter;->mTextColor:Landroid/content/res/ColorStateList;

    .line 233
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/design/internal/NavigationMenuPresenter;->updateMenuView(Z)V

    .line 234
    return-void
.end method

.method public setUpdateSuspended(Z)V
    .locals 1
    .param p1, "updateSuspended"    # Z

    .prologue
    .line 251
    iget-object v0, p0, Landroid/support/design/internal/NavigationMenuPresenter;->mAdapter:Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;

    if-eqz v0, :cond_0

    .line 252
    iget-object v0, p0, Landroid/support/design/internal/NavigationMenuPresenter;->mAdapter:Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;

    invoke-virtual {v0, p1}, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->setUpdateSuspended(Z)V

    .line 254
    :cond_0
    return-void
.end method

.method public updateMenuView(Z)V
    .locals 1
    .param p1, "cleared"    # Z

    .prologue
    .line 112
    iget-object v0, p0, Landroid/support/design/internal/NavigationMenuPresenter;->mAdapter:Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Landroid/support/design/internal/NavigationMenuPresenter;->mAdapter:Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;

    invoke-virtual {v0}, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->update()V

    .line 115
    :cond_0
    return-void
.end method
