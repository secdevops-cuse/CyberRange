.class Landroid/support/v7/app/AppCompatDelegateImplV7$ActionModeCallbackWrapperV7$1;
.super Landroid/support/v4/view/ViewPropertyAnimatorListenerAdapter;
.source "AppCompatDelegateImplV7.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v7/app/AppCompatDelegateImplV7$ActionModeCallbackWrapperV7;->onDestroyActionMode(Landroid/support/v7/view/ActionMode;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/support/v7/app/AppCompatDelegateImplV7$ActionModeCallbackWrapperV7;


# direct methods
.method constructor <init>(Landroid/support/v7/app/AppCompatDelegateImplV7$ActionModeCallbackWrapperV7;)V
    .locals 0

    .prologue
    .line 1715
    iput-object p1, p0, Landroid/support/v7/app/AppCompatDelegateImplV7$ActionModeCallbackWrapperV7$1;->this$1:Landroid/support/v7/app/AppCompatDelegateImplV7$ActionModeCallbackWrapperV7;

    invoke-direct {p0}, Landroid/support/v4/view/ViewPropertyAnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 1718
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7$ActionModeCallbackWrapperV7$1;->this$1:Landroid/support/v7/app/AppCompatDelegateImplV7$ActionModeCallbackWrapperV7;

    iget-object v0, v0, Landroid/support/v7/app/AppCompatDelegateImplV7$ActionModeCallbackWrapperV7;->this$0:Landroid/support/v7/app/AppCompatDelegateImplV7;

    iget-object v0, v0, Landroid/support/v7/app/AppCompatDelegateImplV7;->mActionModeView:Landroid/support/v7/widget/ActionBarContextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ActionBarContextView;->setVisibility(I)V

    .line 1719
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7$ActionModeCallbackWrapperV7$1;->this$1:Landroid/support/v7/app/AppCompatDelegateImplV7$ActionModeCallbackWrapperV7;

    iget-object v0, v0, Landroid/support/v7/app/AppCompatDelegateImplV7$ActionModeCallbackWrapperV7;->this$0:Landroid/support/v7/app/AppCompatDelegateImplV7;

    iget-object v0, v0, Landroid/support/v7/app/AppCompatDelegateImplV7;->mActionModePopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_1

    .line 1720
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7$ActionModeCallbackWrapperV7$1;->this$1:Landroid/support/v7/app/AppCompatDelegateImplV7$ActionModeCallbackWrapperV7;

    iget-object v0, v0, Landroid/support/v7/app/AppCompatDelegateImplV7$ActionModeCallbackWrapperV7;->this$0:Landroid/support/v7/app/AppCompatDelegateImplV7;

    iget-object v0, v0, Landroid/support/v7/app/AppCompatDelegateImplV7;->mActionModePopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 1724
    :cond_0
    :goto_0
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7$ActionModeCallbackWrapperV7$1;->this$1:Landroid/support/v7/app/AppCompatDelegateImplV7$ActionModeCallbackWrapperV7;

    iget-object v0, v0, Landroid/support/v7/app/AppCompatDelegateImplV7$ActionModeCallbackWrapperV7;->this$0:Landroid/support/v7/app/AppCompatDelegateImplV7;

    iget-object v0, v0, Landroid/support/v7/app/AppCompatDelegateImplV7;->mActionModeView:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionBarContextView;->removeAllViews()V

    .line 1725
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7$ActionModeCallbackWrapperV7$1;->this$1:Landroid/support/v7/app/AppCompatDelegateImplV7$ActionModeCallbackWrapperV7;

    iget-object v0, v0, Landroid/support/v7/app/AppCompatDelegateImplV7$ActionModeCallbackWrapperV7;->this$0:Landroid/support/v7/app/AppCompatDelegateImplV7;

    iget-object v0, v0, Landroid/support/v7/app/AppCompatDelegateImplV7;->mFadeAnim:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    invoke-virtual {v0, v2}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setListener(Landroid/support/v4/view/ViewPropertyAnimatorListener;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 1726
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7$ActionModeCallbackWrapperV7$1;->this$1:Landroid/support/v7/app/AppCompatDelegateImplV7$ActionModeCallbackWrapperV7;

    iget-object v0, v0, Landroid/support/v7/app/AppCompatDelegateImplV7$ActionModeCallbackWrapperV7;->this$0:Landroid/support/v7/app/AppCompatDelegateImplV7;

    iput-object v2, v0, Landroid/support/v7/app/AppCompatDelegateImplV7;->mFadeAnim:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 1727
    return-void

    .line 1721
    :cond_1
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7$ActionModeCallbackWrapperV7$1;->this$1:Landroid/support/v7/app/AppCompatDelegateImplV7$ActionModeCallbackWrapperV7;

    iget-object v0, v0, Landroid/support/v7/app/AppCompatDelegateImplV7$ActionModeCallbackWrapperV7;->this$0:Landroid/support/v7/app/AppCompatDelegateImplV7;

    iget-object v0, v0, Landroid/support/v7/app/AppCompatDelegateImplV7;->mActionModeView:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionBarContextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1722
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7$ActionModeCallbackWrapperV7$1;->this$1:Landroid/support/v7/app/AppCompatDelegateImplV7$ActionModeCallbackWrapperV7;

    iget-object v0, v0, Landroid/support/v7/app/AppCompatDelegateImplV7$ActionModeCallbackWrapperV7;->this$0:Landroid/support/v7/app/AppCompatDelegateImplV7;

    iget-object v0, v0, Landroid/support/v7/app/AppCompatDelegateImplV7;->mActionModeView:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionBarContextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->requestApplyInsets(Landroid/view/View;)V

    goto :goto_0
.end method
