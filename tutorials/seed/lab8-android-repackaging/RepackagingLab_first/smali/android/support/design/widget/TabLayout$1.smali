.class Landroid/support/design/widget/TabLayout$1;
.super Ljava/lang/Object;
.source "TabLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/design/widget/TabLayout;->createTabView(Landroid/support/design/widget/TabLayout$Tab;)Landroid/support/design/widget/TabLayout$TabView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/design/widget/TabLayout;


# direct methods
.method constructor <init>(Landroid/support/design/widget/TabLayout;)V
    .locals 0

    .prologue
    .line 661
    iput-object p1, p0, Landroid/support/design/widget/TabLayout$1;->this$0:Landroid/support/design/widget/TabLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 664
    move-object v0, p1

    check-cast v0, Landroid/support/design/widget/TabLayout$TabView;

    .line 665
    .local v0, "tabView":Landroid/support/design/widget/TabLayout$TabView;
    invoke-virtual {v0}, Landroid/support/design/widget/TabLayout$TabView;->getTab()Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/design/widget/TabLayout$Tab;->select()V

    .line 666
    return-void
.end method
