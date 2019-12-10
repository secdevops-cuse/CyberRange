.class Landroid/support/v7/widget/ActivityChooserView$3;
.super Landroid/support/v7/widget/ListPopupWindow$ForwardingListener;
.source "ActivityChooserView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v7/widget/ActivityChooserView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v7/widget/ActivityChooserView;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/ActivityChooserView;Landroid/view/View;)V
    .locals 0
    .param p2, "x0"    # Landroid/view/View;

    .prologue
    .line 240
    iput-object p1, p0, Landroid/support/v7/widget/ActivityChooserView$3;->this$0:Landroid/support/v7/widget/ActivityChooserView;

    invoke-direct {p0, p2}, Landroid/support/v7/widget/ListPopupWindow$ForwardingListener;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public getPopup()Landroid/support/v7/widget/ListPopupWindow;
    .locals 1

    .prologue
    .line 243
    iget-object v0, p0, Landroid/support/v7/widget/ActivityChooserView$3;->this$0:Landroid/support/v7/widget/ActivityChooserView;

    # invokes: Landroid/support/v7/widget/ActivityChooserView;->getListPopupWindow()Landroid/support/v7/widget/ListPopupWindow;
    invoke-static {v0}, Landroid/support/v7/widget/ActivityChooserView;->access$100(Landroid/support/v7/widget/ActivityChooserView;)Landroid/support/v7/widget/ListPopupWindow;

    move-result-object v0

    return-object v0
.end method

.method protected onForwardingStarted()Z
    .locals 1

    .prologue
    .line 248
    iget-object v0, p0, Landroid/support/v7/widget/ActivityChooserView$3;->this$0:Landroid/support/v7/widget/ActivityChooserView;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActivityChooserView;->showPopup()Z

    .line 249
    const/4 v0, 0x1

    return v0
.end method

.method protected onForwardingStopped()Z
    .locals 1

    .prologue
    .line 254
    iget-object v0, p0, Landroid/support/v7/widget/ActivityChooserView$3;->this$0:Landroid/support/v7/widget/ActivityChooserView;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActivityChooserView;->dismissPopup()Z

    .line 255
    const/4 v0, 0x1

    return v0
.end method
