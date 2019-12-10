.class Landroid/support/design/widget/TextInputLayout$3;
.super Landroid/support/v4/view/ViewPropertyAnimatorListenerAdapter;
.source "TextInputLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/design/widget/TextInputLayout;->setError(Ljava/lang/CharSequence;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/design/widget/TextInputLayout;


# direct methods
.method constructor <init>(Landroid/support/design/widget/TextInputLayout;)V
    .locals 0

    .prologue
    .line 453
    iput-object p1, p0, Landroid/support/design/widget/TextInputLayout$3;->this$0:Landroid/support/design/widget/TextInputLayout;

    invoke-direct {p0}, Landroid/support/v4/view/ViewPropertyAnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 456
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 458
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout$3;->this$0:Landroid/support/design/widget/TextInputLayout;

    const/4 v1, 0x1

    # invokes: Landroid/support/design/widget/TextInputLayout;->updateLabelVisibility(Z)V
    invoke-static {v0, v1}, Landroid/support/design/widget/TextInputLayout;->access$100(Landroid/support/design/widget/TextInputLayout;Z)V

    .line 459
    return-void
.end method
