.class Landroid/support/v7/app/AlertController$AlertParams$4;
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

.field final synthetic val$listView:Landroid/widget/ListView;


# direct methods
.method constructor <init>(Landroid/support/v7/app/AlertController$AlertParams;Landroid/widget/ListView;Landroid/support/v7/app/AlertController;)V
    .locals 0

    .prologue
    .line 963
    iput-object p1, p0, Landroid/support/v7/app/AlertController$AlertParams$4;->this$0:Landroid/support/v7/app/AlertController$AlertParams;

    iput-object p2, p0, Landroid/support/v7/app/AlertController$AlertParams$4;->val$listView:Landroid/widget/ListView;

    iput-object p3, p0, Landroid/support/v7/app/AlertController$AlertParams$4;->val$dialog:Landroid/support/v7/app/AlertController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
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
    .line 966
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Landroid/support/v7/app/AlertController$AlertParams$4;->this$0:Landroid/support/v7/app/AlertController$AlertParams;

    iget-object v0, v0, Landroid/support/v7/app/AlertController$AlertParams;->mCheckedItems:[Z

    if-eqz v0, :cond_0

    .line 967
    iget-object v0, p0, Landroid/support/v7/app/AlertController$AlertParams$4;->this$0:Landroid/support/v7/app/AlertController$AlertParams;

    iget-object v0, v0, Landroid/support/v7/app/AlertController$AlertParams;->mCheckedItems:[Z

    iget-object v1, p0, Landroid/support/v7/app/AlertController$AlertParams$4;->val$listView:Landroid/widget/ListView;

    invoke-virtual {v1, p3}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v1

    aput-boolean v1, v0, p3

    .line 969
    :cond_0
    iget-object v0, p0, Landroid/support/v7/app/AlertController$AlertParams$4;->this$0:Landroid/support/v7/app/AlertController$AlertParams;

    iget-object v0, v0, Landroid/support/v7/app/AlertController$AlertParams;->mOnCheckboxClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    iget-object v1, p0, Landroid/support/v7/app/AlertController$AlertParams$4;->val$dialog:Landroid/support/v7/app/AlertController;

    # getter for: Landroid/support/v7/app/AlertController;->mDialog:Landroid/support/v7/app/AppCompatDialog;
    invoke-static {v1}, Landroid/support/v7/app/AlertController;->access$600(Landroid/support/v7/app/AlertController;)Landroid/support/v7/app/AppCompatDialog;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v7/app/AlertController$AlertParams$4;->val$listView:Landroid/widget/ListView;

    invoke-virtual {v2, p3}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v2

    invoke-interface {v0, v1, p3, v2}, Landroid/content/DialogInterface$OnMultiChoiceClickListener;->onClick(Landroid/content/DialogInterface;IZ)V

    .line 971
    return-void
.end method
