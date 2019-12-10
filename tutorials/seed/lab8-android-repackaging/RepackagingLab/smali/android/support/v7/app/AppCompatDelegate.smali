.class public abstract Landroid/support/v7/app/AppCompatDelegate;
.super Ljava/lang/Object;
.source "AppCompatDelegate.java"


# static fields
.field public static final FEATURE_ACTION_MODE_OVERLAY:I = 0xa

.field public static final FEATURE_SUPPORT_ACTION_BAR:I = 0x6c

.field public static final FEATURE_SUPPORT_ACTION_BAR_OVERLAY:I = 0x6d

.field static final TAG:Ljava/lang/String; = "AppCompatDelegate"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Landroid/app/Activity;Landroid/support/v7/app/AppCompatCallback;)Landroid/support/v7/app/AppCompatDelegate;
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "callback"    # Landroid/support/v7/app/AppCompatCallback;

    .prologue
    .line 117
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {p0, v0, p1}, Landroid/support/v7/app/AppCompatDelegate;->create(Landroid/content/Context;Landroid/view/Window;Landroid/support/v7/app/AppCompatCallback;)Landroid/support/v7/app/AppCompatDelegate;

    move-result-object v0

    return-object v0
.end method

.method public static create(Landroid/app/Dialog;Landroid/support/v7/app/AppCompatCallback;)Landroid/support/v7/app/AppCompatDelegate;
    .locals 2
    .param p0, "dialog"    # Landroid/app/Dialog;
    .param p1, "callback"    # Landroid/support/v7/app/AppCompatCallback;

    .prologue
    .line 126
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-static {v0, v1, p1}, Landroid/support/v7/app/AppCompatDelegate;->create(Landroid/content/Context;Landroid/view/Window;Landroid/support/v7/app/AppCompatCallback;)Landroid/support/v7/app/AppCompatDelegate;

    move-result-object v0

    return-object v0
.end method

.method private static create(Landroid/content/Context;Landroid/view/Window;Landroid/support/v7/app/AppCompatCallback;)Landroid/support/v7/app/AppCompatDelegate;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "window"    # Landroid/view/Window;
    .param p2, "callback"    # Landroid/support/v7/app/AppCompatCallback;

    .prologue
    .line 131
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 132
    .local v0, "sdk":I
    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 133
    new-instance v1, Landroid/support/v7/app/AppCompatDelegateImplV23;

    invoke-direct {v1, p0, p1, p2}, Landroid/support/v7/app/AppCompatDelegateImplV23;-><init>(Landroid/content/Context;Landroid/view/Window;Landroid/support/v7/app/AppCompatCallback;)V

    .line 139
    :goto_0
    return-object v1

    .line 134
    :cond_0
    const/16 v1, 0xe

    if-lt v0, v1, :cond_1

    .line 135
    new-instance v1, Landroid/support/v7/app/AppCompatDelegateImplV14;

    invoke-direct {v1, p0, p1, p2}, Landroid/support/v7/app/AppCompatDelegateImplV14;-><init>(Landroid/content/Context;Landroid/view/Window;Landroid/support/v7/app/AppCompatCallback;)V

    goto :goto_0

    .line 136
    :cond_1
    const/16 v1, 0xb

    if-lt v0, v1, :cond_2

    .line 137
    new-instance v1, Landroid/support/v7/app/AppCompatDelegateImplV11;

    invoke-direct {v1, p0, p1, p2}, Landroid/support/v7/app/AppCompatDelegateImplV11;-><init>(Landroid/content/Context;Landroid/view/Window;Landroid/support/v7/app/AppCompatCallback;)V

    goto :goto_0

    .line 139
    :cond_2
    new-instance v1, Landroid/support/v7/app/AppCompatDelegateImplV7;

    invoke-direct {v1, p0, p1, p2}, Landroid/support/v7/app/AppCompatDelegateImplV7;-><init>(Landroid/content/Context;Landroid/view/Window;Landroid/support/v7/app/AppCompatCallback;)V

    goto :goto_0
.end method


# virtual methods
.method public abstract addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
.end method

.method public abstract createView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .param p3    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract getDrawerToggleDelegate()Landroid/support/v7/app/ActionBarDrawerToggle$Delegate;
.end method

.method public abstract getMenuInflater()Landroid/view/MenuInflater;
.end method

.method public abstract getSupportActionBar()Landroid/support/v7/app/ActionBar;
.end method

.method public abstract hasWindowFeature(I)Z
.end method

.method public abstract installViewFactory()V
.end method

.method public abstract invalidateOptionsMenu()V
.end method

.method public abstract isHandleNativeActionModesEnabled()Z
.end method

.method public abstract onConfigurationChanged(Landroid/content/res/Configuration;)V
.end method

.method public abstract onCreate(Landroid/os/Bundle;)V
.end method

.method public abstract onDestroy()V
.end method

.method public abstract onPostCreate(Landroid/os/Bundle;)V
.end method

.method public abstract onPostResume()V
.end method

.method public abstract onStop()V
.end method

.method public abstract requestWindowFeature(I)Z
.end method

.method public abstract setContentView(I)V
    .param p1    # I
        .annotation build Landroid/support/annotation/LayoutRes;
        .end annotation
    .end param
.end method

.method public abstract setContentView(Landroid/view/View;)V
.end method

.method public abstract setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
.end method

.method public abstract setHandleNativeActionModesEnabled(Z)V
.end method

.method public abstract setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V
.end method

.method public abstract setTitle(Ljava/lang/CharSequence;)V
.end method

.method public abstract startSupportActionMode(Landroid/support/v7/view/ActionMode$Callback;)Landroid/support/v7/view/ActionMode;
.end method
