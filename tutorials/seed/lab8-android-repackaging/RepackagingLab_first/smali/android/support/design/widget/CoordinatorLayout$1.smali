.class Landroid/support/design/widget/CoordinatorLayout$1;
.super Ljava/lang/Object;
.source "CoordinatorLayout.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/widget/CoordinatorLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/design/widget/CoordinatorLayout;


# direct methods
.method constructor <init>(Landroid/support/design/widget/CoordinatorLayout;)V
    .locals 0

    .prologue
    .line 118
    iput-object p1, p0, Landroid/support/design/widget/CoordinatorLayout$1;->this$0:Landroid/support/design/widget/CoordinatorLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Landroid/view/View;Landroid/view/View;)I
    .locals 3
    .param p1, "lhs"    # Landroid/view/View;
    .param p2, "rhs"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x0

    .line 121
    if-ne p1, p2, :cond_0

    move v0, v1

    .line 130
    :goto_0
    return v0

    .line 123
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    iget-object v2, p0, Landroid/support/design/widget/CoordinatorLayout$1;->this$0:Landroid/support/design/widget/CoordinatorLayout;

    invoke-virtual {v0, v2, p1, p2}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->dependsOn(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 125
    const/4 v0, 0x1

    goto :goto_0

    .line 126
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    iget-object v2, p0, Landroid/support/design/widget/CoordinatorLayout$1;->this$0:Landroid/support/design/widget/CoordinatorLayout;

    invoke-virtual {v0, v2, p2, p1}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->dependsOn(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 128
    const/4 v0, -0x1

    goto :goto_0

    :cond_2
    move v0, v1

    .line 130
    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 118
    check-cast p1, Landroid/view/View;

    check-cast p2, Landroid/view/View;

    invoke-virtual {p0, p1, p2}, Landroid/support/design/widget/CoordinatorLayout$1;->compare(Landroid/view/View;Landroid/view/View;)I

    move-result v0

    return v0
.end method
