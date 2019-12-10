.class Landroid/support/design/widget/ViewGroupUtils;
.super Ljava/lang/Object;
.source "ViewGroupUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/design/widget/ViewGroupUtils$1;,
        Landroid/support/design/widget/ViewGroupUtils$ViewGroupUtilsImplHoneycomb;,
        Landroid/support/design/widget/ViewGroupUtils$ViewGroupUtilsImplBase;,
        Landroid/support/design/widget/ViewGroupUtils$ViewGroupUtilsImpl;
    }
.end annotation


# static fields
.field private static final IMPL:Landroid/support/design/widget/ViewGroupUtils$ViewGroupUtilsImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 47
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 48
    .local v0, "version":I
    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 49
    new-instance v1, Landroid/support/design/widget/ViewGroupUtils$ViewGroupUtilsImplHoneycomb;

    invoke-direct {v1, v2}, Landroid/support/design/widget/ViewGroupUtils$ViewGroupUtilsImplHoneycomb;-><init>(Landroid/support/design/widget/ViewGroupUtils$1;)V

    sput-object v1, Landroid/support/design/widget/ViewGroupUtils;->IMPL:Landroid/support/design/widget/ViewGroupUtils$ViewGroupUtilsImpl;

    .line 53
    :goto_0
    return-void

    .line 51
    :cond_0
    new-instance v1, Landroid/support/design/widget/ViewGroupUtils$ViewGroupUtilsImplBase;

    invoke-direct {v1, v2}, Landroid/support/design/widget/ViewGroupUtils$ViewGroupUtilsImplBase;-><init>(Landroid/support/design/widget/ViewGroupUtils$1;)V

    sput-object v1, Landroid/support/design/widget/ViewGroupUtils;->IMPL:Landroid/support/design/widget/ViewGroupUtils$ViewGroupUtilsImpl;

    goto :goto_0
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    return-void
.end method

.method static getDescendantRect(Landroid/view/ViewGroup;Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 3
    .param p0, "parent"    # Landroid/view/ViewGroup;
    .param p1, "descendant"    # Landroid/view/View;
    .param p2, "out"    # Landroid/graphics/Rect;

    .prologue
    const/4 v2, 0x0

    .line 76
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-virtual {p2, v2, v2, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 77
    invoke-static {p0, p1, p2}, Landroid/support/design/widget/ViewGroupUtils;->offsetDescendantRect(Landroid/view/ViewGroup;Landroid/view/View;Landroid/graphics/Rect;)V

    .line 78
    return-void
.end method

.method static offsetDescendantRect(Landroid/view/ViewGroup;Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 1
    .param p0, "parent"    # Landroid/view/ViewGroup;
    .param p1, "descendant"    # Landroid/view/View;
    .param p2, "rect"    # Landroid/graphics/Rect;

    .prologue
    .line 65
    sget-object v0, Landroid/support/design/widget/ViewGroupUtils;->IMPL:Landroid/support/design/widget/ViewGroupUtils$ViewGroupUtilsImpl;

    invoke-interface {v0, p0, p1, p2}, Landroid/support/design/widget/ViewGroupUtils$ViewGroupUtilsImpl;->offsetDescendantRect(Landroid/view/ViewGroup;Landroid/view/View;Landroid/graphics/Rect;)V

    .line 66
    return-void
.end method
