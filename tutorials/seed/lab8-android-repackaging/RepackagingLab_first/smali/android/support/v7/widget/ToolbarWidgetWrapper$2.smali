.class Landroid/support/v7/widget/ToolbarWidgetWrapper$2;
.super Landroid/support/v4/view/ViewPropertyAnimatorListenerAdapter;
.source "ToolbarWidgetWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v7/widget/ToolbarWidgetWrapper;->setupAnimatorToVisibility(IJ)Landroid/support/v4/view/ViewPropertyAnimatorCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mCanceled:Z

.field final synthetic this$0:Landroid/support/v7/widget/ToolbarWidgetWrapper;

.field final synthetic val$visibility:I


# direct methods
.method constructor <init>(Landroid/support/v7/widget/ToolbarWidgetWrapper;I)V
    .locals 1

    .prologue
    .line 593
    iput-object p1, p0, Landroid/support/v7/widget/ToolbarWidgetWrapper$2;->this$0:Landroid/support/v7/widget/ToolbarWidgetWrapper;

    iput p2, p0, Landroid/support/v7/widget/ToolbarWidgetWrapper$2;->val$visibility:I

    invoke-direct {p0}, Landroid/support/v4/view/ViewPropertyAnimatorListenerAdapter;-><init>()V

    .line 594
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/ToolbarWidgetWrapper$2;->mCanceled:Z

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 610
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/ToolbarWidgetWrapper$2;->mCanceled:Z

    .line 611
    return-void
.end method

.method public onAnimationEnd(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 603
    iget-boolean v0, p0, Landroid/support/v7/widget/ToolbarWidgetWrapper$2;->mCanceled:Z

    if-nez v0, :cond_0

    .line 604
    iget-object v0, p0, Landroid/support/v7/widget/ToolbarWidgetWrapper$2;->this$0:Landroid/support/v7/widget/ToolbarWidgetWrapper;

    # getter for: Landroid/support/v7/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/support/v7/widget/Toolbar;
    invoke-static {v0}, Landroid/support/v7/widget/ToolbarWidgetWrapper;->access$000(Landroid/support/v7/widget/ToolbarWidgetWrapper;)Landroid/support/v7/widget/Toolbar;

    move-result-object v0

    iget v1, p0, Landroid/support/v7/widget/ToolbarWidgetWrapper$2;->val$visibility:I

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setVisibility(I)V

    .line 606
    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 598
    iget-object v0, p0, Landroid/support/v7/widget/ToolbarWidgetWrapper$2;->this$0:Landroid/support/v7/widget/ToolbarWidgetWrapper;

    # getter for: Landroid/support/v7/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/support/v7/widget/Toolbar;
    invoke-static {v0}, Landroid/support/v7/widget/ToolbarWidgetWrapper;->access$000(Landroid/support/v7/widget/ToolbarWidgetWrapper;)Landroid/support/v7/widget/Toolbar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setVisibility(I)V

    .line 599
    return-void
.end method
