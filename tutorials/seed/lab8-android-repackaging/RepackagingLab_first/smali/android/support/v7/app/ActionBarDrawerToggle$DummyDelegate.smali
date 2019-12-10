.class Landroid/support/v7/app/ActionBarDrawerToggle$DummyDelegate;
.super Ljava/lang/Object;
.source "ActionBarDrawerToggle.java"

# interfaces
.implements Landroid/support/v7/app/ActionBarDrawerToggle$Delegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/app/ActionBarDrawerToggle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DummyDelegate"
.end annotation


# instance fields
.field final mActivity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 659
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 660
    iput-object p1, p0, Landroid/support/v7/app/ActionBarDrawerToggle$DummyDelegate;->mActivity:Landroid/app/Activity;

    .line 661
    return-void
.end method


# virtual methods
.method public getActionBarThemedContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 680
    iget-object v0, p0, Landroid/support/v7/app/ActionBarDrawerToggle$DummyDelegate;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method public getThemeUpIndicator()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 675
    const/4 v0, 0x0

    return-object v0
.end method

.method public isNavigationVisible()Z
    .locals 1

    .prologue
    .line 685
    const/4 v0, 0x1

    return v0
.end method

.method public setActionBarDescription(I)V
    .locals 0
    .param p1, "contentDescRes"    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    .prologue
    .line 671
    return-void
.end method

.method public setActionBarUpIndicator(Landroid/graphics/drawable/Drawable;I)V
    .locals 0
    .param p1, "upDrawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "contentDescRes"    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    .prologue
    .line 666
    return-void
.end method
