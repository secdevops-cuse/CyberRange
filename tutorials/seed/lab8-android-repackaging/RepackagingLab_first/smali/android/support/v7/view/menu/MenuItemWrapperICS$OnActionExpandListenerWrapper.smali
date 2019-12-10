.class Landroid/support/v7/view/menu/MenuItemWrapperICS$OnActionExpandListenerWrapper;
.super Landroid/support/v7/view/menu/BaseWrapper;
.source "MenuItemWrapperICS.java"

# interfaces
.implements Landroid/support/v4/view/MenuItemCompat$OnActionExpandListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/view/menu/MenuItemWrapperICS;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnActionExpandListenerWrapper"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/view/menu/BaseWrapper",
        "<",
        "Landroid/view/MenuItem$OnActionExpandListener;",
        ">;",
        "Landroid/support/v4/view/MenuItemCompat$OnActionExpandListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v7/view/menu/MenuItemWrapperICS;


# direct methods
.method constructor <init>(Landroid/support/v7/view/menu/MenuItemWrapperICS;Landroid/view/MenuItem$OnActionExpandListener;)V
    .locals 0
    .param p2, "object"    # Landroid/view/MenuItem$OnActionExpandListener;

    .prologue
    .line 328
    iput-object p1, p0, Landroid/support/v7/view/menu/MenuItemWrapperICS$OnActionExpandListenerWrapper;->this$0:Landroid/support/v7/view/menu/MenuItemWrapperICS;

    .line 329
    invoke-direct {p0, p2}, Landroid/support/v7/view/menu/BaseWrapper;-><init>(Ljava/lang/Object;)V

    .line 330
    return-void
.end method


# virtual methods
.method public onMenuItemActionCollapse(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 339
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuItemWrapperICS$OnActionExpandListenerWrapper;->mWrappedObject:Ljava/lang/Object;

    check-cast v0, Landroid/view/MenuItem$OnActionExpandListener;

    iget-object v1, p0, Landroid/support/v7/view/menu/MenuItemWrapperICS$OnActionExpandListenerWrapper;->this$0:Landroid/support/v7/view/menu/MenuItemWrapperICS;

    invoke-virtual {v1, p1}, Landroid/support/v7/view/menu/MenuItemWrapperICS;->getMenuItemWrapper(Landroid/view/MenuItem;)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem$OnActionExpandListener;->onMenuItemActionCollapse(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onMenuItemActionExpand(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 334
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuItemWrapperICS$OnActionExpandListenerWrapper;->mWrappedObject:Ljava/lang/Object;

    check-cast v0, Landroid/view/MenuItem$OnActionExpandListener;

    iget-object v1, p0, Landroid/support/v7/view/menu/MenuItemWrapperICS$OnActionExpandListenerWrapper;->this$0:Landroid/support/v7/view/menu/MenuItemWrapperICS;

    invoke-virtual {v1, p1}, Landroid/support/v7/view/menu/MenuItemWrapperICS;->getMenuItemWrapper(Landroid/view/MenuItem;)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem$OnActionExpandListener;->onMenuItemActionExpand(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method
