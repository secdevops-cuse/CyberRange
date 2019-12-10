.class Landroid/support/v7/app/ActionBarDrawerToggleHoneycomb;
.super Ljava/lang/Object;
.source "ActionBarDrawerToggleHoneycomb.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/app/ActionBarDrawerToggleHoneycomb$SetIndicatorInfo;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ActionBarDrawerToggleHoneycomb"

.field private static final THEME_ATTRS:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 45
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x101030b

    aput v2, v0, v1

    sput-object v0, Landroid/support/v7/app/ActionBarDrawerToggleHoneycomb;->THEME_ATTRS:[I

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    return-void
.end method

.method public static getThemeUpIndicator(Landroid/app/Activity;)Landroid/graphics/drawable/Drawable;
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 92
    sget-object v2, Landroid/support/v7/app/ActionBarDrawerToggleHoneycomb;->THEME_ATTRS:[I

    invoke-virtual {p0, v2}, Landroid/app/Activity;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 93
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 94
    .local v1, "result":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 95
    return-object v1
.end method

.method public static setActionBarDescription(Landroid/support/v7/app/ActionBarDrawerToggleHoneycomb$SetIndicatorInfo;Landroid/app/Activity;I)Landroid/support/v7/app/ActionBarDrawerToggleHoneycomb$SetIndicatorInfo;
    .locals 6
    .param p0, "info"    # Landroid/support/v7/app/ActionBarDrawerToggleHoneycomb$SetIndicatorInfo;
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "contentDescRes"    # I

    .prologue
    .line 72
    if-nez p0, :cond_0

    .line 73
    new-instance p0, Landroid/support/v7/app/ActionBarDrawerToggleHoneycomb$SetIndicatorInfo;

    .end local p0    # "info":Landroid/support/v7/app/ActionBarDrawerToggleHoneycomb$SetIndicatorInfo;
    invoke-direct {p0, p1}, Landroid/support/v7/app/ActionBarDrawerToggleHoneycomb$SetIndicatorInfo;-><init>(Landroid/app/Activity;)V

    .line 75
    .restart local p0    # "info":Landroid/support/v7/app/ActionBarDrawerToggleHoneycomb$SetIndicatorInfo;
    :cond_0
    iget-object v2, p0, Landroid/support/v7/app/ActionBarDrawerToggleHoneycomb$SetIndicatorInfo;->setHomeAsUpIndicator:Ljava/lang/reflect/Method;

    if-eqz v2, :cond_1

    .line 77
    :try_start_0
    invoke-virtual {p1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 78
    .local v0, "actionBar":Landroid/app/ActionBar;
    iget-object v2, p0, Landroid/support/v7/app/ActionBarDrawerToggleHoneycomb$SetIndicatorInfo;->setHomeActionContentDescription:Ljava/lang/reflect/Method;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-gt v2, v3, :cond_1

    .line 82
    invoke-virtual {v0}, Landroid/app/ActionBar;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    .end local v0    # "actionBar":Landroid/app/ActionBar;
    :cond_1
    :goto_0
    return-object p0

    .line 84
    :catch_0
    move-exception v1

    .line 85
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "ActionBarDrawerToggleHoneycomb"

    const-string v3, "Couldn\'t set content description via JB-MR2 API"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static setActionBarUpIndicator(Landroid/support/v7/app/ActionBarDrawerToggleHoneycomb$SetIndicatorInfo;Landroid/app/Activity;Landroid/graphics/drawable/Drawable;I)Landroid/support/v7/app/ActionBarDrawerToggleHoneycomb$SetIndicatorInfo;
    .locals 6
    .param p0, "info"    # Landroid/support/v7/app/ActionBarDrawerToggleHoneycomb$SetIndicatorInfo;
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p3, "contentDescRes"    # I

    .prologue
    .line 52
    new-instance p0, Landroid/support/v7/app/ActionBarDrawerToggleHoneycomb$SetIndicatorInfo;

    .end local p0    # "info":Landroid/support/v7/app/ActionBarDrawerToggleHoneycomb$SetIndicatorInfo;
    invoke-direct {p0, p1}, Landroid/support/v7/app/ActionBarDrawerToggleHoneycomb$SetIndicatorInfo;-><init>(Landroid/app/Activity;)V

    .line 54
    .restart local p0    # "info":Landroid/support/v7/app/ActionBarDrawerToggleHoneycomb$SetIndicatorInfo;
    iget-object v2, p0, Landroid/support/v7/app/ActionBarDrawerToggleHoneycomb$SetIndicatorInfo;->setHomeAsUpIndicator:Ljava/lang/reflect/Method;

    if-eqz v2, :cond_0

    .line 56
    :try_start_0
    invoke-virtual {p1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 57
    .local v0, "actionBar":Landroid/app/ActionBar;
    iget-object v2, p0, Landroid/support/v7/app/ActionBarDrawerToggleHoneycomb$SetIndicatorInfo;->setHomeAsUpIndicator:Ljava/lang/reflect/Method;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    iget-object v2, p0, Landroid/support/v7/app/ActionBarDrawerToggleHoneycomb$SetIndicatorInfo;->setHomeActionContentDescription:Ljava/lang/reflect/Method;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    .end local v0    # "actionBar":Landroid/app/ActionBar;
    :goto_0
    return-object p0

    .line 59
    :catch_0
    move-exception v1

    .line 60
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "ActionBarDrawerToggleHoneycomb"

    const-string v3, "Couldn\'t set home-as-up indicator via JB-MR2 API"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 62
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    iget-object v2, p0, Landroid/support/v7/app/ActionBarDrawerToggleHoneycomb$SetIndicatorInfo;->upIndicatorView:Landroid/widget/ImageView;

    if-eqz v2, :cond_1

    .line 63
    iget-object v2, p0, Landroid/support/v7/app/ActionBarDrawerToggleHoneycomb$SetIndicatorInfo;->upIndicatorView:Landroid/widget/ImageView;

    invoke-virtual {v2, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 65
    :cond_1
    const-string v2, "ActionBarDrawerToggleHoneycomb"

    const-string v3, "Couldn\'t set home-as-up indicator"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
