.class final Landroid/support/v7/app/ToolbarActionBar$MenuBuilderCallback;
.super Ljava/lang/Object;
.source "ToolbarActionBar.java"

# interfaces
.implements Landroid/support/v7/view/menu/MenuBuilder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/app/ToolbarActionBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MenuBuilderCallback"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v7/app/ToolbarActionBar;


# direct methods
.method private constructor <init>(Landroid/support/v7/app/ToolbarActionBar;)V
    .locals 0

    .prologue
    .line 625
    iput-object p1, p0, Landroid/support/v7/app/ToolbarActionBar$MenuBuilderCallback;->this$0:Landroid/support/v7/app/ToolbarActionBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v7/app/ToolbarActionBar;Landroid/support/v7/app/ToolbarActionBar$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/support/v7/app/ToolbarActionBar;
    .param p2, "x1"    # Landroid/support/v7/app/ToolbarActionBar$1;

    .prologue
    .line 625
    invoke-direct {p0, p1}, Landroid/support/v7/app/ToolbarActionBar$MenuBuilderCallback;-><init>(Landroid/support/v7/app/ToolbarActionBar;)V

    return-void
.end method


# virtual methods
.method public onMenuItemSelected(Landroid/support/v7/view/menu/MenuBuilder;Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "menu"    # Landroid/support/v7/view/menu/MenuBuilder;
    .param p2, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 629
    const/4 v0, 0x0

    return v0
.end method

.method public onMenuModeChange(Landroid/support/v7/view/menu/MenuBuilder;)V
    .locals 4
    .param p1, "menu"    # Landroid/support/v7/view/menu/MenuBuilder;

    .prologue
    const/16 v3, 0x6c

    .line 634
    iget-object v0, p0, Landroid/support/v7/app/ToolbarActionBar$MenuBuilderCallback;->this$0:Landroid/support/v7/app/ToolbarActionBar;

    # getter for: Landroid/support/v7/app/ToolbarActionBar;->mWindowCallback:Landroid/view/Window$Callback;
    invoke-static {v0}, Landroid/support/v7/app/ToolbarActionBar;->access$000(Landroid/support/v7/app/ToolbarActionBar;)Landroid/view/Window$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 635
    iget-object v0, p0, Landroid/support/v7/app/ToolbarActionBar$MenuBuilderCallback;->this$0:Landroid/support/v7/app/ToolbarActionBar;

    # getter for: Landroid/support/v7/app/ToolbarActionBar;->mDecorToolbar:Landroid/support/v7/widget/DecorToolbar;
    invoke-static {v0}, Landroid/support/v7/app/ToolbarActionBar;->access$300(Landroid/support/v7/app/ToolbarActionBar;)Landroid/support/v7/widget/DecorToolbar;

    move-result-object v0

    invoke-interface {v0}, Landroid/support/v7/widget/DecorToolbar;->isOverflowMenuShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 636
    iget-object v0, p0, Landroid/support/v7/app/ToolbarActionBar$MenuBuilderCallback;->this$0:Landroid/support/v7/app/ToolbarActionBar;

    # getter for: Landroid/support/v7/app/ToolbarActionBar;->mWindowCallback:Landroid/view/Window$Callback;
    invoke-static {v0}, Landroid/support/v7/app/ToolbarActionBar;->access$000(Landroid/support/v7/app/ToolbarActionBar;)Landroid/view/Window$Callback;

    move-result-object v0

    invoke-interface {v0, v3, p1}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    .line 642
    :cond_0
    :goto_0
    return-void

    .line 637
    :cond_1
    iget-object v0, p0, Landroid/support/v7/app/ToolbarActionBar$MenuBuilderCallback;->this$0:Landroid/support/v7/app/ToolbarActionBar;

    # getter for: Landroid/support/v7/app/ToolbarActionBar;->mWindowCallback:Landroid/view/Window$Callback;
    invoke-static {v0}, Landroid/support/v7/app/ToolbarActionBar;->access$000(Landroid/support/v7/app/ToolbarActionBar;)Landroid/view/Window$Callback;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2, p1}, Landroid/view/Window$Callback;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 639
    iget-object v0, p0, Landroid/support/v7/app/ToolbarActionBar$MenuBuilderCallback;->this$0:Landroid/support/v7/app/ToolbarActionBar;

    # getter for: Landroid/support/v7/app/ToolbarActionBar;->mWindowCallback:Landroid/view/Window$Callback;
    invoke-static {v0}, Landroid/support/v7/app/ToolbarActionBar;->access$000(Landroid/support/v7/app/ToolbarActionBar;)Landroid/view/Window$Callback;

    move-result-object v0

    invoke-interface {v0, v3, p1}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    goto :goto_0
.end method
