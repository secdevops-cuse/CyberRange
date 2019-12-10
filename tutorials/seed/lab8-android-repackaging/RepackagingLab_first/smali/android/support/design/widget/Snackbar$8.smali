.class Landroid/support/design/widget/Snackbar$8;
.super Ljava/lang/Object;
.source "Snackbar.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


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
    .line 534
    iput-object p1, p0, Landroid/support/design/widget/Snackbar$8;->this$0:Landroid/support/design/widget/Snackbar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 537
    iget-object v0, p0, Landroid/support/design/widget/Snackbar$8;->this$0:Landroid/support/design/widget/Snackbar;

    # getter for: Landroid/support/design/widget/Snackbar;->mCallback:Landroid/support/design/widget/Snackbar$Callback;
    invoke-static {v0}, Landroid/support/design/widget/Snackbar;->access$600(Landroid/support/design/widget/Snackbar;)Landroid/support/design/widget/Snackbar$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 538
    iget-object v0, p0, Landroid/support/design/widget/Snackbar$8;->this$0:Landroid/support/design/widget/Snackbar;

    # getter for: Landroid/support/design/widget/Snackbar;->mCallback:Landroid/support/design/widget/Snackbar$Callback;
    invoke-static {v0}, Landroid/support/design/widget/Snackbar;->access$600(Landroid/support/design/widget/Snackbar;)Landroid/support/design/widget/Snackbar$Callback;

    move-result-object v0

    iget-object v1, p0, Landroid/support/design/widget/Snackbar$8;->this$0:Landroid/support/design/widget/Snackbar;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/Snackbar$Callback;->onShown(Landroid/support/design/widget/Snackbar;)V

    .line 540
    :cond_0
    invoke-static {}, Landroid/support/design/widget/SnackbarManager;->getInstance()Landroid/support/design/widget/SnackbarManager;

    move-result-object v0

    iget-object v1, p0, Landroid/support/design/widget/Snackbar$8;->this$0:Landroid/support/design/widget/Snackbar;

    # getter for: Landroid/support/design/widget/Snackbar;->mManagerCallback:Landroid/support/design/widget/SnackbarManager$Callback;
    invoke-static {v1}, Landroid/support/design/widget/Snackbar;->access$200(Landroid/support/design/widget/Snackbar;)Landroid/support/design/widget/SnackbarManager$Callback;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/design/widget/SnackbarManager;->onShown(Landroid/support/design/widget/SnackbarManager$Callback;)V

    .line 541
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 547
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 544
    return-void
.end method
