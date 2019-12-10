.class Landroid/support/v7/view/menu/ActionMenuItemView$ActionMenuItemForwardingListener;
.super Landroid/support/v7/widget/ListPopupWindow$ForwardingListener;
.source "ActionMenuItemView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/view/menu/ActionMenuItemView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ActionMenuItemForwardingListener"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v7/view/menu/ActionMenuItemView;


# direct methods
.method public constructor <init>(Landroid/support/v7/view/menu/ActionMenuItemView;)V
    .locals 0

    .prologue
    .line 295
    iput-object p1, p0, Landroid/support/v7/view/menu/ActionMenuItemView$ActionMenuItemForwardingListener;->this$0:Landroid/support/v7/view/menu/ActionMenuItemView;

    .line 296
    invoke-direct {p0, p1}, Landroid/support/v7/widget/ListPopupWindow$ForwardingListener;-><init>(Landroid/view/View;)V

    .line 297
    return-void
.end method


# virtual methods
.method public getPopup()Landroid/support/v7/widget/ListPopupWindow;
    .locals 1

    .prologue
    .line 301
    iget-object v0, p0, Landroid/support/v7/view/menu/ActionMenuItemView$ActionMenuItemForwardingListener;->this$0:Landroid/support/v7/view/menu/ActionMenuItemView;

    # getter for: Landroid/support/v7/view/menu/ActionMenuItemView;->mPopupCallback:Landroid/support/v7/view/menu/ActionMenuItemView$PopupCallback;
    invoke-static {v0}, Landroid/support/v7/view/menu/ActionMenuItemView;->access$000(Landroid/support/v7/view/menu/ActionMenuItemView;)Landroid/support/v7/view/menu/ActionMenuItemView$PopupCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 302
    iget-object v0, p0, Landroid/support/v7/view/menu/ActionMenuItemView$ActionMenuItemForwardingListener;->this$0:Landroid/support/v7/view/menu/ActionMenuItemView;

    # getter for: Landroid/support/v7/view/menu/ActionMenuItemView;->mPopupCallback:Landroid/support/v7/view/menu/ActionMenuItemView$PopupCallback;
    invoke-static {v0}, Landroid/support/v7/view/menu/ActionMenuItemView;->access$000(Landroid/support/v7/view/menu/ActionMenuItemView;)Landroid/support/v7/view/menu/ActionMenuItemView$PopupCallback;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/view/menu/ActionMenuItemView$PopupCallback;->getPopup()Landroid/support/v7/widget/ListPopupWindow;

    move-result-object v0

    .line 304
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onForwardingStarted()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 310
    iget-object v2, p0, Landroid/support/v7/view/menu/ActionMenuItemView$ActionMenuItemForwardingListener;->this$0:Landroid/support/v7/view/menu/ActionMenuItemView;

    # getter for: Landroid/support/v7/view/menu/ActionMenuItemView;->mItemInvoker:Landroid/support/v7/view/menu/MenuBuilder$ItemInvoker;
    invoke-static {v2}, Landroid/support/v7/view/menu/ActionMenuItemView;->access$100(Landroid/support/v7/view/menu/ActionMenuItemView;)Landroid/support/v7/view/menu/MenuBuilder$ItemInvoker;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/support/v7/view/menu/ActionMenuItemView$ActionMenuItemForwardingListener;->this$0:Landroid/support/v7/view/menu/ActionMenuItemView;

    # getter for: Landroid/support/v7/view/menu/ActionMenuItemView;->mItemInvoker:Landroid/support/v7/view/menu/MenuBuilder$ItemInvoker;
    invoke-static {v2}, Landroid/support/v7/view/menu/ActionMenuItemView;->access$100(Landroid/support/v7/view/menu/ActionMenuItemView;)Landroid/support/v7/view/menu/MenuBuilder$ItemInvoker;

    move-result-object v2

    iget-object v3, p0, Landroid/support/v7/view/menu/ActionMenuItemView$ActionMenuItemForwardingListener;->this$0:Landroid/support/v7/view/menu/ActionMenuItemView;

    # getter for: Landroid/support/v7/view/menu/ActionMenuItemView;->mItemData:Landroid/support/v7/view/menu/MenuItemImpl;
    invoke-static {v3}, Landroid/support/v7/view/menu/ActionMenuItemView;->access$200(Landroid/support/v7/view/menu/ActionMenuItemView;)Landroid/support/v7/view/menu/MenuItemImpl;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/support/v7/view/menu/MenuBuilder$ItemInvoker;->invokeItem(Landroid/support/v7/view/menu/MenuItemImpl;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 311
    invoke-virtual {p0}, Landroid/support/v7/view/menu/ActionMenuItemView$ActionMenuItemForwardingListener;->getPopup()Landroid/support/v7/widget/ListPopupWindow;

    move-result-object v0

    .line 312
    .local v0, "popup":Landroid/support/v7/widget/ListPopupWindow;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/v7/widget/ListPopupWindow;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    .line 314
    .end local v0    # "popup":Landroid/support/v7/widget/ListPopupWindow;
    :cond_0
    return v1
.end method
