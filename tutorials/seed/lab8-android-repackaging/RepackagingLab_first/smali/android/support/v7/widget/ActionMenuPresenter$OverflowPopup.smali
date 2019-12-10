.class Landroid/support/v7/widget/ActionMenuPresenter$OverflowPopup;
.super Landroid/support/v7/view/menu/MenuPopupHelper;
.source "ActionMenuPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/ActionMenuPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OverflowPopup"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v7/widget/ActionMenuPresenter;


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/ActionMenuPresenter;Landroid/content/Context;Landroid/support/v7/view/menu/MenuBuilder;Landroid/view/View;Z)V
    .locals 6
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "menu"    # Landroid/support/v7/view/menu/MenuBuilder;
    .param p4, "anchorView"    # Landroid/view/View;
    .param p5, "overflowOnly"    # Z

    .prologue
    .line 696
    iput-object p1, p0, Landroid/support/v7/widget/ActionMenuPresenter$OverflowPopup;->this$0:Landroid/support/v7/widget/ActionMenuPresenter;

    .line 697
    sget v5, Landroid/support/v7/appcompat/R$attr;->actionOverflowMenuStyle:I

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move v4, p5

    invoke-direct/range {v0 .. v5}, Landroid/support/v7/view/menu/MenuPopupHelper;-><init>(Landroid/content/Context;Landroid/support/v7/view/menu/MenuBuilder;Landroid/view/View;ZI)V

    .line 698
    const v0, 0x800005

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/ActionMenuPresenter$OverflowPopup;->setGravity(I)V

    .line 699
    iget-object v0, p1, Landroid/support/v7/widget/ActionMenuPresenter;->mPopupPresenterCallback:Landroid/support/v7/widget/ActionMenuPresenter$PopupPresenterCallback;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/ActionMenuPresenter$OverflowPopup;->setCallback(Landroid/support/v7/view/menu/MenuPresenter$Callback;)V

    .line 700
    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 2

    .prologue
    .line 704
    invoke-super {p0}, Landroid/support/v7/view/menu/MenuPopupHelper;->onDismiss()V

    .line 705
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter$OverflowPopup;->this$0:Landroid/support/v7/widget/ActionMenuPresenter;

    # getter for: Landroid/support/v7/widget/ActionMenuPresenter;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;
    invoke-static {v0}, Landroid/support/v7/widget/ActionMenuPresenter;->access$400(Landroid/support/v7/widget/ActionMenuPresenter;)Landroid/support/v7/view/menu/MenuBuilder;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 706
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter$OverflowPopup;->this$0:Landroid/support/v7/widget/ActionMenuPresenter;

    # getter for: Landroid/support/v7/widget/ActionMenuPresenter;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;
    invoke-static {v0}, Landroid/support/v7/widget/ActionMenuPresenter;->access$500(Landroid/support/v7/widget/ActionMenuPresenter;)Landroid/support/v7/view/menu/MenuBuilder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/view/menu/MenuBuilder;->close()V

    .line 708
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter$OverflowPopup;->this$0:Landroid/support/v7/widget/ActionMenuPresenter;

    const/4 v1, 0x0

    # setter for: Landroid/support/v7/widget/ActionMenuPresenter;->mOverflowPopup:Landroid/support/v7/widget/ActionMenuPresenter$OverflowPopup;
    invoke-static {v0, v1}, Landroid/support/v7/widget/ActionMenuPresenter;->access$202(Landroid/support/v7/widget/ActionMenuPresenter;Landroid/support/v7/widget/ActionMenuPresenter$OverflowPopup;)Landroid/support/v7/widget/ActionMenuPresenter$OverflowPopup;

    .line 709
    return-void
.end method
