.class Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuSeparatorItem;
.super Ljava/lang/Object;
.source "NavigationMenuPresenter.java"

# interfaces
.implements Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuItem;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/internal/NavigationMenuPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NavigationMenuSeparatorItem"
.end annotation


# instance fields
.field private final mPaddingBottom:I

.field private final mPaddingTop:I


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .param p1, "paddingTop"    # I
    .param p2, "paddingBottom"    # I

    .prologue
    .line 619
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 620
    iput p1, p0, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuSeparatorItem;->mPaddingTop:I

    .line 621
    iput p2, p0, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuSeparatorItem;->mPaddingBottom:I

    .line 622
    return-void
.end method


# virtual methods
.method public getPaddingBottom()I
    .locals 1

    .prologue
    .line 629
    iget v0, p0, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuSeparatorItem;->mPaddingBottom:I

    return v0
.end method

.method public getPaddingTop()I
    .locals 1

    .prologue
    .line 625
    iget v0, p0, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuSeparatorItem;->mPaddingTop:I

    return v0
.end method
