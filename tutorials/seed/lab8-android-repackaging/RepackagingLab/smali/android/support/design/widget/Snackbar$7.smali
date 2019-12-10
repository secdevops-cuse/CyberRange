.class Landroid/support/design/widget/Snackbar$7;
.super Landroid/support/v4/view/ViewPropertyAnimatorListenerAdapter;
.source "Snackbar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/design/widget/Snackbar;->animateViewIn()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/design/widget/Snackbar;


# direct methods
.method constructor <init>(Landroid/support/design/widget/Snackbar;)V
    .locals 0

    .prologue
    .line 514
    iput-object p1, p0, Landroid/support/design/widget/Snackbar$7;->this$0:Landroid/support/design/widget/Snackbar;

    invoke-direct {p0}, Landroid/support/v4/view/ViewPropertyAnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 523
    iget-object v0, p0, Landroid/support/design/widget/Snackbar$7;->this$0:Landroid/support/design/widget/Snackbar;

    # getter for: Landroid/support/design/widget/Snackbar;->mCallback:Landroid/support/design/widget/Snackbar$Callback;
    invoke-static {v0}, Landroid/support/design/widget/Snackbar;->access$600(Landroid/support/design/widget/Snackbar;)Landroid/support/design/widget/Snackbar$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 524
    iget-object v0, p0, Landroid/support/design/widget/Snackbar$7;->this$0:Landroid/support/design/widget/Snackbar;

    # getter for: Landroid/support/design/widget/Snackbar;->mCallback:Landroid/support/design/widget/Snackbar$Callback;
    invoke-static {v0}, Landroid/support/design/widget/Snackbar;->access$600(Landroid/support/design/widget/Snackbar;)Landroid/support/design/widget/Snackbar$Callback;

    move-result-object v0

    iget-object v1, p0, Landroid/support/design/widget/Snackbar$7;->this$0:Landroid/support/design/widget/Snackbar;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/Snackbar$Callback;->onShown(Landroid/support/design/widget/Snackbar;)V

    .line 526
    :cond_0
    invoke-static {}, Landroid/support/design/widget/SnackbarManager;->getInstance()Landroid/support/design/widget/SnackbarManager;

    move-result-object v0

    iget-object v1, p0, Landroid/support/design/widget/Snackbar$7;->this$0:Landroid/support/design/widget/Snackbar;

    # getter for: Landroid/support/design/widget/Snackbar;->mManagerCallback:Landroid/support/design/widget/SnackbarManager$Callback;
    invoke-static {v1}, Landroid/support/design/widget/Snackbar;->access$200(Landroid/support/design/widget/Snackbar;)Landroid/support/design/widget/SnackbarManager$Callback;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/design/widget/SnackbarManager;->onShown(Landroid/support/design/widget/SnackbarManager$Callback;)V

    .line 527
    return-void
.end method

.method public onAnimationStart(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 517
    iget-object v0, p0, Landroid/support/design/widget/Snackbar$7;->this$0:Landroid/support/design/widget/Snackbar;

    # getter for: Landroid/support/design/widget/Snackbar;->mView:Landroid/support/design/widget/Snackbar$SnackbarLayout;
    invoke-static {v0}, Landroid/support/design/widget/Snackbar;->access$500(Landroid/support/design/widget/Snackbar;)Landroid/support/design/widget/Snackbar$SnackbarLayout;

    move-result-object v0

    const/16 v1, 0x46

    const/16 v2, 0xb4

    invoke-virtual {v0, v1, v2}, Landroid/support/design/widget/Snackbar$SnackbarLayout;->animateChildrenIn(II)V

    .line 519
    return-void
.end method
