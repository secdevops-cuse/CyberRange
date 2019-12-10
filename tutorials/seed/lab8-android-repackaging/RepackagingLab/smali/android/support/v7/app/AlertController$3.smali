.class Landroid/support/v7/app/AlertController$3;
.super Ljava/lang/Object;
.source "AlertController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v7/app/AlertController;->setScrollIndicators(Landroid/view/ViewGroup;Landroid/view/View;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v7/app/AlertController;

.field final synthetic val$bottom:Landroid/view/View;

.field final synthetic val$top:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/support/v7/app/AlertController;Landroid/view/View;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 553
    iput-object p1, p0, Landroid/support/v7/app/AlertController$3;->this$0:Landroid/support/v7/app/AlertController;

    iput-object p2, p0, Landroid/support/v7/app/AlertController$3;->val$top:Landroid/view/View;

    iput-object p3, p0, Landroid/support/v7/app/AlertController$3;->val$bottom:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 556
    iget-object v0, p0, Landroid/support/v7/app/AlertController$3;->this$0:Landroid/support/v7/app/AlertController;

    # getter for: Landroid/support/v7/app/AlertController;->mScrollView:Landroid/support/v4/widget/NestedScrollView;
    invoke-static {v0}, Landroid/support/v7/app/AlertController;->access$900(Landroid/support/v7/app/AlertController;)Landroid/support/v4/widget/NestedScrollView;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/app/AlertController$3;->val$top:Landroid/view/View;

    iget-object v2, p0, Landroid/support/v7/app/AlertController$3;->val$bottom:Landroid/view/View;

    # invokes: Landroid/support/v7/app/AlertController;->manageScrollIndicators(Landroid/view/View;Landroid/view/View;Landroid/view/View;)V
    invoke-static {v0, v1, v2}, Landroid/support/v7/app/AlertController;->access$800(Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    .line 557
    return-void
.end method
