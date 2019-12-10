.class public Landroid/support/design/internal/NavigationMenu;
.super Landroid/support/v7/view/menu/MenuBuilder;
.source "NavigationMenu.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 34
    invoke-direct {p0, p1}, Landroid/support/v7/view/menu/MenuBuilder;-><init>(Landroid/content/Context;)V

    .line 35
    return-void
.end method


# virtual methods
.method public addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;
    .locals 3
    .param p1, "group"    # I
    .param p2, "id"    # I
    .param p3, "categoryOrder"    # I
    .param p4, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 39
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/support/design/internal/NavigationMenu;->addInternal(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    check-cast v0, Landroid/support/v7/view/menu/MenuItemImpl;

    .line 40
    .local v0, "item":Landroid/support/v7/view/menu/MenuItemImpl;
    new-instance v1, Landroid/support/design/internal/NavigationSubMenu;

    invoke-virtual {p0}, Landroid/support/design/internal/NavigationMenu;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, p0, v0}, Landroid/support/design/internal/NavigationSubMenu;-><init>(Landroid/content/Context;Landroid/support/design/internal/NavigationMenu;Landroid/support/v7/view/menu/MenuItemImpl;)V

    .line 41
    .local v1, "subMenu":Landroid/support/v7/view/menu/SubMenuBuilder;
    invoke-virtual {v0, v1}, Landroid/support/v7/view/menu/MenuItemImpl;->setSubMenu(Landroid/support/v7/view/menu/SubMenuBuilder;)V

    .line 42
    return-object v1
.end method
