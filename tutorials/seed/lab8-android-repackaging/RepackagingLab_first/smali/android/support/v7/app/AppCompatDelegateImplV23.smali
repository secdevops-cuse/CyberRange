.class Landroid/support/v7/app/AppCompatDelegateImplV23;
.super Landroid/support/v7/app/AppCompatDelegateImplV14;
.source "AppCompatDelegateImplV23.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/app/AppCompatDelegateImplV23$AppCompatWindowCallbackV23;
    }
.end annotation


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/view/Window;Landroid/support/v7/app/AppCompatCallback;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "window"    # Landroid/view/Window;
    .param p3, "callback"    # Landroid/support/v7/app/AppCompatCallback;

    .prologue
    .line 26
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/app/AppCompatDelegateImplV14;-><init>(Landroid/content/Context;Landroid/view/Window;Landroid/support/v7/app/AppCompatCallback;)V

    .line 27
    return-void
.end method


# virtual methods
.method wrapWindowCallback(Landroid/view/Window$Callback;)Landroid/view/Window$Callback;
    .locals 1
    .param p1, "callback"    # Landroid/view/Window$Callback;

    .prologue
    .line 33
    new-instance v0, Landroid/support/v7/app/AppCompatDelegateImplV23$AppCompatWindowCallbackV23;

    invoke-direct {v0, p0, p1}, Landroid/support/v7/app/AppCompatDelegateImplV23$AppCompatWindowCallbackV23;-><init>(Landroid/support/v7/app/AppCompatDelegateImplV23;Landroid/view/Window$Callback;)V

    return-object v0
.end method
