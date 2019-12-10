.class final Landroid/support/design/widget/CoordinatorLayout$HierarchyChangeListener;
.super Ljava/lang/Object;
.source "CoordinatorLayout.java"

# interfaces
.implements Landroid/view/ViewGroup$OnHierarchyChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/widget/CoordinatorLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "HierarchyChangeListener"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/design/widget/CoordinatorLayout;


# direct methods
.method constructor <init>(Landroid/support/design/widget/CoordinatorLayout;)V
    .locals 0

    .prologue
    .line 2530
    iput-object p1, p0, Landroid/support/design/widget/CoordinatorLayout$HierarchyChangeListener;->this$0:Landroid/support/design/widget/CoordinatorLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChildViewAdded(Landroid/view/View;Landroid/view/View;)V
    .locals 1
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "child"    # Landroid/view/View;

    .prologue
    .line 2533
    iget-object v0, p0, Landroid/support/design/widget/CoordinatorLayout$HierarchyChangeListener;->this$0:Landroid/support/design/widget/CoordinatorLayout;

    # getter for: Landroid/support/design/widget/CoordinatorLayout;->mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;
    invoke-static {v0}, Landroid/support/design/widget/CoordinatorLayout;->access$100(Landroid/support/design/widget/CoordinatorLayout;)Landroid/view/ViewGroup$OnHierarchyChangeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2534
    iget-object v0, p0, Landroid/support/design/widget/CoordinatorLayout$HierarchyChangeListener;->this$0:Landroid/support/design/widget/CoordinatorLayout;

    # getter for: Landroid/support/design/widget/CoordinatorLayout;->mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;
    invoke-static {v0}, Landroid/support/design/widget/CoordinatorLayout;->access$100(Landroid/support/design/widget/CoordinatorLayout;)Landroid/view/ViewGroup$OnHierarchyChangeListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/view/ViewGroup$OnHierarchyChangeListener;->onChildViewAdded(Landroid/view/View;Landroid/view/View;)V

    .line 2536
    :cond_0
    return-void
.end method

.method public onChildViewRemoved(Landroid/view/View;Landroid/view/View;)V
    .locals 1
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "child"    # Landroid/view/View;

    .prologue
    .line 2540
    iget-object v0, p0, Landroid/support/design/widget/CoordinatorLayout$HierarchyChangeListener;->this$0:Landroid/support/design/widget/CoordinatorLayout;

    invoke-virtual {v0, p2}, Landroid/support/design/widget/CoordinatorLayout;->dispatchDependentViewRemoved(Landroid/view/View;)V

    .line 2542
    iget-object v0, p0, Landroid/support/design/widget/CoordinatorLayout$HierarchyChangeListener;->this$0:Landroid/support/design/widget/CoordinatorLayout;

    # getter for: Landroid/support/design/widget/CoordinatorLayout;->mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;
    invoke-static {v0}, Landroid/support/design/widget/CoordinatorLayout;->access$100(Landroid/support/design/widget/CoordinatorLayout;)Landroid/view/ViewGroup$OnHierarchyChangeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2543
    iget-object v0, p0, Landroid/support/design/widget/CoordinatorLayout$HierarchyChangeListener;->this$0:Landroid/support/design/widget/CoordinatorLayout;

    # getter for: Landroid/support/design/widget/CoordinatorLayout;->mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;
    invoke-static {v0}, Landroid/support/design/widget/CoordinatorLayout;->access$100(Landroid/support/design/widget/CoordinatorLayout;)Landroid/view/ViewGroup$OnHierarchyChangeListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/view/ViewGroup$OnHierarchyChangeListener;->onChildViewRemoved(Landroid/view/View;Landroid/view/View;)V

    .line 2545
    :cond_0
    return-void
.end method
