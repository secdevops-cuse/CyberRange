.class Landroid/support/design/widget/NavigationView$1;
.super Ljava/lang/Object;
.source "NavigationView.java"

# interfaces
.implements Landroid/support/v7/view/menu/MenuBuilder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/design/widget/NavigationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/design/widget/NavigationView;


# direct methods
.method constructor <init>(Landroid/support/design/widget/NavigationView;)V
    .locals 0

    .prologue
    .line 147
    iput-object p1, p0, Landroid/support/design/widget/NavigationView$1;->this$0:Landroid/support/design/widget/NavigationView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemSelected(Landroid/support/v7/view/menu/MenuBuilder;Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "menu"    # Landroid/support/v7/view/menu/MenuBuilder;
    .param p2, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 150
    iget-object v0, p0, Landroid/support/design/widget/NavigationView$1;->this$0:Landroid/support/design/widget/NavigationView;

    # getter for: Landroid/support/design/widget/NavigationView;->mListener:Landroid/support/design/widget/NavigationView$OnNavigationItemSelectedListener;
    invoke-static {v0}, Landroid/support/design/widget/NavigationView;->access$000(Landroid/support/design/widget/NavigationView;)Landroid/support/design/widget/NavigationView$OnNavigationItemSelectedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/NavigationView$1;->this$0:Landroid/support/design/widget/NavigationView;

    # getter for: Landroid/support/design/widget/NavigationView;->mListener:Landroid/support/design/widget/NavigationView$OnNavigationItemSelectedListener;
    invoke-static {v0}, Landroid/support/design/widget/NavigationView;->access$000(Landroid/support/design/widget/NavigationView;)Landroid/support/design/widget/NavigationView$OnNavigationItemSelectedListener;

    move-result-object v0

    invoke-interface {v0, p2}, Landroid/support/design/widget/NavigationView$OnNavigationItemSelectedListener;->onNavigationItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onMenuModeChange(Landroid/support/v7/view/menu/MenuBuilder;)V
    .locals 0
    .param p1, "menu"    # Landroid/support/v7/view/menu/MenuBuilder;

    .prologue
    .line 154
    return-void
.end method
