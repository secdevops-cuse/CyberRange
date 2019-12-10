.class Landroid/support/v7/view/menu/MenuItemWrapperICS$ActionProviderWrapper;
.super Landroid/support/v4/view/ActionProvider;
.source "MenuItemWrapperICS.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/view/menu/MenuItemWrapperICS;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ActionProviderWrapper"
.end annotation


# instance fields
.field final mInner:Landroid/view/ActionProvider;

.field final synthetic this$0:Landroid/support/v7/view/menu/MenuItemWrapperICS;


# direct methods
.method public constructor <init>(Landroid/support/v7/view/menu/MenuItemWrapperICS;Landroid/content/Context;Landroid/view/ActionProvider;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "inner"    # Landroid/view/ActionProvider;

    .prologue
    .line 346
    iput-object p1, p0, Landroid/support/v7/view/menu/MenuItemWrapperICS$ActionProviderWrapper;->this$0:Landroid/support/v7/view/menu/MenuItemWrapperICS;

    .line 347
    invoke-direct {p0, p2}, Landroid/support/v4/view/ActionProvider;-><init>(Landroid/content/Context;)V

    .line 348
    iput-object p3, p0, Landroid/support/v7/view/menu/MenuItemWrapperICS$ActionProviderWrapper;->mInner:Landroid/view/ActionProvider;

    .line 349
    return-void
.end method


# virtual methods
.method public hasSubMenu()Z
    .locals 1

    .prologue
    .line 363
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuItemWrapperICS$ActionProviderWrapper;->mInner:Landroid/view/ActionProvider;

    invoke-virtual {v0}, Landroid/view/ActionProvider;->hasSubMenu()Z

    move-result v0

    return v0
.end method

.method public onCreateActionView()Landroid/view/View;
    .locals 1

    .prologue
    .line 353
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuItemWrapperICS$ActionProviderWrapper;->mInner:Landroid/view/ActionProvider;

    invoke-virtual {v0}, Landroid/view/ActionProvider;->onCreateActionView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onPerformDefaultAction()Z
    .locals 1

    .prologue
    .line 358
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuItemWrapperICS$ActionProviderWrapper;->mInner:Landroid/view/ActionProvider;

    invoke-virtual {v0}, Landroid/view/ActionProvider;->onPerformDefaultAction()Z

    move-result v0

    return v0
.end method

.method public onPrepareSubMenu(Landroid/view/SubMenu;)V
    .locals 2
    .param p1, "subMenu"    # Landroid/view/SubMenu;

    .prologue
    .line 368
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuItemWrapperICS$ActionProviderWrapper;->mInner:Landroid/view/ActionProvider;

    iget-object v1, p0, Landroid/support/v7/view/menu/MenuItemWrapperICS$ActionProviderWrapper;->this$0:Landroid/support/v7/view/menu/MenuItemWrapperICS;

    invoke-virtual {v1, p1}, Landroid/support/v7/view/menu/MenuItemWrapperICS;->getSubMenuWrapper(Landroid/view/SubMenu;)Landroid/view/SubMenu;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ActionProvider;->onPrepareSubMenu(Landroid/view/SubMenu;)V

    .line 369
    return-void
.end method
