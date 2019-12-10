.class Landroid/support/v7/widget/SearchView$2;
.super Ljava/lang/Object;
.source "SearchView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/SearchView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v7/widget/SearchView;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/SearchView;)V
    .locals 0

    .prologue
    .line 181
    iput-object p1, p0, Landroid/support/v7/widget/SearchView$2;->this$0:Landroid/support/v7/widget/SearchView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Landroid/support/v7/widget/SearchView$2;->this$0:Landroid/support/v7/widget/SearchView;

    # invokes: Landroid/support/v7/widget/SearchView;->updateFocusedState()V
    invoke-static {v0}, Landroid/support/v7/widget/SearchView;->access$000(Landroid/support/v7/widget/SearchView;)V

    .line 184
    return-void
.end method
