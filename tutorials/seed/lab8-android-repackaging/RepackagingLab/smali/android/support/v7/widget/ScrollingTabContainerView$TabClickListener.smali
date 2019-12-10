.class Landroid/support/v7/widget/ScrollingTabContainerView$TabClickListener;
.super Ljava/lang/Object;
.source "ScrollingTabContainerView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/ScrollingTabContainerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TabClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v7/widget/ScrollingTabContainerView;


# direct methods
.method private constructor <init>(Landroid/support/v7/widget/ScrollingTabContainerView;)V
    .locals 0

    .prologue
    .line 571
    iput-object p1, p0, Landroid/support/v7/widget/ScrollingTabContainerView$TabClickListener;->this$0:Landroid/support/v7/widget/ScrollingTabContainerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v7/widget/ScrollingTabContainerView;Landroid/support/v7/widget/ScrollingTabContainerView$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/support/v7/widget/ScrollingTabContainerView;
    .param p2, "x1"    # Landroid/support/v7/widget/ScrollingTabContainerView$1;

    .prologue
    .line 571
    invoke-direct {p0, p1}, Landroid/support/v7/widget/ScrollingTabContainerView$TabClickListener;-><init>(Landroid/support/v7/widget/ScrollingTabContainerView;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 573
    move-object v3, p1

    check-cast v3, Landroid/support/v7/widget/ScrollingTabContainerView$TabView;

    .line 574
    .local v3, "tabView":Landroid/support/v7/widget/ScrollingTabContainerView$TabView;
    invoke-virtual {v3}, Landroid/support/v7/widget/ScrollingTabContainerView$TabView;->getTab()Landroid/support/v7/app/ActionBar$Tab;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v7/app/ActionBar$Tab;->select()V

    .line 575
    iget-object v4, p0, Landroid/support/v7/widget/ScrollingTabContainerView$TabClickListener;->this$0:Landroid/support/v7/widget/ScrollingTabContainerView;

    # getter for: Landroid/support/v7/widget/ScrollingTabContainerView;->mTabLayout:Landroid/support/v7/widget/LinearLayoutCompat;
    invoke-static {v4}, Landroid/support/v7/widget/ScrollingTabContainerView;->access$200(Landroid/support/v7/widget/ScrollingTabContainerView;)Landroid/support/v7/widget/LinearLayoutCompat;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v7/widget/LinearLayoutCompat;->getChildCount()I

    move-result v2

    .line 576
    .local v2, "tabCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 577
    iget-object v4, p0, Landroid/support/v7/widget/ScrollingTabContainerView$TabClickListener;->this$0:Landroid/support/v7/widget/ScrollingTabContainerView;

    # getter for: Landroid/support/v7/widget/ScrollingTabContainerView;->mTabLayout:Landroid/support/v7/widget/LinearLayoutCompat;
    invoke-static {v4}, Landroid/support/v7/widget/ScrollingTabContainerView;->access$200(Landroid/support/v7/widget/ScrollingTabContainerView;)Landroid/support/v7/widget/LinearLayoutCompat;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/support/v7/widget/LinearLayoutCompat;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 578
    .local v0, "child":Landroid/view/View;
    if-ne v0, p1, :cond_0

    const/4 v4, 0x1

    :goto_1
    invoke-virtual {v0, v4}, Landroid/view/View;->setSelected(Z)V

    .line 576
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 578
    :cond_0
    const/4 v4, 0x0

    goto :goto_1

    .line 580
    .end local v0    # "child":Landroid/view/View;
    :cond_1
    return-void
.end method
