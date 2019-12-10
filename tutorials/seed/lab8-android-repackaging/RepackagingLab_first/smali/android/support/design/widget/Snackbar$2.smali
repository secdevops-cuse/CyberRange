.class Landroid/support/design/widget/Snackbar$2;
.super Ljava/lang/Object;
.source "Snackbar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/design/widget/Snackbar;->setAction(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)Landroid/support/design/widget/Snackbar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/design/widget/Snackbar;

.field final synthetic val$listener:Landroid/view/View$OnClickListener;


# direct methods
.method constructor <init>(Landroid/support/design/widget/Snackbar;Landroid/view/View$OnClickListener;)V
    .locals 0

    .prologue
    .line 292
    iput-object p1, p0, Landroid/support/design/widget/Snackbar$2;->this$0:Landroid/support/design/widget/Snackbar;

    iput-object p2, p0, Landroid/support/design/widget/Snackbar$2;->val$listener:Landroid/view/View$OnClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 295
    iget-object v0, p0, Landroid/support/design/widget/Snackbar$2;->val$listener:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 297
    iget-object v0, p0, Landroid/support/design/widget/Snackbar$2;->this$0:Landroid/support/design/widget/Snackbar;

    const/4 v1, 0x1

    # invokes: Landroid/support/design/widget/Snackbar;->dispatchDismiss(I)V
    invoke-static {v0, v1}, Landroid/support/design/widget/Snackbar;->access$000(Landroid/support/design/widget/Snackbar;I)V

    .line 298
    return-void
.end method
