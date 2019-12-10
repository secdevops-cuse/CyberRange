.class Landroid/support/v7/view/menu/MenuPopupHelper$MenuAdapter;
.super Landroid/widget/BaseAdapter;
.source "MenuPopupHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/view/menu/MenuPopupHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MenuAdapter"
.end annotation


# instance fields
.field private mAdapterMenu:Landroid/support/v7/view/menu/MenuBuilder;

.field private mExpandedIndex:I

.field final synthetic this$0:Landroid/support/v7/view/menu/MenuPopupHelper;


# direct methods
.method public constructor <init>(Landroid/support/v7/view/menu/MenuPopupHelper;Landroid/support/v7/view/menu/MenuBuilder;)V
    .locals 1
    .param p2, "menu"    # Landroid/support/v7/view/menu/MenuBuilder;

    .prologue
    .line 343
    iput-object p1, p0, Landroid/support/v7/view/menu/MenuPopupHelper$MenuAdapter;->this$0:Landroid/support/v7/view/menu/MenuPopupHelper;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 341
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/view/menu/MenuPopupHelper$MenuAdapter;->mExpandedIndex:I

    .line 344
    iput-object p2, p0, Landroid/support/v7/view/menu/MenuPopupHelper$MenuAdapter;->mAdapterMenu:Landroid/support/v7/view/menu/MenuBuilder;

    .line 345
    invoke-virtual {p0}, Landroid/support/v7/view/menu/MenuPopupHelper$MenuAdapter;->findExpandedIndex()V

    .line 346
    return-void
.end method

.method static synthetic access$000(Landroid/support/v7/view/menu/MenuPopupHelper$MenuAdapter;)Landroid/support/v7/view/menu/MenuBuilder;
    .locals 1
    .param p0, "x0"    # Landroid/support/v7/view/menu/MenuPopupHelper$MenuAdapter;

    .prologue
    .line 339
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuPopupHelper$MenuAdapter;->mAdapterMenu:Landroid/support/v7/view/menu/MenuBuilder;

    return-object v0
.end method


# virtual methods
.method findExpandedIndex()V
    .locals 6

    .prologue
    .line 386
    iget-object v5, p0, Landroid/support/v7/view/menu/MenuPopupHelper$MenuAdapter;->this$0:Landroid/support/v7/view/menu/MenuPopupHelper;

    # getter for: Landroid/support/v7/view/menu/MenuPopupHelper;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;
    invoke-static {v5}, Landroid/support/v7/view/menu/MenuPopupHelper;->access$300(Landroid/support/v7/view/menu/MenuPopupHelper;)Landroid/support/v7/view/menu/MenuBuilder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/v7/view/menu/MenuBuilder;->getExpandedItem()Landroid/support/v7/view/menu/MenuItemImpl;

    move-result-object v1

    .line 387
    .local v1, "expandedItem":Landroid/support/v7/view/menu/MenuItemImpl;
    if-eqz v1, :cond_1

    .line 388
    iget-object v5, p0, Landroid/support/v7/view/menu/MenuPopupHelper$MenuAdapter;->this$0:Landroid/support/v7/view/menu/MenuPopupHelper;

    # getter for: Landroid/support/v7/view/menu/MenuPopupHelper;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;
    invoke-static {v5}, Landroid/support/v7/view/menu/MenuPopupHelper;->access$300(Landroid/support/v7/view/menu/MenuPopupHelper;)Landroid/support/v7/view/menu/MenuBuilder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/v7/view/menu/MenuBuilder;->getNonActionItems()Ljava/util/ArrayList;

    move-result-object v4

    .line 389
    .local v4, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v7/view/menu/MenuItemImpl;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 390
    .local v0, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 391
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v7/view/menu/MenuItemImpl;

    .line 392
    .local v3, "item":Landroid/support/v7/view/menu/MenuItemImpl;
    if-ne v3, v1, :cond_0

    .line 393
    iput v2, p0, Landroid/support/v7/view/menu/MenuPopupHelper$MenuAdapter;->mExpandedIndex:I

    .line 399
    .end local v0    # "count":I
    .end local v2    # "i":I
    .end local v3    # "item":Landroid/support/v7/view/menu/MenuItemImpl;
    .end local v4    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v7/view/menu/MenuItemImpl;>;"
    :goto_1
    return-void

    .line 390
    .restart local v0    # "count":I
    .restart local v2    # "i":I
    .restart local v3    # "item":Landroid/support/v7/view/menu/MenuItemImpl;
    .restart local v4    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v7/view/menu/MenuItemImpl;>;"
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 398
    .end local v0    # "count":I
    .end local v2    # "i":I
    .end local v3    # "item":Landroid/support/v7/view/menu/MenuItemImpl;
    .end local v4    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v7/view/menu/MenuItemImpl;>;"
    :cond_1
    const/4 v5, -0x1

    iput v5, p0, Landroid/support/v7/view/menu/MenuPopupHelper$MenuAdapter;->mExpandedIndex:I

    goto :goto_1
.end method

.method public getCount()I
    .locals 2

    .prologue
    .line 349
    iget-object v1, p0, Landroid/support/v7/view/menu/MenuPopupHelper$MenuAdapter;->this$0:Landroid/support/v7/view/menu/MenuPopupHelper;

    # getter for: Landroid/support/v7/view/menu/MenuPopupHelper;->mOverflowOnly:Z
    invoke-static {v1}, Landroid/support/v7/view/menu/MenuPopupHelper;->access$100(Landroid/support/v7/view/menu/MenuPopupHelper;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/support/v7/view/menu/MenuPopupHelper$MenuAdapter;->mAdapterMenu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v1}, Landroid/support/v7/view/menu/MenuBuilder;->getNonActionItems()Ljava/util/ArrayList;

    move-result-object v0

    .line 351
    .local v0, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v7/view/menu/MenuItemImpl;>;"
    :goto_0
    iget v1, p0, Landroid/support/v7/view/menu/MenuPopupHelper$MenuAdapter;->mExpandedIndex:I

    if-gez v1, :cond_1

    .line 352
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 354
    :goto_1
    return v1

    .line 349
    .end local v0    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v7/view/menu/MenuItemImpl;>;"
    :cond_0
    iget-object v1, p0, Landroid/support/v7/view/menu/MenuPopupHelper$MenuAdapter;->mAdapterMenu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v1}, Landroid/support/v7/view/menu/MenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0

    .line 354
    .restart local v0    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v7/view/menu/MenuItemImpl;>;"
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    goto :goto_1
.end method

.method public getItem(I)Landroid/support/v7/view/menu/MenuItemImpl;
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 358
    iget-object v1, p0, Landroid/support/v7/view/menu/MenuPopupHelper$MenuAdapter;->this$0:Landroid/support/v7/view/menu/MenuPopupHelper;

    # getter for: Landroid/support/v7/view/menu/MenuPopupHelper;->mOverflowOnly:Z
    invoke-static {v1}, Landroid/support/v7/view/menu/MenuPopupHelper;->access$100(Landroid/support/v7/view/menu/MenuPopupHelper;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/support/v7/view/menu/MenuPopupHelper$MenuAdapter;->mAdapterMenu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v1}, Landroid/support/v7/view/menu/MenuBuilder;->getNonActionItems()Ljava/util/ArrayList;

    move-result-object v0

    .line 360
    .local v0, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v7/view/menu/MenuItemImpl;>;"
    :goto_0
    iget v1, p0, Landroid/support/v7/view/menu/MenuPopupHelper$MenuAdapter;->mExpandedIndex:I

    if-ltz v1, :cond_0

    iget v1, p0, Landroid/support/v7/view/menu/MenuPopupHelper$MenuAdapter;->mExpandedIndex:I

    if-lt p1, v1, :cond_0

    .line 361
    add-int/lit8 p1, p1, 0x1

    .line 363
    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/view/menu/MenuItemImpl;

    return-object v1

    .line 358
    .end local v0    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v7/view/menu/MenuItemImpl;>;"
    :cond_1
    iget-object v1, p0, Landroid/support/v7/view/menu/MenuPopupHelper$MenuAdapter;->mAdapterMenu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v1}, Landroid/support/v7/view/menu/MenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 339
    invoke-virtual {p0, p1}, Landroid/support/v7/view/menu/MenuPopupHelper$MenuAdapter;->getItem(I)Landroid/support/v7/view/menu/MenuItemImpl;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 369
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v3, 0x0

    .line 373
    if-nez p2, :cond_0

    .line 374
    iget-object v1, p0, Landroid/support/v7/view/menu/MenuPopupHelper$MenuAdapter;->this$0:Landroid/support/v7/view/menu/MenuPopupHelper;

    # getter for: Landroid/support/v7/view/menu/MenuPopupHelper;->mInflater:Landroid/view/LayoutInflater;
    invoke-static {v1}, Landroid/support/v7/view/menu/MenuPopupHelper;->access$200(Landroid/support/v7/view/menu/MenuPopupHelper;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Landroid/support/v7/view/menu/MenuPopupHelper;->ITEM_LAYOUT:I

    invoke-virtual {v1, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    :cond_0
    move-object v0, p2

    .line 377
    check-cast v0, Landroid/support/v7/view/menu/MenuView$ItemView;

    .line 378
    .local v0, "itemView":Landroid/support/v7/view/menu/MenuView$ItemView;
    iget-object v1, p0, Landroid/support/v7/view/menu/MenuPopupHelper$MenuAdapter;->this$0:Landroid/support/v7/view/menu/MenuPopupHelper;

    iget-boolean v1, v1, Landroid/support/v7/view/menu/MenuPopupHelper;->mForceShowIcon:Z

    if-eqz v1, :cond_1

    move-object v1, p2

    .line 379
    check-cast v1, Landroid/support/v7/view/menu/ListMenuItemView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/support/v7/view/menu/ListMenuItemView;->setForceShowIcon(Z)V

    .line 381
    :cond_1
    invoke-virtual {p0, p1}, Landroid/support/v7/view/menu/MenuPopupHelper$MenuAdapter;->getItem(I)Landroid/support/v7/view/menu/MenuItemImpl;

    move-result-object v1

    invoke-interface {v0, v1, v3}, Landroid/support/v7/view/menu/MenuView$ItemView;->initialize(Landroid/support/v7/view/menu/MenuItemImpl;I)V

    .line 382
    return-object p2
.end method

.method public notifyDataSetChanged()V
    .locals 0

    .prologue
    .line 403
    invoke-virtual {p0}, Landroid/support/v7/view/menu/MenuPopupHelper$MenuAdapter;->findExpandedIndex()V

    .line 404
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 405
    return-void
.end method
