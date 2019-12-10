.class public Landroid/support/design/internal/NavigationSubMenu;
.super Landroid/support/v7/view/menu/SubMenuBuilder;
.source "NavigationSubMenu.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/support/design/internal/NavigationMenu;Landroid/support/v7/view/menu/MenuItemImpl;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "menu"    # Landroid/support/design/internal/NavigationMenu;
    .param p3, "item"    # Landroid/support/v7/view/menu/MenuItemImpl;

    .prologue
    .line 33
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/view/menu/SubMenuBuilder;-><init>(Landroid/content/Context;Landroid/support/v7/view/menu/MenuBuilder;Landroid/support/v7/view/menu/MenuItemImpl;)V

    .line 34
    return-void
.end method


# virtual methods
.method public onItemsChanged(Z)V
    .locals 1
    .param p1, "structureChanged"    # Z

    .prologue
    .line 38
    invoke-super {p0, p1}, Landroid/support/v7/view/menu/SubMenuBuilder;->onItemsChanged(Z)V

    .line 39
    invoke-virtual {p0}, Landroid/support/design/internal/NavigationSubMenu;->getParentMenu()Landroid/view/Menu;

    move-result-object v0

    check-cast v0, Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v0, p1}, Landroid/support/v7/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 40
    return-void
.end method
