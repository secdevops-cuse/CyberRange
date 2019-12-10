.class Landroid/support/v7/app/AppCompatDelegateImplV23$AppCompatWindowCallbackV23;
.super Landroid/support/v7/app/AppCompatDelegateImplV14$AppCompatWindowCallbackV14;
.source "AppCompatDelegateImplV23.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/app/AppCompatDelegateImplV23;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AppCompatWindowCallbackV23"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v7/app/AppCompatDelegateImplV23;


# direct methods
.method constructor <init>(Landroid/support/v7/app/AppCompatDelegateImplV23;Landroid/view/Window$Callback;)V
    .locals 0
    .param p2, "callback"    # Landroid/view/Window$Callback;

    .prologue
    .line 37
    iput-object p1, p0, Landroid/support/v7/app/AppCompatDelegateImplV23$AppCompatWindowCallbackV23;->this$0:Landroid/support/v7/app/AppCompatDelegateImplV23;

    .line 38
    invoke-direct {p0, p1, p2}, Landroid/support/v7/app/AppCompatDelegateImplV14$AppCompatWindowCallbackV14;-><init>(Landroid/support/v7/app/AppCompatDelegateImplV14;Landroid/view/Window$Callback;)V

    .line 39
    return-void
.end method


# virtual methods
.method public onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 1
    .param p1, "callback"    # Landroid/view/ActionMode$Callback;

    .prologue
    .line 57
    const/4 v0, 0x0

    return-object v0
.end method

.method public onWindowStartingActionMode(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;
    .locals 1
    .param p1, "callback"    # Landroid/view/ActionMode$Callback;
    .param p2, "type"    # I

    .prologue
    .line 43
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV23$AppCompatWindowCallbackV23;->this$0:Landroid/support/v7/app/AppCompatDelegateImplV23;

    invoke-virtual {v0}, Landroid/support/v7/app/AppCompatDelegateImplV23;->isHandleNativeActionModesEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 44
    packed-switch p2, :pswitch_data_0

    .line 51
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/support/v7/app/AppCompatDelegateImplV14$AppCompatWindowCallbackV14;->onWindowStartingActionMode(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;

    move-result-object v0

    :goto_0
    return-object v0

    .line 47
    :pswitch_0
    invoke-virtual {p0, p1}, Landroid/support/v7/app/AppCompatDelegateImplV23$AppCompatWindowCallbackV23;->startAsSupportActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    goto :goto_0

    .line 44
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
