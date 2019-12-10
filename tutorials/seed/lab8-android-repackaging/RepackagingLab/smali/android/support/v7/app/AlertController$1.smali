.class Landroid/support/v7/app/AlertController$1;
.super Ljava/lang/Object;
.source "AlertController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/app/AlertController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v7/app/AlertController;


# direct methods
.method constructor <init>(Landroid/support/v7/app/AlertController;)V
    .locals 0

    .prologue
    .line 116
    iput-object p1, p0, Landroid/support/v7/app/AlertController$1;->this$0:Landroid/support/v7/app/AlertController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 120
    iget-object v1, p0, Landroid/support/v7/app/AlertController$1;->this$0:Landroid/support/v7/app/AlertController;

    # getter for: Landroid/support/v7/app/AlertController;->mButtonPositive:Landroid/widget/Button;
    invoke-static {v1}, Landroid/support/v7/app/AlertController;->access$000(Landroid/support/v7/app/AlertController;)Landroid/widget/Button;

    move-result-object v1

    if-ne p1, v1, :cond_1

    iget-object v1, p0, Landroid/support/v7/app/AlertController$1;->this$0:Landroid/support/v7/app/AlertController;

    # getter for: Landroid/support/v7/app/AlertController;->mButtonPositiveMessage:Landroid/os/Message;
    invoke-static {v1}, Landroid/support/v7/app/AlertController;->access$100(Landroid/support/v7/app/AlertController;)Landroid/os/Message;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 121
    iget-object v1, p0, Landroid/support/v7/app/AlertController$1;->this$0:Landroid/support/v7/app/AlertController;

    # getter for: Landroid/support/v7/app/AlertController;->mButtonPositiveMessage:Landroid/os/Message;
    invoke-static {v1}, Landroid/support/v7/app/AlertController;->access$100(Landroid/support/v7/app/AlertController;)Landroid/os/Message;

    move-result-object v1

    invoke-static {v1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v0

    .line 130
    .local v0, "m":Landroid/os/Message;
    :goto_0
    if-eqz v0, :cond_0

    .line 131
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 135
    :cond_0
    iget-object v1, p0, Landroid/support/v7/app/AlertController$1;->this$0:Landroid/support/v7/app/AlertController;

    # getter for: Landroid/support/v7/app/AlertController;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Landroid/support/v7/app/AlertController;->access$700(Landroid/support/v7/app/AlertController;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Landroid/support/v7/app/AlertController$1;->this$0:Landroid/support/v7/app/AlertController;

    # getter for: Landroid/support/v7/app/AlertController;->mDialog:Landroid/support/v7/app/AppCompatDialog;
    invoke-static {v3}, Landroid/support/v7/app/AlertController;->access$600(Landroid/support/v7/app/AlertController;)Landroid/support/v7/app/AppCompatDialog;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 137
    return-void

    .line 122
    .end local v0    # "m":Landroid/os/Message;
    :cond_1
    iget-object v1, p0, Landroid/support/v7/app/AlertController$1;->this$0:Landroid/support/v7/app/AlertController;

    # getter for: Landroid/support/v7/app/AlertController;->mButtonNegative:Landroid/widget/Button;
    invoke-static {v1}, Landroid/support/v7/app/AlertController;->access$200(Landroid/support/v7/app/AlertController;)Landroid/widget/Button;

    move-result-object v1

    if-ne p1, v1, :cond_2

    iget-object v1, p0, Landroid/support/v7/app/AlertController$1;->this$0:Landroid/support/v7/app/AlertController;

    # getter for: Landroid/support/v7/app/AlertController;->mButtonNegativeMessage:Landroid/os/Message;
    invoke-static {v1}, Landroid/support/v7/app/AlertController;->access$300(Landroid/support/v7/app/AlertController;)Landroid/os/Message;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 123
    iget-object v1, p0, Landroid/support/v7/app/AlertController$1;->this$0:Landroid/support/v7/app/AlertController;

    # getter for: Landroid/support/v7/app/AlertController;->mButtonNegativeMessage:Landroid/os/Message;
    invoke-static {v1}, Landroid/support/v7/app/AlertController;->access$300(Landroid/support/v7/app/AlertController;)Landroid/os/Message;

    move-result-object v1

    invoke-static {v1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v0

    .restart local v0    # "m":Landroid/os/Message;
    goto :goto_0

    .line 124
    .end local v0    # "m":Landroid/os/Message;
    :cond_2
    iget-object v1, p0, Landroid/support/v7/app/AlertController$1;->this$0:Landroid/support/v7/app/AlertController;

    # getter for: Landroid/support/v7/app/AlertController;->mButtonNeutral:Landroid/widget/Button;
    invoke-static {v1}, Landroid/support/v7/app/AlertController;->access$400(Landroid/support/v7/app/AlertController;)Landroid/widget/Button;

    move-result-object v1

    if-ne p1, v1, :cond_3

    iget-object v1, p0, Landroid/support/v7/app/AlertController$1;->this$0:Landroid/support/v7/app/AlertController;

    # getter for: Landroid/support/v7/app/AlertController;->mButtonNeutralMessage:Landroid/os/Message;
    invoke-static {v1}, Landroid/support/v7/app/AlertController;->access$500(Landroid/support/v7/app/AlertController;)Landroid/os/Message;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 125
    iget-object v1, p0, Landroid/support/v7/app/AlertController$1;->this$0:Landroid/support/v7/app/AlertController;

    # getter for: Landroid/support/v7/app/AlertController;->mButtonNeutralMessage:Landroid/os/Message;
    invoke-static {v1}, Landroid/support/v7/app/AlertController;->access$500(Landroid/support/v7/app/AlertController;)Landroid/os/Message;

    move-result-object v1

    invoke-static {v1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v0

    .restart local v0    # "m":Landroid/os/Message;
    goto :goto_0

    .line 127
    .end local v0    # "m":Landroid/os/Message;
    :cond_3
    const/4 v0, 0x0

    .restart local v0    # "m":Landroid/os/Message;
    goto :goto_0
.end method
