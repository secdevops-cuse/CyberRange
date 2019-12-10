.class Landroid/support/design/widget/ViewUtils$ViewUtilsImplLollipop;
.super Ljava/lang/Object;
.source "ViewUtils.java"

# interfaces
.implements Landroid/support/design/widget/ViewUtils$ViewUtilsImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/widget/ViewUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ViewUtilsImplLollipop"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/design/widget/ViewUtils$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/support/design/widget/ViewUtils$1;

    .prologue
    .line 45
    invoke-direct {p0}, Landroid/support/design/widget/ViewUtils$ViewUtilsImplLollipop;-><init>()V

    return-void
.end method


# virtual methods
.method public setBoundsViewOutlineProvider(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 48
    invoke-static {p1}, Landroid/support/design/widget/ViewUtilsLollipop;->setBoundsViewOutlineProvider(Landroid/view/View;)V

    .line 49
    return-void
.end method
