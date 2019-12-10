.class Landroid/support/design/widget/Snackbar$4;
.super Ljava/lang/Object;
.source "Snackbar.java"

# interfaces
.implements Landroid/support/design/widget/SwipeDismissBehavior$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/design/widget/Snackbar;->showView()V
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
    .line 444
    iput-object p1, p0, Landroid/support/design/widget/Snackbar$4;->this$0:Landroid/support/design/widget/Snackbar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 447
    iget-object v0, p0, Landroid/support/design/widget/Snackbar$4;->this$0:Landroid/support/design/widget/Snackbar;

    const/4 v1, 0x0

    # invokes: Landroid/support/design/widget/Snackbar;->dispatchDismiss(I)V
    invoke-static {v0, v1}, Landroid/support/design/widget/Snackbar;->access$000(Landroid/support/design/widget/Snackbar;I)V

    .line 448
    return-void
.end method

.method public onDragStateChanged(I)V
    .locals 2
    .param p1, "state"    # I

    .prologue
    .line 452
    packed-switch p1, :pswitch_data_0

    .line 463
    :goto_0
    return-void

    .line 456
    :pswitch_0
    invoke-static {}, Landroid/support/design/widget/SnackbarManager;->getInstance()Landroid/support/design/widget/SnackbarManager;

    move-result-object v0

    iget-object v1, p0, Landroid/support/design/widget/Snackbar$4;->this$0:Landroid/support/design/widget/Snackbar;

    # getter for: Landroid/support/design/widget/Snackbar;->mManagerCallback:Landroid/support/design/widget/SnackbarManager$Callback;
    invoke-static {v1}, Landroid/support/design/widget/Snackbar;->access$200(Landroid/support/design/widget/Snackbar;)Landroid/support/design/widget/SnackbarManager$Callback;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/design/widget/SnackbarManager;->cancelTimeout(Landroid/support/design/widget/SnackbarManager$Callback;)V

    goto :goto_0

    .line 460
    :pswitch_1
    invoke-static {}, Landroid/support/design/widget/SnackbarManager;->getInstance()Landroid/support/design/widget/SnackbarManager;

    move-result-object v0

    iget-object v1, p0, Landroid/support/design/widget/Snackbar$4;->this$0:Landroid/support/design/widget/Snackbar;

    # getter for: Landroid/support/design/widget/Snackbar;->mManagerCallback:Landroid/support/design/widget/SnackbarManager$Callback;
    invoke-static {v1}, Landroid/support/design/widget/Snackbar;->access$200(Landroid/support/design/widget/Snackbar;)Landroid/support/design/widget/SnackbarManager$Callback;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/design/widget/SnackbarManager;->restoreTimeout(Landroid/support/design/widget/SnackbarManager$Callback;)V

    goto :goto_0

    .line 452
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
