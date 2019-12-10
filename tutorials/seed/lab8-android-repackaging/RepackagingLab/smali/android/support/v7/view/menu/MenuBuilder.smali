.class public Landroid/support/v7/view/menu/MenuBuilder;
.super Ljava/lang/Object;
.source "MenuBuilder.java"

# interfaces
.implements Landroid/support/v4/internal/view/SupportMenu;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/view/menu/MenuBuilder$ItemInvoker;,
        Landroid/support/v7/view/menu/MenuBuilder$Callback;
    }
.end annotation


# static fields
.field private static final ACTION_VIEW_STATES_KEY:Ljava/lang/String; = "android:menu:actionviewstates"

.field private static final EXPANDED_ACTION_VIEW_ID:Ljava/lang/String; = "android:menu:expandedactionview"

.field private static final PRESENTER_KEY:Ljava/lang/String; = "android:menu:presenters"

.field private static final TAG:Ljava/lang/String; = "MenuBuilder"

.field private static final sCategoryToOrder:[I


# instance fields
.field private mActionItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v7/view/menu/MenuItemImpl;",
            ">;"
        }
    .end annotation
.end field

.field private mCallback:Landroid/support/v7/view/menu/MenuBuilder$Callback;

.field private final mContext:Landroid/content/Context;

.field private mCurrentMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

.field private mDefaultShowAsAction:I

.field private mExpandedItem:Landroid/support/v7/view/menu/MenuItemImpl;

.field private mFrozenViewStates:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;"
        }
    .end annotation
.end field

.field mHeaderIcon:Landroid/graphics/drawable/Drawable;

.field mHeaderTitle:Ljava/lang/CharSequence;

.field mHeaderView:Landroid/view/View;

.field private mIsActionItemsStale:Z

.field private mIsClosing:Z

.field private mIsVisibleItemsStale:Z

.field private mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v7/view/menu/MenuItemImpl;",
            ">;"
        }
    .end annotation
.end field

.field private mItemsChangedWhileDispatchPrevented:Z

.field private mNonActionItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v7/view/menu/MenuItemImpl;",
            ">;"
        }
    .end annotation
.end field

.field private mOptionalIconsVisible:Z

.field private mOverrideVisibleItems:Z

.field private mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/support/v7/view/menu/MenuPresenter;",
            ">;>;"
        }
    .end annotation
.end field

.field private mPreventDispatchingItemsChanged:Z

.field private mQwertyMode:Z

.field private final mResources:Landroid/content/res/Resources;

.field private mShortcutsVisible:Z

.field private mTempShortcutItemList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v7/view/menu/MenuItemImpl;",
            ">;"
        }
    .end annotation
.end field

.field private mVisibleItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v7/view/menu/MenuItemImpl;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 62
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroid/support/v7/view/menu/MenuBuilder;->sCategoryToOrder:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x1
        0x4
        0x5
        0x3
        0x2
        0x0
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 214
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    iput v0, p0, Landroid/support/v7/view/menu/MenuBuilder;->mDefaultShowAsAction:I

    .line 160
    iput-boolean v0, p0, Landroid/support/v7/view/menu/MenuBuilder;->mPreventDispatchingItemsChanged:Z

    .line 162
    iput-boolean v0, p0, Landroid/support/v7/view/menu/MenuBuilder;->mItemsChangedWhileDispatchPrevented:Z

    .line 164
    iput-boolean v0, p0, Landroid/support/v7/view/menu/MenuBuilder;->mOptionalIconsVisible:Z

    .line 166
    iput-boolean v0, p0, Landroid/support/v7/view/menu/MenuBuilder;->mIsClosing:Z

    .line 168
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/view/menu/MenuBuilder;->mTempShortcutItemList:Ljava/util/ArrayList;

    .line 170
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 215
    iput-object p1, p0, Landroid/support/v7/view/menu/MenuBuilder;->mContext:Landroid/content/Context;

    .line 216
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/view/menu/MenuBuilder;->mResources:Landroid/content/res/Resources;

    .line 218
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    .line 220
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/view/menu/MenuBuilder;->mVisibleItems:Ljava/util/ArrayList;

    .line 221
    iput-boolean v1, p0, Landroid/support/v7/view/menu/MenuBuilder;->mIsVisibleItemsStale:Z

    .line 223
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/view/menu/MenuBuilder;->mActionItems:Ljava/util/ArrayList;

    .line 224
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/view/menu/MenuBuilder;->mNonActionItems:Ljava/util/ArrayList;

    .line 225
    iput-boolean v1, p0, Landroid/support/v7/view/menu/MenuBuilder;->mIsActionItemsStale:Z

    .line 227
    invoke-direct {p0, v1}, Landroid/support/v7/view/menu/MenuBuilder;->setShortcutsVisibleInner(Z)V

    .line 228
    return-void
.end method

.method private createNewMenuItem(IIIILjava/lang/CharSequence;I)Landroid/support/v7/view/menu/MenuItemImpl;
    .locals 8
    .param p1, "group"    # I
    .param p2, "id"    # I
    .param p3, "categoryOrder"    # I
    .param p4, "ordering"    # I
    .param p5, "title"    # Ljava/lang/CharSequence;
    .param p6, "defaultShowAsAction"    # I

    .prologue
    .line 452
    new-instance v0, Landroid/support/v7/view/menu/MenuItemImpl;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Landroid/support/v7/view/menu/MenuItemImpl;-><init>(Landroid/support/v7/view/menu/MenuBuilder;IIIILjava/lang/CharSequence;I)V

    return-object v0
.end method

.method private dispatchPresenterUpdate(Z)V
    .locals 4
    .param p1, "cleared"    # Z

    .prologue
    .line 276
    iget-object v3, p0, Landroid/support/v7/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 288
    :goto_0
    return-void

    .line 278
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/view/menu/MenuBuilder;->stopDispatchingItemsChanged()V

    .line 279
    iget-object v3, p0, Landroid/support/v7/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 280
    .local v2, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/support/v7/view/menu/MenuPresenter;>;"
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/view/menu/MenuPresenter;

    .line 281
    .local v1, "presenter":Landroid/support/v7/view/menu/MenuPresenter;
    if-nez v1, :cond_1

    .line 282
    iget-object v3, p0, Landroid/support/v7/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 284
    :cond_1
    invoke-interface {v1, p1}, Landroid/support/v7/view/menu/MenuPresenter;->updateMenuView(Z)V

    goto :goto_1

    .line 287
    .end local v1    # "presenter":Landroid/support/v7/view/menu/MenuPresenter;
    .end local v2    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/support/v7/view/menu/MenuPresenter;>;"
    :cond_2
    invoke-virtual {p0}, Landroid/support/v7/view/menu/MenuBuilder;->startDispatchingItemsChanged()V

    goto :goto_0
.end method

.method private dispatchRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "state"    # Landroid/os/Bundle;

    .prologue
    .line 336
    const-string v6, "android:menu:presenters"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v4

    .line 338
    .local v4, "presenterStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    if-eqz v4, :cond_0

    iget-object v6, p0, Landroid/support/v7/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v6}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 354
    :cond_0
    return-void

    .line 340
    :cond_1
    iget-object v6, p0, Landroid/support/v7/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v6}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/ref/WeakReference;

    .line 341
    .local v5, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/support/v7/view/menu/MenuPresenter;>;"
    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v7/view/menu/MenuPresenter;

    .line 342
    .local v3, "presenter":Landroid/support/v7/view/menu/MenuPresenter;
    if-nez v3, :cond_3

    .line 343
    iget-object v6, p0, Landroid/support/v7/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v6, v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 345
    :cond_3
    invoke-interface {v3}, Landroid/support/v7/view/menu/MenuPresenter;->getId()I

    move-result v1

    .line 346
    .local v1, "id":I
    if-lez v1, :cond_2

    .line 347
    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Parcelable;

    .line 348
    .local v2, "parcel":Landroid/os/Parcelable;
    if-eqz v2, :cond_2

    .line 349
    invoke-interface {v3, v2}, Landroid/support/v7/view/menu/MenuPresenter;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    goto :goto_0
.end method

.method private dispatchSaveInstanceState(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 313
    iget-object v6, p0, Landroid/support/v7/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v6}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 333
    :goto_0
    return-void

    .line 315
    :cond_0
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    .line 317
    .local v3, "presenterStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    iget-object v6, p0, Landroid/support/v7/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v6}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/ref/WeakReference;

    .line 318
    .local v4, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/support/v7/view/menu/MenuPresenter;>;"
    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v7/view/menu/MenuPresenter;

    .line 319
    .local v2, "presenter":Landroid/support/v7/view/menu/MenuPresenter;
    if-nez v2, :cond_2

    .line 320
    iget-object v6, p0, Landroid/support/v7/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v6, v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 322
    :cond_2
    invoke-interface {v2}, Landroid/support/v7/view/menu/MenuPresenter;->getId()I

    move-result v1

    .line 323
    .local v1, "id":I
    if-lez v1, :cond_1

    .line 324
    invoke-interface {v2}, Landroid/support/v7/view/menu/MenuPresenter;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v5

    .line 325
    .local v5, "state":Landroid/os/Parcelable;
    if-eqz v5, :cond_1

    .line 326
    invoke-virtual {v3, v1, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_1

    .line 332
    .end local v1    # "id":I
    .end local v2    # "presenter":Landroid/support/v7/view/menu/MenuPresenter;
    .end local v4    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/support/v7/view/menu/MenuPresenter;>;"
    .end local v5    # "state":Landroid/os/Parcelable;
    :cond_3
    const-string v6, "android:menu:presenters"

    invoke-virtual {p1, v6, v3}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    goto :goto_0
.end method

.method private dispatchSubMenuSelected(Landroid/support/v7/view/menu/SubMenuBuilder;Landroid/support/v7/view/menu/MenuPresenter;)Z
    .locals 5
    .param p1, "subMenu"    # Landroid/support/v7/view/menu/SubMenuBuilder;
    .param p2, "preferredPresenter"    # Landroid/support/v7/view/menu/MenuPresenter;

    .prologue
    .line 292
    iget-object v4, p0, Landroid/support/v7/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v3, 0x0

    .line 309
    :cond_0
    return v3

    .line 294
    :cond_1
    const/4 v3, 0x0

    .line 297
    .local v3, "result":Z
    if-eqz p2, :cond_2

    .line 298
    invoke-interface {p2, p1}, Landroid/support/v7/view/menu/MenuPresenter;->onSubMenuSelected(Landroid/support/v7/view/menu/SubMenuBuilder;)Z

    move-result v3

    .line 301
    :cond_2
    iget-object v4, p0, Landroid/support/v7/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 302
    .local v2, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/support/v7/view/menu/MenuPresenter;>;"
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/view/menu/MenuPresenter;

    .line 303
    .local v1, "presenter":Landroid/support/v7/view/menu/MenuPresenter;
    if-nez v1, :cond_4

    .line 304
    iget-object v4, p0, Landroid/support/v7/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 305
    :cond_4
    if-nez v3, :cond_3

    .line 306
    invoke-interface {v1, p1}, Landroid/support/v7/view/menu/MenuPresenter;->onSubMenuSelected(Landroid/support/v7/view/menu/SubMenuBuilder;)Z

    move-result v3

    goto :goto_0
.end method

.method private static findInsertIndex(Ljava/util/ArrayList;I)I
    .locals 3
    .param p1, "ordering"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v7/view/menu/MenuItemImpl;",
            ">;I)I"
        }
    .end annotation

    .prologue
    .line 824
    .local p0, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v7/view/menu/MenuItemImpl;>;"
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 825
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/view/menu/MenuItemImpl;

    .line 826
    .local v1, "item":Landroid/support/v7/view/menu/MenuItemImpl;
    invoke-virtual {v1}, Landroid/support/v7/view/menu/MenuItemImpl;->getOrdering()I

    move-result v2

    if-gt v2, p1, :cond_0

    .line 827
    add-int/lit8 v2, v0, 0x1

    .line 831
    .end local v1    # "item":Landroid/support/v7/view/menu/MenuItemImpl;
    :goto_1
    return v2

    .line 824
    .restart local v1    # "item":Landroid/support/v7/view/menu/MenuItemImpl;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 831
    .end local v1    # "item":Landroid/support/v7/view/menu/MenuItemImpl;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private static getOrdering(I)I
    .locals 3
    .param p0, "categoryOrder"    # I

    .prologue
    .line 757
    const/high16 v1, -0x10000

    and-int/2addr v1, p0

    shr-int/lit8 v0, v1, 0x10

    .line 759
    .local v0, "index":I
    if-ltz v0, :cond_0

    sget-object v1, Landroid/support/v7/view/menu/MenuBuilder;->sCategoryToOrder:[I

    array-length v1, v1

    if-lt v0, v1, :cond_1

    .line 760
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "order does not contain a valid category."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 763
    :cond_1
    sget-object v1, Landroid/support/v7/view/menu/MenuBuilder;->sCategoryToOrder:[I

    aget v1, v1, v0

    shl-int/lit8 v1, v1, 0x10

    const v2, 0xffff

    and-int/2addr v2, p0

    or-int/2addr v1, v2

    return v1
.end method

.method private removeItemAtInt(IZ)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "updateChildrenOnMenuViews"    # Z

    .prologue
    .line 562
    if-ltz p1, :cond_0

    iget-object v0, p0, Landroid/support/v7/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 567
    :cond_0
    :goto_0
    return-void

    .line 564
    :cond_1
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 566
    if-eqz p2, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/support/v7/view/menu/MenuBuilder;->onItemsChanged(Z)V

    goto :goto_0
.end method

.method private setHeaderInternal(ILjava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Landroid/view/View;)V
    .locals 3
    .param p1, "titleRes"    # I
    .param p2, "title"    # Ljava/lang/CharSequence;
    .param p3, "iconRes"    # I
    .param p4, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p5, "view"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 1184
    invoke-virtual {p0}, Landroid/support/v7/view/menu/MenuBuilder;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1186
    .local v0, "r":Landroid/content/res/Resources;
    if-eqz p5, :cond_0

    .line 1187
    iput-object p5, p0, Landroid/support/v7/view/menu/MenuBuilder;->mHeaderView:Landroid/view/View;

    .line 1190
    iput-object v2, p0, Landroid/support/v7/view/menu/MenuBuilder;->mHeaderTitle:Ljava/lang/CharSequence;

    .line 1191
    iput-object v2, p0, Landroid/support/v7/view/menu/MenuBuilder;->mHeaderIcon:Landroid/graphics/drawable/Drawable;

    .line 1210
    :goto_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/support/v7/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 1211
    return-void

    .line 1193
    :cond_0
    if-lez p1, :cond_3

    .line 1194
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v7/view/menu/MenuBuilder;->mHeaderTitle:Ljava/lang/CharSequence;

    .line 1199
    :cond_1
    :goto_1
    if-lez p3, :cond_4

    .line 1200
    invoke-virtual {p0}, Landroid/support/v7/view/menu/MenuBuilder;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p3}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v7/view/menu/MenuBuilder;->mHeaderIcon:Landroid/graphics/drawable/Drawable;

    .line 1206
    :cond_2
    :goto_2
    iput-object v2, p0, Landroid/support/v7/view/menu/MenuBuilder;->mHeaderView:Landroid/view/View;

    goto :goto_0

    .line 1195
    :cond_3
    if-eqz p2, :cond_1

    .line 1196
    iput-object p2, p0, Landroid/support/v7/view/menu/MenuBuilder;->mHeaderTitle:Ljava/lang/CharSequence;

    goto :goto_1

    .line 1201
    :cond_4
    if-eqz p4, :cond_2

    .line 1202
    iput-object p4, p0, Landroid/support/v7/view/menu/MenuBuilder;->mHeaderIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_2
.end method

.method private setShortcutsVisibleInner(Z)V
    .locals 3
    .param p1, "shortcutsVisible"    # Z

    .prologue
    const/4 v0, 0x1

    .line 790
    if-eqz p1, :cond_0

    iget-object v1, p0, Landroid/support/v7/view/menu/MenuBuilder;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->keyboard:I

    if-eq v1, v0, :cond_0

    iget-object v1, p0, Landroid/support/v7/view/menu/MenuBuilder;->mResources:Landroid/content/res/Resources;

    sget v2, Landroid/support/v7/appcompat/R$bool;->abc_config_showMenuShortcutsWhenKeyboardPresent:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    iput-boolean v0, p0, Landroid/support/v7/view/menu/MenuBuilder;->mShortcutsVisible:Z

    .line 793
    return-void

    .line 790
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public add(I)Landroid/view/MenuItem;
    .locals 2
    .param p1, "titleRes"    # I

    .prologue
    const/4 v1, 0x0

    .line 462
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuBuilder;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v1, v1, v0}, Landroid/support/v7/view/menu/MenuBuilder;->addInternal(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    return-object v0
.end method

.method public add(IIII)Landroid/view/MenuItem;
    .locals 1
    .param p1, "group"    # I
    .param p2, "id"    # I
    .param p3, "categoryOrder"    # I
    .param p4, "title"    # I

    .prologue
    .line 472
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuBuilder;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0, p4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/support/v7/view/menu/MenuBuilder;->addInternal(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    return-object v0
.end method

.method public add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 1
    .param p1, "group"    # I
    .param p2, "id"    # I
    .param p3, "categoryOrder"    # I
    .param p4, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 467
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/support/v7/view/menu/MenuBuilder;->addInternal(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    return-object v0
.end method

.method public add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v0, 0x0

    .line 457
    invoke-virtual {p0, v0, v0, v0, p1}, Landroid/support/v7/view/menu/MenuBuilder;->addInternal(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    return-object v0
.end method

.method public addIntentOptions(IIILandroid/content/ComponentName;[Landroid/content/Intent;Landroid/content/Intent;I[Landroid/view/MenuItem;)I
    .locals 13
    .param p1, "group"    # I
    .param p2, "id"    # I
    .param p3, "categoryOrder"    # I
    .param p4, "caller"    # Landroid/content/ComponentName;
    .param p5, "specifics"    # [Landroid/content/Intent;
    .param p6, "intent"    # Landroid/content/Intent;
    .param p7, "flags"    # I
    .param p8, "outSpecificItems"    # [Landroid/view/MenuItem;

    .prologue
    .line 502
    iget-object v10, p0, Landroid/support/v7/view/menu/MenuBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 503
    .local v7, "pm":Landroid/content/pm/PackageManager;
    const/4 v10, 0x0

    move-object/from16 v0, p4

    move-object/from16 v1, p5

    move-object/from16 v2, p6

    invoke-virtual {v7, v0, v1, v2, v10}, Landroid/content/pm/PackageManager;->queryIntentActivityOptions(Landroid/content/ComponentName;[Landroid/content/Intent;Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v6

    .line 505
    .local v6, "lri":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v6, :cond_2

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v3

    .line 507
    .local v3, "N":I
    :goto_0
    and-int/lit8 v10, p7, 0x1

    if-nez v10, :cond_0

    .line 508
    invoke-virtual {p0, p1}, Landroid/support/v7/view/menu/MenuBuilder;->removeGroup(I)V

    .line 511
    :cond_0
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v3, :cond_4

    .line 512
    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/ResolveInfo;

    .line 513
    .local v8, "ri":Landroid/content/pm/ResolveInfo;
    new-instance v9, Landroid/content/Intent;

    iget v10, v8, Landroid/content/pm/ResolveInfo;->specificIndex:I

    if-gez v10, :cond_3

    move-object/from16 v10, p6

    :goto_2
    invoke-direct {v9, v10}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 515
    .local v9, "rintent":Landroid/content/Intent;
    new-instance v10, Landroid/content/ComponentName;

    iget-object v11, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v11, v11, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v11, v11, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v12, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v12, v12, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v10, v11, v12}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9, v10}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 518
    invoke-virtual {v8, v7}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v10

    move/from16 v0, p3

    invoke-virtual {p0, p1, p2, v0, v10}, Landroid/support/v7/view/menu/MenuBuilder;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v10

    invoke-virtual {v8, v7}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    invoke-interface {v10, v11}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    move-result-object v10

    invoke-interface {v10, v9}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    move-result-object v5

    .line 521
    .local v5, "item":Landroid/view/MenuItem;
    if-eqz p8, :cond_1

    iget v10, v8, Landroid/content/pm/ResolveInfo;->specificIndex:I

    if-ltz v10, :cond_1

    .line 522
    iget v10, v8, Landroid/content/pm/ResolveInfo;->specificIndex:I

    aput-object v5, p8, v10

    .line 511
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 505
    .end local v3    # "N":I
    .end local v4    # "i":I
    .end local v5    # "item":Landroid/view/MenuItem;
    .end local v8    # "ri":Landroid/content/pm/ResolveInfo;
    .end local v9    # "rintent":Landroid/content/Intent;
    :cond_2
    const/4 v3, 0x0

    goto :goto_0

    .line 513
    .restart local v3    # "N":I
    .restart local v4    # "i":I
    .restart local v8    # "ri":Landroid/content/pm/ResolveInfo;
    :cond_3
    iget v10, v8, Landroid/content/pm/ResolveInfo;->specificIndex:I

    aget-object v10, p5, v10

    goto :goto_2

    .line 526
    .end local v8    # "ri":Landroid/content/pm/ResolveInfo;
    :cond_4
    return v3
.end method

.method protected addInternal(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 8
    .param p1, "group"    # I
    .param p2, "id"    # I
    .param p3, "categoryOrder"    # I
    .param p4, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 433
    invoke-static {p3}, Landroid/support/v7/view/menu/MenuBuilder;->getOrdering(I)I

    move-result v4

    .line 435
    .local v4, "ordering":I
    iget v6, p0, Landroid/support/v7/view/menu/MenuBuilder;->mDefaultShowAsAction:I

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Landroid/support/v7/view/menu/MenuBuilder;->createNewMenuItem(IIIILjava/lang/CharSequence;I)Landroid/support/v7/view/menu/MenuItemImpl;

    move-result-object v7

    .line 438
    .local v7, "item":Landroid/support/v7/view/menu/MenuItemImpl;
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuBuilder;->mCurrentMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    if-eqz v0, :cond_0

    .line 440
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuBuilder;->mCurrentMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    invoke-virtual {v7, v0}, Landroid/support/v7/view/menu/MenuItemImpl;->setMenuInfo(Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 443
    :cond_0
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/support/v7/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-static {v1, v4}, Landroid/support/v7/view/menu/MenuBuilder;->findInsertIndex(Ljava/util/ArrayList;I)I

    move-result v1

    invoke-virtual {v0, v1, v7}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 444
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/support/v7/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 446
    return-object v7
.end method

.method public addMenuPresenter(Landroid/support/v7/view/menu/MenuPresenter;)V
    .locals 1
    .param p1, "presenter"    # Landroid/support/v7/view/menu/MenuPresenter;

    .prologue
    .line 242
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1, v0}, Landroid/support/v7/view/menu/MenuBuilder;->addMenuPresenter(Landroid/support/v7/view/menu/MenuPresenter;Landroid/content/Context;)V

    .line 243
    return-void
.end method

.method public addMenuPresenter(Landroid/support/v7/view/menu/MenuPresenter;Landroid/content/Context;)V
    .locals 2
    .param p1, "presenter"    # Landroid/support/v7/view/menu/MenuPresenter;
    .param p2, "menuContext"    # Landroid/content/Context;

    .prologue
    .line 255
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 256
    invoke-interface {p1, p2, p0}, Landroid/support/v7/view/menu/MenuPresenter;->initForMenu(Landroid/content/Context;Landroid/support/v7/view/menu/MenuBuilder;)V

    .line 257
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/view/menu/MenuBuilder;->mIsActionItemsStale:Z

    .line 258
    return-void
.end method

.method public addSubMenu(I)Landroid/view/SubMenu;
    .locals 2
    .param p1, "titleRes"    # I

    .prologue
    const/4 v1, 0x0

    .line 482
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuBuilder;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v1, v1, v0}, Landroid/support/v7/view/menu/MenuBuilder;->addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;

    move-result-object v0

    return-object v0
.end method

.method public addSubMenu(IIII)Landroid/view/SubMenu;
    .locals 1
    .param p1, "group"    # I
    .param p2, "id"    # I
    .param p3, "categoryOrder"    # I
    .param p4, "title"    # I

    .prologue
    .line 496
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuBuilder;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0, p4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/support/v7/view/menu/MenuBuilder;->addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;

    move-result-object v0

    return-object v0
.end method

.method public addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;
    .locals 3
    .param p1, "group"    # I
    .param p2, "id"    # I
    .param p3, "categoryOrder"    # I
    .param p4, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 487
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/support/v7/view/menu/MenuBuilder;->addInternal(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    check-cast v0, Landroid/support/v7/view/menu/MenuItemImpl;

    .line 488
    .local v0, "item":Landroid/support/v7/view/menu/MenuItemImpl;
    new-instance v1, Landroid/support/v7/view/menu/SubMenuBuilder;

    iget-object v2, p0, Landroid/support/v7/view/menu/MenuBuilder;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, p0, v0}, Landroid/support/v7/view/menu/SubMenuBuilder;-><init>(Landroid/content/Context;Landroid/support/v7/view/menu/MenuBuilder;Landroid/support/v7/view/menu/MenuItemImpl;)V

    .line 489
    .local v1, "subMenu":Landroid/support/v7/view/menu/SubMenuBuilder;
    invoke-virtual {v0, v1}, Landroid/support/v7/view/menu/MenuItemImpl;->setSubMenu(Landroid/support/v7/view/menu/SubMenuBuilder;)V

    .line 491
    return-object v1
.end method

.method public addSubMenu(Ljava/lang/CharSequence;)Landroid/view/SubMenu;
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v0, 0x0

    .line 477
    invoke-virtual {p0, v0, v0, v0, p1}, Landroid/support/v7/view/menu/MenuBuilder;->addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;

    move-result-object v0

    return-object v0
.end method

.method public changeMenuMode()V
    .locals 1

    .prologue
    .line 818
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuBuilder;->mCallback:Landroid/support/v7/view/menu/MenuBuilder$Callback;

    if-eqz v0, :cond_0

    .line 819
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuBuilder;->mCallback:Landroid/support/v7/view/menu/MenuBuilder$Callback;

    invoke-interface {v0, p0}, Landroid/support/v7/view/menu/MenuBuilder$Callback;->onMenuModeChange(Landroid/support/v7/view/menu/MenuBuilder;)V

    .line 821
    :cond_0
    return-void
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 584
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuBuilder;->mExpandedItem:Landroid/support/v7/view/menu/MenuItemImpl;

    if-eqz v0, :cond_0

    .line 585
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuBuilder;->mExpandedItem:Landroid/support/v7/view/menu/MenuItemImpl;

    invoke-virtual {p0, v0}, Landroid/support/v7/view/menu/MenuBuilder;->collapseItemActionView(Landroid/support/v7/view/menu/MenuItemImpl;)Z

    .line 587
    :cond_0
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 589
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/support/v7/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 590
    return-void
.end method

.method public clearAll()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 574
    iput-boolean v1, p0, Landroid/support/v7/view/menu/MenuBuilder;->mPreventDispatchingItemsChanged:Z

    .line 575
    invoke-virtual {p0}, Landroid/support/v7/view/menu/MenuBuilder;->clear()V

    .line 576
    invoke-virtual {p0}, Landroid/support/v7/view/menu/MenuBuilder;->clearHeader()V

    .line 577
    iput-boolean v0, p0, Landroid/support/v7/view/menu/MenuBuilder;->mPreventDispatchingItemsChanged:Z

    .line 578
    iput-boolean v0, p0, Landroid/support/v7/view/menu/MenuBuilder;->mItemsChangedWhileDispatchPrevented:Z

    .line 579
    invoke-virtual {p0, v1}, Landroid/support/v7/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 580
    return-void
.end method

.method public clearHeader()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1175
    iput-object v0, p0, Landroid/support/v7/view/menu/MenuBuilder;->mHeaderIcon:Landroid/graphics/drawable/Drawable;

    .line 1176
    iput-object v0, p0, Landroid/support/v7/view/menu/MenuBuilder;->mHeaderTitle:Ljava/lang/CharSequence;

    .line 1177
    iput-object v0, p0, Landroid/support/v7/view/menu/MenuBuilder;->mHeaderView:Landroid/view/View;

    .line 1179
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v7/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 1180
    return-void
.end method

.method public close()V
    .locals 1

    .prologue
    .line 1013
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/support/v7/view/menu/MenuBuilder;->close(Z)V

    .line 1014
    return-void
.end method

.method public final close(Z)V
    .locals 4
    .param p1, "allMenusAreClosing"    # Z

    .prologue
    .line 997
    iget-boolean v3, p0, Landroid/support/v7/view/menu/MenuBuilder;->mIsClosing:Z

    if-eqz v3, :cond_0

    .line 1009
    :goto_0
    return-void

    .line 999
    :cond_0
    const/4 v3, 0x1

    iput-boolean v3, p0, Landroid/support/v7/view/menu/MenuBuilder;->mIsClosing:Z

    .line 1000
    iget-object v3, p0, Landroid/support/v7/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 1001
    .local v2, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/support/v7/view/menu/MenuPresenter;>;"
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/view/menu/MenuPresenter;

    .line 1002
    .local v1, "presenter":Landroid/support/v7/view/menu/MenuPresenter;
    if-nez v1, :cond_1

    .line 1003
    iget-object v3, p0, Landroid/support/v7/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1005
    :cond_1
    invoke-interface {v1, p0, p1}, Landroid/support/v7/view/menu/MenuPresenter;->onCloseMenu(Landroid/support/v7/view/menu/MenuBuilder;Z)V

    goto :goto_1

    .line 1008
    .end local v1    # "presenter":Landroid/support/v7/view/menu/MenuPresenter;
    .end local v2    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/support/v7/view/menu/MenuPresenter;>;"
    :cond_2
    const/4 v3, 0x0

    iput-boolean v3, p0, Landroid/support/v7/view/menu/MenuBuilder;->mIsClosing:Z

    goto :goto_0
.end method

.method public collapseItemActionView(Landroid/support/v7/view/menu/MenuItemImpl;)Z
    .locals 5
    .param p1, "item"    # Landroid/support/v7/view/menu/MenuItemImpl;

    .prologue
    .line 1336
    iget-object v4, p0, Landroid/support/v7/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Landroid/support/v7/view/menu/MenuBuilder;->mExpandedItem:Landroid/support/v7/view/menu/MenuItemImpl;

    if-eq v4, p1, :cond_2

    :cond_0
    const/4 v0, 0x0

    .line 1354
    :cond_1
    :goto_0
    return v0

    .line 1338
    :cond_2
    const/4 v0, 0x0

    .line 1340
    .local v0, "collapsed":Z
    invoke-virtual {p0}, Landroid/support/v7/view/menu/MenuBuilder;->stopDispatchingItemsChanged()V

    .line 1341
    iget-object v4, p0, Landroid/support/v7/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    .line 1342
    .local v3, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/support/v7/view/menu/MenuPresenter;>;"
    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v7/view/menu/MenuPresenter;

    .line 1343
    .local v2, "presenter":Landroid/support/v7/view/menu/MenuPresenter;
    if-nez v2, :cond_4

    .line 1344
    iget-object v4, p0, Landroid/support/v7/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1345
    :cond_4
    invoke-interface {v2, p0, p1}, Landroid/support/v7/view/menu/MenuPresenter;->collapseItemActionView(Landroid/support/v7/view/menu/MenuBuilder;Landroid/support/v7/view/menu/MenuItemImpl;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1349
    .end local v2    # "presenter":Landroid/support/v7/view/menu/MenuPresenter;
    .end local v3    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/support/v7/view/menu/MenuPresenter;>;"
    :cond_5
    invoke-virtual {p0}, Landroid/support/v7/view/menu/MenuBuilder;->startDispatchingItemsChanged()V

    .line 1351
    if-eqz v0, :cond_1

    .line 1352
    const/4 v4, 0x0

    iput-object v4, p0, Landroid/support/v7/view/menu/MenuBuilder;->mExpandedItem:Landroid/support/v7/view/menu/MenuItemImpl;

    goto :goto_0
.end method

.method dispatchMenuItemSelected(Landroid/support/v7/view/menu/MenuBuilder;Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "menu"    # Landroid/support/v7/view/menu/MenuBuilder;
    .param p2, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 811
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuBuilder;->mCallback:Landroid/support/v7/view/menu/MenuBuilder$Callback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/view/menu/MenuBuilder;->mCallback:Landroid/support/v7/view/menu/MenuBuilder$Callback;

    invoke-interface {v0, p1, p2}, Landroid/support/v7/view/menu/MenuBuilder$Callback;->onMenuItemSelected(Landroid/support/v7/view/menu/MenuBuilder;Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public expandItemActionView(Landroid/support/v7/view/menu/MenuItemImpl;)Z
    .locals 5
    .param p1, "item"    # Landroid/support/v7/view/menu/MenuItemImpl;

    .prologue
    .line 1314
    iget-object v4, p0, Landroid/support/v7/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v0, 0x0

    .line 1332
    :cond_0
    :goto_0
    return v0

    .line 1316
    :cond_1
    const/4 v0, 0x0

    .line 1318
    .local v0, "expanded":Z
    invoke-virtual {p0}, Landroid/support/v7/view/menu/MenuBuilder;->stopDispatchingItemsChanged()V

    .line 1319
    iget-object v4, p0, Landroid/support/v7/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    .line 1320
    .local v3, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/support/v7/view/menu/MenuPresenter;>;"
    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v7/view/menu/MenuPresenter;

    .line 1321
    .local v2, "presenter":Landroid/support/v7/view/menu/MenuPresenter;
    if-nez v2, :cond_3

    .line 1322
    iget-object v4, p0, Landroid/support/v7/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1323
    :cond_3
    invoke-interface {v2, p0, p1}, Landroid/support/v7/view/menu/MenuPresenter;->expandItemActionView(Landroid/support/v7/view/menu/MenuBuilder;Landroid/support/v7/view/menu/MenuItemImpl;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1327
    .end local v2    # "presenter":Landroid/support/v7/view/menu/MenuPresenter;
    .end local v3    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/support/v7/view/menu/MenuPresenter;>;"
    :cond_4
    invoke-virtual {p0}, Landroid/support/v7/view/menu/MenuBuilder;->startDispatchingItemsChanged()V

    .line 1329
    if-eqz v0, :cond_0

    .line 1330
    iput-object p1, p0, Landroid/support/v7/view/menu/MenuBuilder;->mExpandedItem:Landroid/support/v7/view/menu/MenuItemImpl;

    goto :goto_0
.end method

.method public findGroupIndex(I)I
    .locals 1
    .param p1, "group"    # I

    .prologue
    .line 702
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/support/v7/view/menu/MenuBuilder;->findGroupIndex(II)I

    move-result v0

    return v0
.end method

.method public findGroupIndex(II)I
    .locals 4
    .param p1, "group"    # I
    .param p2, "start"    # I

    .prologue
    .line 706
    invoke-virtual {p0}, Landroid/support/v7/view/menu/MenuBuilder;->size()I

    move-result v2

    .line 708
    .local v2, "size":I
    if-gez p2, :cond_0

    .line 709
    const/4 p2, 0x0

    .line 712
    :cond_0
    move v0, p2

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_2

    .line 713
    iget-object v3, p0, Landroid/support/v7/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/view/menu/MenuItemImpl;

    .line 715
    .local v1, "item":Landroid/support/v7/view/menu/MenuItemImpl;
    invoke-virtual {v1}, Landroid/support/v7/view/menu/MenuItemImpl;->getGroupId()I

    move-result v3

    if-ne v3, p1, :cond_1

    .line 720
    .end local v0    # "i":I
    .end local v1    # "item":Landroid/support/v7/view/menu/MenuItemImpl;
    :goto_1
    return v0

    .line 712
    .restart local v0    # "i":I
    .restart local v1    # "item":Landroid/support/v7/view/menu/MenuItemImpl;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 720
    .end local v1    # "item":Landroid/support/v7/view/menu/MenuItemImpl;
    :cond_2
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public findItem(I)Landroid/view/MenuItem;
    .locals 5
    .param p1, "id"    # I

    .prologue
    .line 671
    invoke-virtual {p0}, Landroid/support/v7/view/menu/MenuBuilder;->size()I

    move-result v3

    .line 672
    .local v3, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_2

    .line 673
    iget-object v4, p0, Landroid/support/v7/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/view/menu/MenuItemImpl;

    .line 674
    .local v1, "item":Landroid/support/v7/view/menu/MenuItemImpl;
    invoke-virtual {v1}, Landroid/support/v7/view/menu/MenuItemImpl;->getItemId()I

    move-result v4

    if-ne v4, p1, :cond_0

    .line 685
    .end local v1    # "item":Landroid/support/v7/view/menu/MenuItemImpl;
    :goto_1
    return-object v1

    .line 676
    .restart local v1    # "item":Landroid/support/v7/view/menu/MenuItemImpl;
    :cond_0
    invoke-virtual {v1}, Landroid/support/v7/view/menu/MenuItemImpl;->hasSubMenu()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 677
    invoke-virtual {v1}, Landroid/support/v7/view/menu/MenuItemImpl;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v4

    invoke-interface {v4, p1}, Landroid/view/SubMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 679
    .local v2, "possibleItem":Landroid/view/MenuItem;
    if-eqz v2, :cond_1

    move-object v1, v2

    .line 680
    goto :goto_1

    .line 672
    .end local v2    # "possibleItem":Landroid/view/MenuItem;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 685
    .end local v1    # "item":Landroid/support/v7/view/menu/MenuItemImpl;
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public findItemIndex(I)I
    .locals 4
    .param p1, "id"    # I

    .prologue
    .line 689
    invoke-virtual {p0}, Landroid/support/v7/view/menu/MenuBuilder;->size()I

    move-result v2

    .line 691
    .local v2, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 692
    iget-object v3, p0, Landroid/support/v7/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/view/menu/MenuItemImpl;

    .line 693
    .local v1, "item":Landroid/support/v7/view/menu/MenuItemImpl;
    invoke-virtual {v1}, Landroid/support/v7/view/menu/MenuItemImpl;->getItemId()I

    move-result v3

    if-ne v3, p1, :cond_0

    .line 698
    .end local v0    # "i":I
    .end local v1    # "item":Landroid/support/v7/view/menu/MenuItemImpl;
    :goto_1
    return v0

    .line 691
    .restart local v0    # "i":I
    .restart local v1    # "item":Landroid/support/v7/view/menu/MenuItemImpl;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 698
    .end local v1    # "item":Landroid/support/v7/view/menu/MenuItemImpl;
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method findItemWithShortcutForKey(ILandroid/view/KeyEvent;)Landroid/support/v7/view/menu/MenuItemImpl;
    .locals 12
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v8, 0x0

    const/4 v11, 0x0

    .line 903
    iget-object v2, p0, Landroid/support/v7/view/menu/MenuBuilder;->mTempShortcutItemList:Ljava/util/ArrayList;

    .line 904
    .local v2, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v7/view/menu/MenuItemImpl;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 905
    invoke-virtual {p0, v2, p1, p2}, Landroid/support/v7/view/menu/MenuBuilder;->findItemsWithShortcutForKey(Ljava/util/List;ILandroid/view/KeyEvent;)V

    .line 907
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 938
    :cond_0
    :goto_0
    return-object v8

    .line 911
    :cond_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v3

    .line 912
    .local v3, "metaState":I
    new-instance v4, Landroid/view/KeyCharacterMap$KeyData;

    invoke-direct {v4}, Landroid/view/KeyCharacterMap$KeyData;-><init>()V

    .line 914
    .local v4, "possibleChars":Landroid/view/KeyCharacterMap$KeyData;
    invoke-virtual {p2, v4}, Landroid/view/KeyEvent;->getKeyData(Landroid/view/KeyCharacterMap$KeyData;)Z

    .line 917
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 918
    .local v7, "size":I
    const/4 v9, 0x1

    if-ne v7, v9, :cond_2

    .line 919
    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/support/v7/view/menu/MenuItemImpl;

    goto :goto_0

    .line 922
    :cond_2
    invoke-virtual {p0}, Landroid/support/v7/view/menu/MenuBuilder;->isQwertyMode()Z

    move-result v5

    .line 925
    .local v5, "qwerty":Z
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v7, :cond_0

    .line 926
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/view/menu/MenuItemImpl;

    .line 927
    .local v1, "item":Landroid/support/v7/view/menu/MenuItemImpl;
    if-eqz v5, :cond_6

    invoke-virtual {v1}, Landroid/support/v7/view/menu/MenuItemImpl;->getAlphabeticShortcut()C

    move-result v6

    .line 929
    .local v6, "shortcutChar":C
    :goto_2
    iget-object v9, v4, Landroid/view/KeyCharacterMap$KeyData;->meta:[C

    aget-char v9, v9, v11

    if-ne v6, v9, :cond_3

    and-int/lit8 v9, v3, 0x2

    if-eqz v9, :cond_5

    :cond_3
    iget-object v9, v4, Landroid/view/KeyCharacterMap$KeyData;->meta:[C

    const/4 v10, 0x2

    aget-char v9, v9, v10

    if-ne v6, v9, :cond_4

    and-int/lit8 v9, v3, 0x2

    if-nez v9, :cond_5

    :cond_4
    if-eqz v5, :cond_7

    const/16 v9, 0x8

    if-ne v6, v9, :cond_7

    const/16 v9, 0x43

    if-ne p1, v9, :cond_7

    :cond_5
    move-object v8, v1

    .line 935
    goto :goto_0

    .line 927
    .end local v6    # "shortcutChar":C
    :cond_6
    invoke-virtual {v1}, Landroid/support/v7/view/menu/MenuItemImpl;->getNumericShortcut()C

    move-result v6

    goto :goto_2

    .line 925
    .restart local v6    # "shortcutChar":C
    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method findItemsWithShortcutForKey(Ljava/util/List;ILandroid/view/KeyEvent;)V
    .locals 11
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/support/v7/view/menu/MenuItemImpl;",
            ">;I",
            "Landroid/view/KeyEvent;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<Landroid/support/v7/view/menu/MenuItemImpl;>;"
    const/16 v10, 0x43

    .line 859
    invoke-virtual {p0}, Landroid/support/v7/view/menu/MenuBuilder;->isQwertyMode()Z

    move-result v6

    .line 860
    .local v6, "qwerty":Z
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v4

    .line 861
    .local v4, "metaState":I
    new-instance v5, Landroid/view/KeyCharacterMap$KeyData;

    invoke-direct {v5}, Landroid/view/KeyCharacterMap$KeyData;-><init>()V

    .line 863
    .local v5, "possibleChars":Landroid/view/KeyCharacterMap$KeyData;
    invoke-virtual {p3, v5}, Landroid/view/KeyEvent;->getKeyData(Landroid/view/KeyCharacterMap$KeyData;)Z

    move-result v2

    .line 865
    .local v2, "isKeyCodeMapped":Z
    if-nez v2, :cond_1

    if-eq p2, v10, :cond_1

    .line 887
    :cond_0
    return-void

    .line 870
    :cond_1
    iget-object v8, p0, Landroid/support/v7/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 871
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 872
    iget-object v8, p0, Landroid/support/v7/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v7/view/menu/MenuItemImpl;

    .line 873
    .local v3, "item":Landroid/support/v7/view/menu/MenuItemImpl;
    invoke-virtual {v3}, Landroid/support/v7/view/menu/MenuItemImpl;->hasSubMenu()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 874
    invoke-virtual {v3}, Landroid/support/v7/view/menu/MenuItemImpl;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v8

    check-cast v8, Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v8, p1, p2, p3}, Landroid/support/v7/view/menu/MenuBuilder;->findItemsWithShortcutForKey(Ljava/util/List;ILandroid/view/KeyEvent;)V

    .line 876
    :cond_2
    if-eqz v6, :cond_5

    invoke-virtual {v3}, Landroid/support/v7/view/menu/MenuItemImpl;->getAlphabeticShortcut()C

    move-result v7

    .line 877
    .local v7, "shortcutChar":C
    :goto_1
    and-int/lit8 v8, v4, 0x5

    if-nez v8, :cond_4

    if-eqz v7, :cond_4

    iget-object v8, v5, Landroid/view/KeyCharacterMap$KeyData;->meta:[C

    const/4 v9, 0x0

    aget-char v8, v8, v9

    if-eq v7, v8, :cond_3

    iget-object v8, v5, Landroid/view/KeyCharacterMap$KeyData;->meta:[C

    const/4 v9, 0x2

    aget-char v8, v8, v9

    if-eq v7, v8, :cond_3

    if-eqz v6, :cond_4

    const/16 v8, 0x8

    if-ne v7, v8, :cond_4

    if-ne p2, v10, :cond_4

    :cond_3
    invoke-virtual {v3}, Landroid/support/v7/view/menu/MenuItemImpl;->isEnabled()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 884
    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 871
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 876
    .end local v7    # "shortcutChar":C
    :cond_5
    invoke-virtual {v3}, Landroid/support/v7/view/menu/MenuItemImpl;->getNumericShortcut()C

    move-result v7

    goto :goto_1
.end method

.method public flagActionItems()V
    .locals 10

    .prologue
    .line 1125
    invoke-virtual {p0}, Landroid/support/v7/view/menu/MenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    move-result-object v7

    .line 1127
    .local v7, "visibleItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v7/view/menu/MenuItemImpl;>;"
    iget-boolean v8, p0, Landroid/support/v7/view/menu/MenuBuilder;->mIsActionItemsStale:Z

    if-nez v8, :cond_0

    .line 1162
    :goto_0
    return-void

    .line 1132
    :cond_0
    const/4 v0, 0x0

    .line 1133
    .local v0, "flagged":Z
    iget-object v8, p0, Landroid/support/v7/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v8}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/ref/WeakReference;

    .line 1134
    .local v6, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/support/v7/view/menu/MenuPresenter;>;"
    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/v7/view/menu/MenuPresenter;

    .line 1135
    .local v5, "presenter":Landroid/support/v7/view/menu/MenuPresenter;
    if-nez v5, :cond_1

    .line 1136
    iget-object v8, p0, Landroid/support/v7/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v8, v6}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1138
    :cond_1
    invoke-interface {v5}, Landroid/support/v7/view/menu/MenuPresenter;->flagActionItems()Z

    move-result v8

    or-int/2addr v0, v8

    goto :goto_1

    .line 1142
    .end local v5    # "presenter":Landroid/support/v7/view/menu/MenuPresenter;
    .end local v6    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/support/v7/view/menu/MenuPresenter;>;"
    :cond_2
    if-eqz v0, :cond_4

    .line 1143
    iget-object v8, p0, Landroid/support/v7/view/menu/MenuBuilder;->mActionItems:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 1144
    iget-object v8, p0, Landroid/support/v7/view/menu/MenuBuilder;->mNonActionItems:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 1145
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 1146
    .local v4, "itemsSize":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    if-ge v1, v4, :cond_5

    .line 1147
    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v7/view/menu/MenuItemImpl;

    .line 1148
    .local v3, "item":Landroid/support/v7/view/menu/MenuItemImpl;
    invoke-virtual {v3}, Landroid/support/v7/view/menu/MenuItemImpl;->isActionButton()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1149
    iget-object v8, p0, Landroid/support/v7/view/menu/MenuBuilder;->mActionItems:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1146
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1151
    :cond_3
    iget-object v8, p0, Landroid/support/v7/view/menu/MenuBuilder;->mNonActionItems:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1157
    .end local v1    # "i":I
    .end local v3    # "item":Landroid/support/v7/view/menu/MenuItemImpl;
    .end local v4    # "itemsSize":I
    :cond_4
    iget-object v8, p0, Landroid/support/v7/view/menu/MenuBuilder;->mActionItems:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 1158
    iget-object v8, p0, Landroid/support/v7/view/menu/MenuBuilder;->mNonActionItems:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 1159
    iget-object v8, p0, Landroid/support/v7/view/menu/MenuBuilder;->mNonActionItems:Ljava/util/ArrayList;

    invoke-virtual {p0}, Landroid/support/v7/view/menu/MenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1161
    :cond_5
    const/4 v8, 0x0

    iput-boolean v8, p0, Landroid/support/v7/view/menu/MenuBuilder;->mIsActionItemsStale:Z

    goto :goto_0
.end method

.method public getActionItems()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v7/view/menu/MenuItemImpl;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1165
    invoke-virtual {p0}, Landroid/support/v7/view/menu/MenuBuilder;->flagActionItems()V

    .line 1166
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuBuilder;->mActionItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method protected getActionViewStatesKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 422
    const-string v0, "android:menu:actionviewstates"

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 807
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuBuilder;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getExpandedItem()Landroid/support/v7/view/menu/MenuItemImpl;
    .locals 1

    .prologue
    .line 1358
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuBuilder;->mExpandedItem:Landroid/support/v7/view/menu/MenuItemImpl;

    return-object v0
.end method

.method public getHeaderIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 1278
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuBuilder;->mHeaderIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getHeaderTitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 1274
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuBuilder;->mHeaderTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getHeaderView()Landroid/view/View;
    .locals 1

    .prologue
    .line 1282
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuBuilder;->mHeaderView:Landroid/view/View;

    return-object v0
.end method

.method public getItem(I)Landroid/view/MenuItem;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 730
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/MenuItem;

    return-object v0
.end method

.method public getNonActionItems()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v7/view/menu/MenuItemImpl;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1170
    invoke-virtual {p0}, Landroid/support/v7/view/menu/MenuBuilder;->flagActionItems()V

    .line 1171
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuBuilder;->mNonActionItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method getOptionalIconsVisible()Z
    .locals 1

    .prologue
    .line 1310
    iget-boolean v0, p0, Landroid/support/v7/view/menu/MenuBuilder;->mOptionalIconsVisible:Z

    return v0
.end method

.method getResources()Landroid/content/res/Resources;
    .locals 1

    .prologue
    .line 803
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuBuilder;->mResources:Landroid/content/res/Resources;

    return-object v0
.end method

.method public getRootMenu()Landroid/support/v7/view/menu/MenuBuilder;
    .locals 0

    .prologue
    .line 1291
    return-object p0
.end method

.method public getVisibleItems()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v7/view/menu/MenuItemImpl;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1080
    iget-boolean v3, p0, Landroid/support/v7/view/menu/MenuBuilder;->mIsVisibleItemsStale:Z

    if-nez v3, :cond_0

    iget-object v3, p0, Landroid/support/v7/view/menu/MenuBuilder;->mVisibleItems:Ljava/util/ArrayList;

    .line 1095
    :goto_0
    return-object v3

    .line 1083
    :cond_0
    iget-object v3, p0, Landroid/support/v7/view/menu/MenuBuilder;->mVisibleItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 1085
    iget-object v3, p0, Landroid/support/v7/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1087
    .local v2, "itemsSize":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v2, :cond_2

    .line 1088
    iget-object v3, p0, Landroid/support/v7/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/view/menu/MenuItemImpl;

    .line 1089
    .local v1, "item":Landroid/support/v7/view/menu/MenuItemImpl;
    invoke-virtual {v1}, Landroid/support/v7/view/menu/MenuItemImpl;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Landroid/support/v7/view/menu/MenuBuilder;->mVisibleItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1087
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1092
    .end local v1    # "item":Landroid/support/v7/view/menu/MenuItemImpl;
    :cond_2
    const/4 v3, 0x0

    iput-boolean v3, p0, Landroid/support/v7/view/menu/MenuBuilder;->mIsVisibleItemsStale:Z

    .line 1093
    const/4 v3, 0x1

    iput-boolean v3, p0, Landroid/support/v7/view/menu/MenuBuilder;->mIsActionItemsStale:Z

    .line 1095
    iget-object v3, p0, Landroid/support/v7/view/menu/MenuBuilder;->mVisibleItems:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method public hasVisibleItems()Z
    .locals 5

    .prologue
    const/4 v3, 0x1

    .line 653
    iget-boolean v4, p0, Landroid/support/v7/view/menu/MenuBuilder;->mOverrideVisibleItems:Z

    if-eqz v4, :cond_1

    .line 666
    :cond_0
    :goto_0
    return v3

    .line 657
    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/view/menu/MenuBuilder;->size()I

    move-result v2

    .line 659
    .local v2, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v2, :cond_2

    .line 660
    iget-object v4, p0, Landroid/support/v7/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/view/menu/MenuItemImpl;

    .line 661
    .local v1, "item":Landroid/support/v7/view/menu/MenuItemImpl;
    invoke-virtual {v1}, Landroid/support/v7/view/menu/MenuItemImpl;->isVisible()Z

    move-result v4

    if-nez v4, :cond_0

    .line 659
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 666
    .end local v1    # "item":Landroid/support/v7/view/menu/MenuItemImpl;
    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method isQwertyMode()Z
    .locals 1

    .prologue
    .line 770
    iget-boolean v0, p0, Landroid/support/v7/view/menu/MenuBuilder;->mQwertyMode:Z

    return v0
.end method

.method public isShortcutKey(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 735
    invoke-virtual {p0, p1, p2}, Landroid/support/v7/view/menu/MenuBuilder;->findItemWithShortcutForKey(ILandroid/view/KeyEvent;)Landroid/support/v7/view/menu/MenuItemImpl;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isShortcutsVisible()Z
    .locals 1

    .prologue
    .line 799
    iget-boolean v0, p0, Landroid/support/v7/view/menu/MenuBuilder;->mShortcutsVisible:Z

    return v0
.end method

.method onItemActionRequestChanged(Landroid/support/v7/view/menu/MenuItemImpl;)V
    .locals 1
    .param p1, "item"    # Landroid/support/v7/view/menu/MenuItemImpl;

    .prologue
    const/4 v0, 0x1

    .line 1075
    iput-boolean v0, p0, Landroid/support/v7/view/menu/MenuBuilder;->mIsActionItemsStale:Z

    .line 1076
    invoke-virtual {p0, v0}, Landroid/support/v7/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 1077
    return-void
.end method

.method onItemVisibleChanged(Landroid/support/v7/view/menu/MenuItemImpl;)V
    .locals 1
    .param p1, "item"    # Landroid/support/v7/view/menu/MenuItemImpl;

    .prologue
    const/4 v0, 0x1

    .line 1064
    iput-boolean v0, p0, Landroid/support/v7/view/menu/MenuBuilder;->mIsVisibleItemsStale:Z

    .line 1065
    invoke-virtual {p0, v0}, Landroid/support/v7/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 1066
    return-void
.end method

.method public onItemsChanged(Z)V
    .locals 2
    .param p1, "structureChanged"    # Z

    .prologue
    const/4 v1, 0x1

    .line 1024
    iget-boolean v0, p0, Landroid/support/v7/view/menu/MenuBuilder;->mPreventDispatchingItemsChanged:Z

    if-nez v0, :cond_1

    .line 1025
    if-eqz p1, :cond_0

    .line 1026
    iput-boolean v1, p0, Landroid/support/v7/view/menu/MenuBuilder;->mIsVisibleItemsStale:Z

    .line 1027
    iput-boolean v1, p0, Landroid/support/v7/view/menu/MenuBuilder;->mIsActionItemsStale:Z

    .line 1030
    :cond_0
    invoke-direct {p0, p1}, Landroid/support/v7/view/menu/MenuBuilder;->dispatchPresenterUpdate(Z)V

    .line 1034
    :goto_0
    return-void

    .line 1032
    :cond_1
    iput-boolean v1, p0, Landroid/support/v7/view/menu/MenuBuilder;->mItemsChangedWhileDispatchPrevented:Z

    goto :goto_0
.end method

.method public performIdentifierAction(II)Z
    .locals 1
    .param p1, "id"    # I
    .param p2, "flags"    # I

    .prologue
    .line 944
    invoke-virtual {p0, p1}, Landroid/support/v7/view/menu/MenuBuilder;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Landroid/support/v7/view/menu/MenuBuilder;->performItemAction(Landroid/view/MenuItem;I)Z

    move-result v0

    return v0
.end method

.method public performItemAction(Landroid/view/MenuItem;I)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;
    .param p2, "flags"    # I

    .prologue
    .line 948
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Landroid/support/v7/view/menu/MenuBuilder;->performItemAction(Landroid/view/MenuItem;Landroid/support/v7/view/menu/MenuPresenter;I)Z

    move-result v0

    return v0
.end method

.method public performItemAction(Landroid/view/MenuItem;Landroid/support/v7/view/menu/MenuPresenter;I)Z
    .locals 8
    .param p1, "item"    # Landroid/view/MenuItem;
    .param p2, "preferredPresenter"    # Landroid/support/v7/view/menu/MenuPresenter;
    .param p3, "flags"    # I

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 952
    move-object v1, p1

    check-cast v1, Landroid/support/v7/view/menu/MenuItemImpl;

    .line 954
    .local v1, "itemImpl":Landroid/support/v7/view/menu/MenuItemImpl;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/support/v7/view/menu/MenuItemImpl;->isEnabled()Z

    move-result v7

    if-nez v7, :cond_2

    :cond_0
    move v0, v6

    .line 984
    :cond_1
    :goto_0
    return v0

    .line 958
    :cond_2
    invoke-virtual {v1}, Landroid/support/v7/view/menu/MenuItemImpl;->invoke()Z

    move-result v0

    .line 960
    .local v0, "invoked":Z
    invoke-virtual {v1}, Landroid/support/v7/view/menu/MenuItemImpl;->getSupportActionProvider()Landroid/support/v4/view/ActionProvider;

    move-result-object v2

    .line 961
    .local v2, "provider":Landroid/support/v4/view/ActionProvider;
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroid/support/v4/view/ActionProvider;->hasSubMenu()Z

    move-result v7

    if-eqz v7, :cond_3

    move v3, v5

    .line 962
    .local v3, "providerHasSubMenu":Z
    :goto_1
    invoke-virtual {v1}, Landroid/support/v7/view/menu/MenuItemImpl;->hasCollapsibleActionView()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 963
    invoke-virtual {v1}, Landroid/support/v7/view/menu/MenuItemImpl;->expandActionView()Z

    move-result v6

    or-int/2addr v0, v6

    .line 964
    if-eqz v0, :cond_1

    invoke-virtual {p0, v5}, Landroid/support/v7/view/menu/MenuBuilder;->close(Z)V

    goto :goto_0

    .end local v3    # "providerHasSubMenu":Z
    :cond_3
    move v3, v6

    .line 961
    goto :goto_1

    .line 965
    .restart local v3    # "providerHasSubMenu":Z
    :cond_4
    invoke-virtual {v1}, Landroid/support/v7/view/menu/MenuItemImpl;->hasSubMenu()Z

    move-result v7

    if-nez v7, :cond_5

    if-eqz v3, :cond_8

    .line 966
    :cond_5
    invoke-virtual {p0, v6}, Landroid/support/v7/view/menu/MenuBuilder;->close(Z)V

    .line 968
    invoke-virtual {v1}, Landroid/support/v7/view/menu/MenuItemImpl;->hasSubMenu()Z

    move-result v6

    if-nez v6, :cond_6

    .line 969
    new-instance v6, Landroid/support/v7/view/menu/SubMenuBuilder;

    invoke-virtual {p0}, Landroid/support/v7/view/menu/MenuBuilder;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7, p0, v1}, Landroid/support/v7/view/menu/SubMenuBuilder;-><init>(Landroid/content/Context;Landroid/support/v7/view/menu/MenuBuilder;Landroid/support/v7/view/menu/MenuItemImpl;)V

    invoke-virtual {v1, v6}, Landroid/support/v7/view/menu/MenuItemImpl;->setSubMenu(Landroid/support/v7/view/menu/SubMenuBuilder;)V

    .line 972
    :cond_6
    invoke-virtual {v1}, Landroid/support/v7/view/menu/MenuItemImpl;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v4

    check-cast v4, Landroid/support/v7/view/menu/SubMenuBuilder;

    .line 973
    .local v4, "subMenu":Landroid/support/v7/view/menu/SubMenuBuilder;
    if-eqz v3, :cond_7

    .line 974
    invoke-virtual {v2, v4}, Landroid/support/v4/view/ActionProvider;->onPrepareSubMenu(Landroid/view/SubMenu;)V

    .line 976
    :cond_7
    invoke-direct {p0, v4, p2}, Landroid/support/v7/view/menu/MenuBuilder;->dispatchSubMenuSelected(Landroid/support/v7/view/menu/SubMenuBuilder;Landroid/support/v7/view/menu/MenuPresenter;)Z

    move-result v6

    or-int/2addr v0, v6

    .line 977
    if-nez v0, :cond_1

    invoke-virtual {p0, v5}, Landroid/support/v7/view/menu/MenuBuilder;->close(Z)V

    goto :goto_0

    .line 979
    .end local v4    # "subMenu":Landroid/support/v7/view/menu/SubMenuBuilder;
    :cond_8
    and-int/lit8 v6, p3, 0x1

    if-nez v6, :cond_1

    .line 980
    invoke-virtual {p0, v5}, Landroid/support/v7/view/menu/MenuBuilder;->close(Z)V

    goto :goto_0
.end method

.method public performShortcut(ILandroid/view/KeyEvent;I)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;
    .param p3, "flags"    # I

    .prologue
    .line 836
    invoke-virtual {p0, p1, p2}, Landroid/support/v7/view/menu/MenuBuilder;->findItemWithShortcutForKey(ILandroid/view/KeyEvent;)Landroid/support/v7/view/menu/MenuItemImpl;

    move-result-object v1

    .line 838
    .local v1, "item":Landroid/support/v7/view/menu/MenuItemImpl;
    const/4 v0, 0x0

    .line 840
    .local v0, "handled":Z
    if-eqz v1, :cond_0

    .line 841
    invoke-virtual {p0, v1, p3}, Landroid/support/v7/view/menu/MenuBuilder;->performItemAction(Landroid/view/MenuItem;I)Z

    move-result v0

    .line 844
    :cond_0
    and-int/lit8 v2, p3, 0x2

    if-eqz v2, :cond_1

    .line 845
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Landroid/support/v7/view/menu/MenuBuilder;->close(Z)V

    .line 848
    :cond_1
    return v0
.end method

.method public removeGroup(I)V
    .locals 5
    .param p1, "group"    # I

    .prologue
    .line 536
    invoke-virtual {p0, p1}, Landroid/support/v7/view/menu/MenuBuilder;->findGroupIndex(I)I

    move-result v0

    .line 538
    .local v0, "i":I
    if-ltz v0, :cond_1

    .line 539
    iget-object v4, p0, Landroid/support/v7/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int v1, v4, v0

    .line 540
    .local v1, "maxRemovable":I
    const/4 v2, 0x0

    .local v2, "numRemoved":I
    move v3, v2

    .line 541
    .end local v2    # "numRemoved":I
    .local v3, "numRemoved":I
    :goto_0
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "numRemoved":I
    .restart local v2    # "numRemoved":I
    if-ge v3, v1, :cond_0

    iget-object v4, p0, Landroid/support/v7/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v7/view/menu/MenuItemImpl;

    invoke-virtual {v4}, Landroid/support/v7/view/menu/MenuItemImpl;->getGroupId()I

    move-result v4

    if-ne v4, p1, :cond_0

    .line 543
    const/4 v4, 0x0

    invoke-direct {p0, v0, v4}, Landroid/support/v7/view/menu/MenuBuilder;->removeItemAtInt(IZ)V

    move v3, v2

    .end local v2    # "numRemoved":I
    .restart local v3    # "numRemoved":I
    goto :goto_0

    .line 547
    .end local v3    # "numRemoved":I
    .restart local v2    # "numRemoved":I
    :cond_0
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Landroid/support/v7/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 549
    .end local v1    # "maxRemovable":I
    .end local v2    # "numRemoved":I
    :cond_1
    return-void
.end method

.method public removeItem(I)V
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 531
    invoke-virtual {p0, p1}, Landroid/support/v7/view/menu/MenuBuilder;->findItemIndex(I)I

    move-result v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Landroid/support/v7/view/menu/MenuBuilder;->removeItemAtInt(IZ)V

    .line 532
    return-void
.end method

.method public removeItemAt(I)V
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 570
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/support/v7/view/menu/MenuBuilder;->removeItemAtInt(IZ)V

    .line 571
    return-void
.end method

.method public removeMenuPresenter(Landroid/support/v7/view/menu/MenuPresenter;)V
    .locals 4
    .param p1, "presenter"    # Landroid/support/v7/view/menu/MenuPresenter;

    .prologue
    .line 267
    iget-object v3, p0, Landroid/support/v7/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 268
    .local v2, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/support/v7/view/menu/MenuPresenter;>;"
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/view/menu/MenuPresenter;

    .line 269
    .local v1, "item":Landroid/support/v7/view/menu/MenuPresenter;
    if-eqz v1, :cond_1

    if-ne v1, p1, :cond_0

    .line 270
    :cond_1
    iget-object v3, p0, Landroid/support/v7/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 273
    .end local v1    # "item":Landroid/support/v7/view/menu/MenuPresenter;
    .end local v2    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/support/v7/view/menu/MenuPresenter;>;"
    :cond_2
    return-void
.end method

.method public restoreActionViewStates(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "states"    # Landroid/os/Bundle;

    .prologue
    .line 392
    if-nez p1, :cond_1

    .line 419
    :cond_0
    :goto_0
    return-void

    .line 396
    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/view/menu/MenuBuilder;->getActionViewStatesKey()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v7

    .line 399
    .local v7, "viewStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-virtual {p0}, Landroid/support/v7/view/menu/MenuBuilder;->size()I

    move-result v3

    .line 400
    .local v3, "itemCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v3, :cond_4

    .line 401
    invoke-virtual {p0, v1}, Landroid/support/v7/view/menu/MenuBuilder;->getItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 402
    .local v2, "item":Landroid/view/MenuItem;
    invoke-static {v2}, Landroid/support/v4/view/MenuItemCompat;->getActionView(Landroid/view/MenuItem;)Landroid/view/View;

    move-result-object v6

    .line 403
    .local v6, "v":Landroid/view/View;
    if-eqz v6, :cond_2

    invoke-virtual {v6}, Landroid/view/View;->getId()I

    move-result v8

    const/4 v9, -0x1

    if-eq v8, v9, :cond_2

    .line 404
    invoke-virtual {v6, v7}, Landroid/view/View;->restoreHierarchyState(Landroid/util/SparseArray;)V

    .line 406
    :cond_2
    invoke-interface {v2}, Landroid/view/MenuItem;->hasSubMenu()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 407
    invoke-interface {v2}, Landroid/view/MenuItem;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v5

    check-cast v5, Landroid/support/v7/view/menu/SubMenuBuilder;

    .line 408
    .local v5, "subMenu":Landroid/support/v7/view/menu/SubMenuBuilder;
    invoke-virtual {v5, p1}, Landroid/support/v7/view/menu/SubMenuBuilder;->restoreActionViewStates(Landroid/os/Bundle;)V

    .line 400
    .end local v5    # "subMenu":Landroid/support/v7/view/menu/SubMenuBuilder;
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 412
    .end local v2    # "item":Landroid/view/MenuItem;
    .end local v6    # "v":Landroid/view/View;
    :cond_4
    const-string v8, "android:menu:expandedactionview"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 413
    .local v0, "expandedId":I
    if-lez v0, :cond_0

    .line 414
    invoke-virtual {p0, v0}, Landroid/support/v7/view/menu/MenuBuilder;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    .line 415
    .local v4, "itemToExpand":Landroid/view/MenuItem;
    if-eqz v4, :cond_0

    .line 416
    invoke-static {v4}, Landroid/support/v4/view/MenuItemCompat;->expandActionView(Landroid/view/MenuItem;)Z

    goto :goto_0
.end method

.method public restorePresenterStates(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "state"    # Landroid/os/Bundle;

    .prologue
    .line 361
    invoke-direct {p0, p1}, Landroid/support/v7/view/menu/MenuBuilder;->dispatchRestoreInstanceState(Landroid/os/Bundle;)V

    .line 362
    return-void
.end method

.method public saveActionViewStates(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "outStates"    # Landroid/os/Bundle;

    .prologue
    .line 365
    const/4 v5, 0x0

    .line 367
    .local v5, "viewStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-virtual {p0}, Landroid/support/v7/view/menu/MenuBuilder;->size()I

    move-result v2

    .line 368
    .local v2, "itemCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_3

    .line 369
    invoke-virtual {p0, v0}, Landroid/support/v7/view/menu/MenuBuilder;->getItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 370
    .local v1, "item":Landroid/view/MenuItem;
    invoke-static {v1}, Landroid/support/v4/view/MenuItemCompat;->getActionView(Landroid/view/MenuItem;)Landroid/view/View;

    move-result-object v4

    .line 371
    .local v4, "v":Landroid/view/View;
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_1

    .line 372
    if-nez v5, :cond_0

    .line 373
    new-instance v5, Landroid/util/SparseArray;

    .end local v5    # "viewStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-direct {v5}, Landroid/util/SparseArray;-><init>()V

    .line 375
    .restart local v5    # "viewStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    :cond_0
    invoke-virtual {v4, v5}, Landroid/view/View;->saveHierarchyState(Landroid/util/SparseArray;)V

    .line 376
    invoke-static {v1}, Landroid/support/v4/view/MenuItemCompat;->isActionViewExpanded(Landroid/view/MenuItem;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 377
    const-string v6, "android:menu:expandedactionview"

    invoke-interface {v1}, Landroid/view/MenuItem;->getItemId()I

    move-result v7

    invoke-virtual {p1, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 380
    :cond_1
    invoke-interface {v1}, Landroid/view/MenuItem;->hasSubMenu()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 381
    invoke-interface {v1}, Landroid/view/MenuItem;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v3

    check-cast v3, Landroid/support/v7/view/menu/SubMenuBuilder;

    .line 382
    .local v3, "subMenu":Landroid/support/v7/view/menu/SubMenuBuilder;
    invoke-virtual {v3, p1}, Landroid/support/v7/view/menu/SubMenuBuilder;->saveActionViewStates(Landroid/os/Bundle;)V

    .line 368
    .end local v3    # "subMenu":Landroid/support/v7/view/menu/SubMenuBuilder;
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 386
    .end local v1    # "item":Landroid/view/MenuItem;
    .end local v4    # "v":Landroid/view/View;
    :cond_3
    if-eqz v5, :cond_4

    .line 387
    invoke-virtual {p0}, Landroid/support/v7/view/menu/MenuBuilder;->getActionViewStatesKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6, v5}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    .line 389
    :cond_4
    return-void
.end method

.method public savePresenterStates(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 357
    invoke-direct {p0, p1}, Landroid/support/v7/view/menu/MenuBuilder;->dispatchSaveInstanceState(Landroid/os/Bundle;)V

    .line 358
    return-void
.end method

.method public setCallback(Landroid/support/v7/view/menu/MenuBuilder$Callback;)V
    .locals 0
    .param p1, "cb"    # Landroid/support/v7/view/menu/MenuBuilder$Callback;

    .prologue
    .line 426
    iput-object p1, p0, Landroid/support/v7/view/menu/MenuBuilder;->mCallback:Landroid/support/v7/view/menu/MenuBuilder$Callback;

    .line 427
    return-void
.end method

.method public setCurrentMenuInfo(Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 0
    .param p1, "menuInfo"    # Landroid/view/ContextMenu$ContextMenuInfo;

    .prologue
    .line 1302
    iput-object p1, p0, Landroid/support/v7/view/menu/MenuBuilder;->mCurrentMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 1303
    return-void
.end method

.method public setDefaultShowAsAction(I)Landroid/support/v7/view/menu/MenuBuilder;
    .locals 0
    .param p1, "defaultShowAsAction"    # I

    .prologue
    .line 231
    iput p1, p0, Landroid/support/v7/view/menu/MenuBuilder;->mDefaultShowAsAction:I

    .line 232
    return-object p0
.end method

.method setExclusiveItemChecked(Landroid/view/MenuItem;)V
    .locals 5
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 593
    invoke-interface {p1}, Landroid/view/MenuItem;->getGroupId()I

    move-result v2

    .line 595
    .local v2, "group":I
    iget-object v4, p0, Landroid/support/v7/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 596
    .local v0, "N":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_3

    .line 597
    iget-object v4, p0, Landroid/support/v7/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/view/menu/MenuItemImpl;

    .line 598
    .local v1, "curItem":Landroid/support/v7/view/menu/MenuItemImpl;
    invoke-virtual {v1}, Landroid/support/v7/view/menu/MenuItemImpl;->getGroupId()I

    move-result v4

    if-ne v4, v2, :cond_0

    .line 599
    invoke-virtual {v1}, Landroid/support/v7/view/menu/MenuItemImpl;->isExclusiveCheckable()Z

    move-result v4

    if-nez v4, :cond_1

    .line 596
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 600
    :cond_1
    invoke-virtual {v1}, Landroid/support/v7/view/menu/MenuItemImpl;->isCheckable()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 603
    if-ne v1, p1, :cond_2

    const/4 v4, 0x1

    :goto_2
    invoke-virtual {v1, v4}, Landroid/support/v7/view/menu/MenuItemImpl;->setCheckedInt(Z)V

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    goto :goto_2

    .line 606
    .end local v1    # "curItem":Landroid/support/v7/view/menu/MenuItemImpl;
    :cond_3
    return-void
.end method

.method public setGroupCheckable(IZZ)V
    .locals 4
    .param p1, "group"    # I
    .param p2, "checkable"    # Z
    .param p3, "exclusive"    # Z

    .prologue
    .line 610
    iget-object v3, p0, Landroid/support/v7/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 612
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 613
    iget-object v3, p0, Landroid/support/v7/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v7/view/menu/MenuItemImpl;

    .line 614
    .local v2, "item":Landroid/support/v7/view/menu/MenuItemImpl;
    invoke-virtual {v2}, Landroid/support/v7/view/menu/MenuItemImpl;->getGroupId()I

    move-result v3

    if-ne v3, p1, :cond_0

    .line 615
    invoke-virtual {v2, p3}, Landroid/support/v7/view/menu/MenuItemImpl;->setExclusiveCheckable(Z)V

    .line 616
    invoke-virtual {v2, p2}, Landroid/support/v7/view/menu/MenuItemImpl;->setCheckable(Z)Landroid/view/MenuItem;

    .line 612
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 619
    .end local v2    # "item":Landroid/support/v7/view/menu/MenuItemImpl;
    :cond_1
    return-void
.end method

.method public setGroupEnabled(IZ)V
    .locals 4
    .param p1, "group"    # I
    .param p2, "enabled"    # Z

    .prologue
    .line 641
    iget-object v3, p0, Landroid/support/v7/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 643
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 644
    iget-object v3, p0, Landroid/support/v7/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v7/view/menu/MenuItemImpl;

    .line 645
    .local v2, "item":Landroid/support/v7/view/menu/MenuItemImpl;
    invoke-virtual {v2}, Landroid/support/v7/view/menu/MenuItemImpl;->getGroupId()I

    move-result v3

    if-ne v3, p1, :cond_0

    .line 646
    invoke-virtual {v2, p2}, Landroid/support/v7/view/menu/MenuItemImpl;->setEnabled(Z)Landroid/view/MenuItem;

    .line 643
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 649
    .end local v2    # "item":Landroid/support/v7/view/menu/MenuItemImpl;
    :cond_1
    return-void
.end method

.method public setGroupVisible(IZ)V
    .locals 5
    .param p1, "group"    # I
    .param p2, "visible"    # Z

    .prologue
    .line 623
    iget-object v4, p0, Landroid/support/v7/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 628
    .local v0, "N":I
    const/4 v1, 0x0

    .line 629
    .local v1, "changedAtLeastOneItem":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 630
    iget-object v4, p0, Landroid/support/v7/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v7/view/menu/MenuItemImpl;

    .line 631
    .local v3, "item":Landroid/support/v7/view/menu/MenuItemImpl;
    invoke-virtual {v3}, Landroid/support/v7/view/menu/MenuItemImpl;->getGroupId()I

    move-result v4

    if-ne v4, p1, :cond_0

    .line 632
    invoke-virtual {v3, p2}, Landroid/support/v7/view/menu/MenuItemImpl;->setVisibleInt(Z)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v1, 0x1

    .line 629
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 636
    .end local v3    # "item":Landroid/support/v7/view/menu/MenuItemImpl;
    :cond_1
    if-eqz v1, :cond_2

    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Landroid/support/v7/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 637
    :cond_2
    return-void
.end method

.method protected setHeaderIconInt(I)Landroid/support/v7/view/menu/MenuBuilder;
    .locals 6
    .param p1, "iconRes"    # I

    .prologue
    const/4 v2, 0x0

    .line 1257
    const/4 v1, 0x0

    move-object v0, p0

    move v3, p1

    move-object v4, v2

    move-object v5, v2

    invoke-direct/range {v0 .. v5}, Landroid/support/v7/view/menu/MenuBuilder;->setHeaderInternal(ILjava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Landroid/view/View;)V

    .line 1258
    return-object p0
.end method

.method protected setHeaderIconInt(Landroid/graphics/drawable/Drawable;)Landroid/support/v7/view/menu/MenuBuilder;
    .locals 6
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 1245
    move-object v0, p0

    move v3, v1

    move-object v4, p1

    move-object v5, v2

    invoke-direct/range {v0 .. v5}, Landroid/support/v7/view/menu/MenuBuilder;->setHeaderInternal(ILjava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Landroid/view/View;)V

    .line 1246
    return-object p0
.end method

.method protected setHeaderTitleInt(I)Landroid/support/v7/view/menu/MenuBuilder;
    .locals 6
    .param p1, "titleRes"    # I

    .prologue
    const/4 v2, 0x0

    .line 1233
    const/4 v3, 0x0

    move-object v0, p0

    move v1, p1

    move-object v4, v2

    move-object v5, v2

    invoke-direct/range {v0 .. v5}, Landroid/support/v7/view/menu/MenuBuilder;->setHeaderInternal(ILjava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Landroid/view/View;)V

    .line 1234
    return-object p0
.end method

.method protected setHeaderTitleInt(Ljava/lang/CharSequence;)Landroid/support/v7/view/menu/MenuBuilder;
    .locals 6
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 1221
    move-object v0, p0

    move-object v2, p1

    move v3, v1

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Landroid/support/v7/view/menu/MenuBuilder;->setHeaderInternal(ILjava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Landroid/view/View;)V

    .line 1222
    return-object p0
.end method

.method protected setHeaderViewInt(Landroid/view/View;)Landroid/support/v7/view/menu/MenuBuilder;
    .locals 6
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 1269
    move-object v0, p0

    move v3, v1

    move-object v4, v2

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Landroid/support/v7/view/menu/MenuBuilder;->setHeaderInternal(ILjava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Landroid/view/View;)V

    .line 1270
    return-object p0
.end method

.method setOptionalIconsVisible(Z)V
    .locals 0
    .param p1, "visible"    # Z

    .prologue
    .line 1306
    iput-boolean p1, p0, Landroid/support/v7/view/menu/MenuBuilder;->mOptionalIconsVisible:Z

    .line 1307
    return-void
.end method

.method public setOverrideVisibleItems(Z)V
    .locals 0
    .param p1, "override"    # Z

    .prologue
    .line 1367
    iput-boolean p1, p0, Landroid/support/v7/view/menu/MenuBuilder;->mOverrideVisibleItems:Z

    .line 1368
    return-void
.end method

.method public setQwertyMode(Z)V
    .locals 1
    .param p1, "isQwerty"    # Z

    .prologue
    .line 740
    iput-boolean p1, p0, Landroid/support/v7/view/menu/MenuBuilder;->mQwertyMode:Z

    .line 742
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v7/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 743
    return-void
.end method

.method public setShortcutsVisible(Z)V
    .locals 1
    .param p1, "shortcutsVisible"    # Z

    .prologue
    .line 781
    iget-boolean v0, p0, Landroid/support/v7/view/menu/MenuBuilder;->mShortcutsVisible:Z

    if-ne v0, p1, :cond_0

    .line 787
    :goto_0
    return-void

    .line 785
    :cond_0
    invoke-direct {p0, p1}, Landroid/support/v7/view/menu/MenuBuilder;->setShortcutsVisibleInner(Z)V

    .line 786
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v7/view/menu/MenuBuilder;->onItemsChanged(Z)V

    goto :goto_0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 725
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public startDispatchingItemsChanged()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1049
    iput-boolean v1, p0, Landroid/support/v7/view/menu/MenuBuilder;->mPreventDispatchingItemsChanged:Z

    .line 1051
    iget-boolean v0, p0, Landroid/support/v7/view/menu/MenuBuilder;->mItemsChangedWhileDispatchPrevented:Z

    if-eqz v0, :cond_0

    .line 1052
    iput-boolean v1, p0, Landroid/support/v7/view/menu/MenuBuilder;->mItemsChangedWhileDispatchPrevented:Z

    .line 1053
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/support/v7/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 1055
    :cond_0
    return-void
.end method

.method public stopDispatchingItemsChanged()V
    .locals 1

    .prologue
    .line 1042
    iget-boolean v0, p0, Landroid/support/v7/view/menu/MenuBuilder;->mPreventDispatchingItemsChanged:Z

    if-nez v0, :cond_0

    .line 1043
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/view/menu/MenuBuilder;->mPreventDispatchingItemsChanged:Z

    .line 1044
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/view/menu/MenuBuilder;->mItemsChangedWhileDispatchPrevented:Z

    .line 1046
    :cond_0
    return-void
.end method
