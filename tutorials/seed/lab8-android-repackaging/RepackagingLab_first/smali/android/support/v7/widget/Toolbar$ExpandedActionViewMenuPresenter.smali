.class Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;
.super Ljava/lang/Object;
.source "Toolbar.java"

# interfaces
.implements Landroid/support/v7/view/menu/MenuPresenter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/Toolbar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ExpandedActionViewMenuPresenter"
.end annotation


# instance fields
.field mCurrentExpandedItem:Landroid/support/v7/view/menu/MenuItemImpl;

.field mMenu:Landroid/support/v7/view/menu/MenuBuilder;

.field final synthetic this$0:Landroid/support/v7/widget/Toolbar;


# direct methods
.method private constructor <init>(Landroid/support/v7/widget/Toolbar;)V
    .locals 0

    .prologue
    .line 1941
    iput-object p1, p0, Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;->this$0:Landroid/support/v7/widget/Toolbar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v7/widget/Toolbar;Landroid/support/v7/widget/Toolbar$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/support/v7/widget/Toolbar;
    .param p2, "x1"    # Landroid/support/v7/widget/Toolbar$1;

    .prologue
    .line 1941
    invoke-direct {p0, p1}, Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;-><init>(Landroid/support/v7/widget/Toolbar;)V

    return-void
.end method


# virtual methods
.method public collapseItemActionView(Landroid/support/v7/view/menu/MenuBuilder;Landroid/support/v7/view/menu/MenuItemImpl;)Z
    .locals 3
    .param p1, "menu"    # Landroid/support/v7/view/menu/MenuBuilder;
    .param p2, "item"    # Landroid/support/v7/view/menu/MenuItemImpl;

    .prologue
    const/4 v2, 0x0

    .line 2032
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;->this$0:Landroid/support/v7/widget/Toolbar;

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    instance-of v0, v0, Landroid/support/v7/view/CollapsibleActionView;

    if-eqz v0, :cond_0

    .line 2033
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;->this$0:Landroid/support/v7/widget/Toolbar;

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    check-cast v0, Landroid/support/v7/view/CollapsibleActionView;

    invoke-interface {v0}, Landroid/support/v7/view/CollapsibleActionView;->onActionViewCollapsed()V

    .line 2036
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;->this$0:Landroid/support/v7/widget/Toolbar;

    iget-object v1, p0, Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;->this$0:Landroid/support/v7/widget/Toolbar;

    iget-object v1, v1, Landroid/support/v7/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->removeView(Landroid/view/View;)V

    .line 2037
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;->this$0:Landroid/support/v7/widget/Toolbar;

    iget-object v1, p0, Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;->this$0:Landroid/support/v7/widget/Toolbar;

    # getter for: Landroid/support/v7/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;
    invoke-static {v1}, Landroid/support/v7/widget/Toolbar;->access$300(Landroid/support/v7/widget/Toolbar;)Landroid/widget/ImageButton;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->removeView(Landroid/view/View;)V

    .line 2038
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;->this$0:Landroid/support/v7/widget/Toolbar;

    iput-object v2, v0, Landroid/support/v7/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    .line 2040
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;->this$0:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->addChildrenForExpandedActionView()V

    .line 2041
    iput-object v2, p0, Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Landroid/support/v7/view/menu/MenuItemImpl;

    .line 2042
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;->this$0:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->requestLayout()V

    .line 2043
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/support/v7/view/menu/MenuItemImpl;->setActionViewExpanded(Z)V

    .line 2045
    const/4 v0, 0x1

    return v0
.end method

.method public expandItemActionView(Landroid/support/v7/view/menu/MenuBuilder;Landroid/support/v7/view/menu/MenuItemImpl;)Z
    .locals 4
    .param p1, "menu"    # Landroid/support/v7/view/menu/MenuBuilder;
    .param p2, "item"    # Landroid/support/v7/view/menu/MenuItemImpl;

    .prologue
    const/4 v3, 0x1

    .line 2003
    iget-object v1, p0, Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;->this$0:Landroid/support/v7/widget/Toolbar;

    # invokes: Landroid/support/v7/widget/Toolbar;->ensureCollapseButtonView()V
    invoke-static {v1}, Landroid/support/v7/widget/Toolbar;->access$200(Landroid/support/v7/widget/Toolbar;)V

    .line 2004
    iget-object v1, p0, Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;->this$0:Landroid/support/v7/widget/Toolbar;

    # getter for: Landroid/support/v7/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;
    invoke-static {v1}, Landroid/support/v7/widget/Toolbar;->access$300(Landroid/support/v7/widget/Toolbar;)Landroid/widget/ImageButton;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageButton;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;->this$0:Landroid/support/v7/widget/Toolbar;

    if-eq v1, v2, :cond_0

    .line 2005
    iget-object v1, p0, Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;->this$0:Landroid/support/v7/widget/Toolbar;

    iget-object v2, p0, Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;->this$0:Landroid/support/v7/widget/Toolbar;

    # getter for: Landroid/support/v7/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;
    invoke-static {v2}, Landroid/support/v7/widget/Toolbar;->access$300(Landroid/support/v7/widget/Toolbar;)Landroid/widget/ImageButton;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/Toolbar;->addView(Landroid/view/View;)V

    .line 2007
    :cond_0
    iget-object v1, p0, Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;->this$0:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {p2}, Landroid/support/v7/view/menu/MenuItemImpl;->getActionView()Landroid/view/View;

    move-result-object v2

    iput-object v2, v1, Landroid/support/v7/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    .line 2008
    iput-object p2, p0, Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Landroid/support/v7/view/menu/MenuItemImpl;

    .line 2009
    iget-object v1, p0, Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;->this$0:Landroid/support/v7/widget/Toolbar;

    iget-object v1, v1, Landroid/support/v7/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;->this$0:Landroid/support/v7/widget/Toolbar;

    if-eq v1, v2, :cond_1

    .line 2010
    iget-object v1, p0, Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;->this$0:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v1}, Landroid/support/v7/widget/Toolbar;->generateDefaultLayoutParams()Landroid/support/v7/widget/Toolbar$LayoutParams;

    move-result-object v0

    .line 2011
    .local v0, "lp":Landroid/support/v7/widget/Toolbar$LayoutParams;
    const v1, 0x800003

    iget-object v2, p0, Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;->this$0:Landroid/support/v7/widget/Toolbar;

    # getter for: Landroid/support/v7/widget/Toolbar;->mButtonGravity:I
    invoke-static {v2}, Landroid/support/v7/widget/Toolbar;->access$400(Landroid/support/v7/widget/Toolbar;)I

    move-result v2

    and-int/lit8 v2, v2, 0x70

    or-int/2addr v1, v2

    iput v1, v0, Landroid/support/v7/widget/Toolbar$LayoutParams;->gravity:I

    .line 2012
    const/4 v1, 0x2

    iput v1, v0, Landroid/support/v7/widget/Toolbar$LayoutParams;->mViewType:I

    .line 2013
    iget-object v1, p0, Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;->this$0:Landroid/support/v7/widget/Toolbar;

    iget-object v1, v1, Landroid/support/v7/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2014
    iget-object v1, p0, Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;->this$0:Landroid/support/v7/widget/Toolbar;

    iget-object v2, p0, Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;->this$0:Landroid/support/v7/widget/Toolbar;

    iget-object v2, v2, Landroid/support/v7/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/Toolbar;->addView(Landroid/view/View;)V

    .line 2017
    .end local v0    # "lp":Landroid/support/v7/widget/Toolbar$LayoutParams;
    :cond_1
    iget-object v1, p0, Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;->this$0:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v1}, Landroid/support/v7/widget/Toolbar;->removeChildrenForExpandedActionView()V

    .line 2018
    iget-object v1, p0, Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;->this$0:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v1}, Landroid/support/v7/widget/Toolbar;->requestLayout()V

    .line 2019
    invoke-virtual {p2, v3}, Landroid/support/v7/view/menu/MenuItemImpl;->setActionViewExpanded(Z)V

    .line 2021
    iget-object v1, p0, Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;->this$0:Landroid/support/v7/widget/Toolbar;

    iget-object v1, v1, Landroid/support/v7/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    instance-of v1, v1, Landroid/support/v7/view/CollapsibleActionView;

    if-eqz v1, :cond_2

    .line 2022
    iget-object v1, p0, Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;->this$0:Landroid/support/v7/widget/Toolbar;

    iget-object v1, v1, Landroid/support/v7/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    check-cast v1, Landroid/support/v7/view/CollapsibleActionView;

    invoke-interface {v1}, Landroid/support/v7/view/CollapsibleActionView;->onActionViewExpanded()V

    .line 2025
    :cond_2
    return v3
.end method

.method public flagActionItems()Z
    .locals 1

    .prologue
    .line 1998
    const/4 v0, 0x0

    return v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 2050
    const/4 v0, 0x0

    return v0
.end method

.method public getMenuView(Landroid/view/ViewGroup;)Landroid/support/v7/view/menu/MenuView;
    .locals 1
    .param p1, "root"    # Landroid/view/ViewGroup;

    .prologue
    .line 1956
    const/4 v0, 0x0

    return-object v0
.end method

.method public initForMenu(Landroid/content/Context;Landroid/support/v7/view/menu/MenuBuilder;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "menu"    # Landroid/support/v7/view/menu/MenuBuilder;

    .prologue
    .line 1948
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Landroid/support/v7/view/menu/MenuItemImpl;

    if-eqz v0, :cond_0

    .line 1949
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    iget-object v1, p0, Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Landroid/support/v7/view/menu/MenuItemImpl;

    invoke-virtual {v0, v1}, Landroid/support/v7/view/menu/MenuBuilder;->collapseItemActionView(Landroid/support/v7/view/menu/MenuItemImpl;)Z

    .line 1951
    :cond_0
    iput-object p2, p0, Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    .line 1952
    return-void
.end method

.method public onCloseMenu(Landroid/support/v7/view/menu/MenuBuilder;Z)V
    .locals 0
    .param p1, "menu"    # Landroid/support/v7/view/menu/MenuBuilder;
    .param p2, "allMenusAreClosing"    # Z

    .prologue
    .line 1994
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 0
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 2060
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 1

    .prologue
    .line 2055
    const/4 v0, 0x0

    return-object v0
.end method

.method public onSubMenuSelected(Landroid/support/v7/view/menu/SubMenuBuilder;)Z
    .locals 1
    .param p1, "subMenu"    # Landroid/support/v7/view/menu/SubMenuBuilder;

    .prologue
    .line 1989
    const/4 v0, 0x0

    return v0
.end method

.method public setCallback(Landroid/support/v7/view/menu/MenuPresenter$Callback;)V
    .locals 0
    .param p1, "cb"    # Landroid/support/v7/view/menu/MenuPresenter$Callback;

    .prologue
    .line 1985
    return-void
.end method

.method public updateMenuView(Z)V
    .locals 6
    .param p1, "cleared"    # Z

    .prologue
    .line 1962
    iget-object v4, p0, Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Landroid/support/v7/view/menu/MenuItemImpl;

    if-eqz v4, :cond_1

    .line 1963
    const/4 v1, 0x0

    .line 1965
    .local v1, "found":Z
    iget-object v4, p0, Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    if-eqz v4, :cond_0

    .line 1966
    iget-object v4, p0, Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v4}, Landroid/support/v7/view/menu/MenuBuilder;->size()I

    move-result v0

    .line 1967
    .local v0, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 1968
    iget-object v4, p0, Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v4, v2}, Landroid/support/v7/view/menu/MenuBuilder;->getItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 1969
    .local v3, "item":Landroid/view/MenuItem;
    iget-object v4, p0, Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Landroid/support/v7/view/menu/MenuItemImpl;

    if-ne v3, v4, :cond_2

    .line 1970
    const/4 v1, 0x1

    .line 1976
    .end local v0    # "count":I
    .end local v2    # "i":I
    .end local v3    # "item":Landroid/view/MenuItem;
    :cond_0
    if-nez v1, :cond_1

    .line 1978
    iget-object v4, p0, Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    iget-object v5, p0, Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Landroid/support/v7/view/menu/MenuItemImpl;

    invoke-virtual {p0, v4, v5}, Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;->collapseItemActionView(Landroid/support/v7/view/menu/MenuBuilder;Landroid/support/v7/view/menu/MenuItemImpl;)Z

    .line 1981
    .end local v1    # "found":Z
    :cond_1
    return-void

    .line 1967
    .restart local v0    # "count":I
    .restart local v1    # "found":Z
    .restart local v2    # "i":I
    .restart local v3    # "item":Landroid/view/MenuItem;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method
