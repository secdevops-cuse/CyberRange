.class Landroid/support/v7/widget/TintContextWrapper$TintResources;
.super Landroid/support/v7/widget/ResourcesWrapper;
.source "TintContextWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/TintContextWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TintResources"
.end annotation


# instance fields
.field private final mTintManager:Landroid/support/v7/widget/TintManager;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Landroid/support/v7/widget/TintManager;)V
    .locals 0
    .param p1, "resources"    # Landroid/content/res/Resources;
    .param p2, "tintManager"    # Landroid/support/v7/widget/TintManager;

    .prologue
    .line 59
    invoke-direct {p0, p1}, Landroid/support/v7/widget/ResourcesWrapper;-><init>(Landroid/content/res/Resources;)V

    .line 60
    iput-object p2, p0, Landroid/support/v7/widget/TintContextWrapper$TintResources;->mTintManager:Landroid/support/v7/widget/TintManager;

    .line 61
    return-void
.end method


# virtual methods
.method public getDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 70
    invoke-super {p0, p1}, Landroid/support/v7/widget/ResourcesWrapper;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 71
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 72
    iget-object v1, p0, Landroid/support/v7/widget/TintContextWrapper$TintResources;->mTintManager:Landroid/support/v7/widget/TintManager;

    invoke-virtual {v1, p1, v0}, Landroid/support/v7/widget/TintManager;->tintDrawableUsingColorFilter(ILandroid/graphics/drawable/Drawable;)Z

    .line 74
    :cond_0
    return-object v0
.end method
