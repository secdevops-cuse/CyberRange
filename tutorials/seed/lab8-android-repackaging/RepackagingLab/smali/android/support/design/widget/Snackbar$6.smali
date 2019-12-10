.class Landroid/support/design/widget/Snackbar$6;
.super Ljava/lang/Object;
.source "Snackbar.java"

# interfaces
.implements Landroid/support/design/widget/Snackbar$SnackbarLayout$OnLayoutChangeListener;


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
    .line 497
    iput-object p1, p0, Landroid/support/design/widget/Snackbar$6;->this$0:Landroid/support/design/widget/Snackbar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIII)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 500
    iget-object v0, p0, Landroid/support/design/widget/Snackbar$6;->this$0:Landroid/support/design/widget/Snackbar;

    # invokes: Landroid/support/design/widget/Snackbar;->animateViewIn()V
    invoke-static {v0}, Landroid/support/design/widget/Snackbar;->access$400(Landroid/support/design/widget/Snackbar;)V

    .line 501
    iget-object v0, p0, Landroid/support/design/widget/Snackbar$6;->this$0:Landroid/support/design/widget/Snackbar;

    # getter for: Landroid/support/design/widget/Snackbar;->mView:Landroid/support/design/widget/Snackbar$SnackbarLayout;
    invoke-static {v0}, Landroid/support/design/widget/Snackbar;->access$500(Landroid/support/design/widget/Snackbar;)Landroid/support/design/widget/Snackbar$SnackbarLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/design/widget/Snackbar$SnackbarLayout;->setOnLayoutChangeListener(Landroid/support/design/widget/Snackbar$SnackbarLayout$OnLayoutChangeListener;)V

    .line 502
    return-void
.end method
