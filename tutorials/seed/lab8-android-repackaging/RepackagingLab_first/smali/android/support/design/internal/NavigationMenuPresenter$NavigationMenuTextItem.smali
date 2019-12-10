.class Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuTextItem;
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
    name = "NavigationMenuTextItem"
.end annotation


# instance fields
.field private final mMenuItem:Landroid/support/v7/view/menu/MenuItemImpl;


# direct methods
.method private constructor <init>(Landroid/support/v7/view/menu/MenuItemImpl;)V
    .locals 0
    .param p1, "item"    # Landroid/support/v7/view/menu/MenuItemImpl;

    .prologue
    .line 600
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 601
    iput-object p1, p0, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuTextItem;->mMenuItem:Landroid/support/v7/view/menu/MenuItemImpl;

    .line 602
    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v7/view/menu/MenuItemImpl;Landroid/support/design/internal/NavigationMenuPresenter$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/support/v7/view/menu/MenuItemImpl;
    .param p2, "x1"    # Landroid/support/design/internal/NavigationMenuPresenter$1;

    .prologue
    .line 596
    invoke-direct {p0, p1}, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuTextItem;-><init>(Landroid/support/v7/view/menu/MenuItemImpl;)V

    return-void
.end method


# virtual methods
.method public getMenuItem()Landroid/support/v7/view/menu/MenuItemImpl;
    .locals 1

    .prologue
    .line 605
    iget-object v0, p0, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuTextItem;->mMenuItem:Landroid/support/v7/view/menu/MenuItemImpl;

    return-object v0
.end method
