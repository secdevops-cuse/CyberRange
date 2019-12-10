.class Landroid/support/v7/widget/ShareActionProvider$ShareActivityChooserModelPolicy;
.super Ljava/lang/Object;
.source "ShareActionProvider.java"

# interfaces
.implements Landroid/support/v7/widget/ActivityChooserModel$OnChooseActivityListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/ShareActionProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ShareActivityChooserModelPolicy"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v7/widget/ShareActionProvider;


# direct methods
.method private constructor <init>(Landroid/support/v7/widget/ShareActionProvider;)V
    .locals 0

    .prologue
    .line 350
    iput-object p1, p0, Landroid/support/v7/widget/ShareActionProvider$ShareActivityChooserModelPolicy;->this$0:Landroid/support/v7/widget/ShareActionProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v7/widget/ShareActionProvider;Landroid/support/v7/widget/ShareActionProvider$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/support/v7/widget/ShareActionProvider;
    .param p2, "x1"    # Landroid/support/v7/widget/ShareActionProvider$1;

    .prologue
    .line 350
    invoke-direct {p0, p1}, Landroid/support/v7/widget/ShareActionProvider$ShareActivityChooserModelPolicy;-><init>(Landroid/support/v7/widget/ShareActionProvider;)V

    return-void
.end method


# virtual methods
.method public onChooseActivity(Landroid/support/v7/widget/ActivityChooserModel;Landroid/content/Intent;)Z
    .locals 2
    .param p1, "host"    # Landroid/support/v7/widget/ActivityChooserModel;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 353
    iget-object v0, p0, Landroid/support/v7/widget/ShareActionProvider$ShareActivityChooserModelPolicy;->this$0:Landroid/support/v7/widget/ShareActionProvider;

    # getter for: Landroid/support/v7/widget/ShareActionProvider;->mOnShareTargetSelectedListener:Landroid/support/v7/widget/ShareActionProvider$OnShareTargetSelectedListener;
    invoke-static {v0}, Landroid/support/v7/widget/ShareActionProvider;->access$500(Landroid/support/v7/widget/ShareActionProvider;)Landroid/support/v7/widget/ShareActionProvider$OnShareTargetSelectedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 354
    iget-object v0, p0, Landroid/support/v7/widget/ShareActionProvider$ShareActivityChooserModelPolicy;->this$0:Landroid/support/v7/widget/ShareActionProvider;

    # getter for: Landroid/support/v7/widget/ShareActionProvider;->mOnShareTargetSelectedListener:Landroid/support/v7/widget/ShareActionProvider$OnShareTargetSelectedListener;
    invoke-static {v0}, Landroid/support/v7/widget/ShareActionProvider;->access$500(Landroid/support/v7/widget/ShareActionProvider;)Landroid/support/v7/widget/ShareActionProvider$OnShareTargetSelectedListener;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/widget/ShareActionProvider$ShareActivityChooserModelPolicy;->this$0:Landroid/support/v7/widget/ShareActionProvider;

    invoke-interface {v0, v1, p2}, Landroid/support/v7/widget/ShareActionProvider$OnShareTargetSelectedListener;->onShareTargetSelected(Landroid/support/v7/widget/ShareActionProvider;Landroid/content/Intent;)Z

    .line 357
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
