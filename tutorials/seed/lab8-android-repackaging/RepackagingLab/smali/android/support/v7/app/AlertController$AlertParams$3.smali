.class Landroid/support/v7/app/AlertController$AlertParams$3;
.super Ljava/lang/Object;
.source "AlertController.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v7/app/AlertController$AlertParams;->createListView(Landroid/support/v7/app/AlertController;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v7/app/AlertController$AlertParams;

.field final synthetic val$dialog:Landroid/support/v7/app/AlertController;


# direct methods
.method constructor <init>(Landroid/support/v7/app/AlertController$AlertParams;Landroid/support/v7/app/AlertController;)V
    .locals 0

    .prologue
    .line 953
    iput-object p1, p0, Landroid/support/v7/app/AlertController$AlertParams$3;->this$0:Landroid/support/v7/app/AlertController$AlertParams;

    iput-object p2, p0, Landroid/support/v7/app/AlertController$AlertParams$3;->val$dialog:Landroid/support/v7/app/AlertController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 956
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Landroid/support/v7/app/AlertController$AlertParams$3;->this$0:Landroid/support/v7/app/AlertController$AlertParams;

    iget-object v0, v0, Landroid/support/v7/app/AlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    iget-object v1, p0, Landroid/support/v7/app/AlertController$AlertParams$3;->val$dialog:Landroid/support/v7/app/AlertController;

    # getter for: Landroid/support/v7/app/AlertController;->mDialog:Landroid/support/v7/app/AppCompatDialog;
    invoke-static {v1}, Landroid/support/v7/app/AlertController;->access$600(Landroid/support/v7/app/AlertController;)Landroid/support/v7/app/AppCompatDialog;

    move-result-object v1

    invoke-interface {v0, v1, p3}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    .line 957
    iget-object v0, p0, Landroid/support/v7/app/AlertController$AlertParams$3;->this$0:Landroid/support/v7/app/AlertController$AlertParams;

    iget-boolean v0, v0, Landroid/support/v7/app/AlertController$AlertParams;->mIsSingleChoice:Z

    if-nez v0, :cond_0

    .line 958
    iget-object v0, p0, Landroid/support/v7/app/AlertController$AlertParams$3;->val$dialog:Landroid/support/v7/app/AlertController;

    # getter for: Landroid/support/v7/app/AlertController;->mDialog:Landroid/support/v7/app/AppCompatDialog;
    invoke-static {v0}, Landroid/support/v7/app/AlertController;->access$600(Landroid/support/v7/app/AlertController;)Landroid/support/v7/app/AppCompatDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/AppCompatDialog;->dismiss()V

    .line 960
    :cond_0
    return-void
.end method
