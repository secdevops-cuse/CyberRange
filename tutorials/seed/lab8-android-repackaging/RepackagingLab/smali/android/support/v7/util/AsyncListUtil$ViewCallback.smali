.class public abstract Landroid/support/v7/util/AsyncListUtil$ViewCallback;
.super Ljava/lang/Object;
.source "AsyncListUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/util/AsyncListUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ViewCallback"
.end annotation


# static fields
.field public static final HINT_SCROLL_ASC:I = 0x2

.field public static final HINT_SCROLL_DESC:I = 0x1

.field public static final HINT_SCROLL_NONE:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 517
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public extendRangeInto([I[II)V
    .locals 6
    .param p1, "range"    # [I
    .param p2, "outRange"    # [I
    .param p3, "scrollHint"    # I
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 573
    aget v2, p1, v4

    aget v3, p1, v5

    sub-int/2addr v2, v3

    add-int/lit8 v0, v2, 0x1

    .line 574
    .local v0, "fullRange":I
    div-int/lit8 v1, v0, 0x2

    .line 575
    .local v1, "halfRange":I
    aget v3, p1, v5

    if-ne p3, v4, :cond_0

    move v2, v0

    :goto_0
    sub-int v2, v3, v2

    aput v2, p2, v5

    .line 576
    aget v2, p1, v4

    const/4 v3, 0x2

    if-ne p3, v3, :cond_1

    .end local v0    # "fullRange":I
    :goto_1
    add-int/2addr v2, v0

    aput v2, p2, v4

    .line 577
    return-void

    .restart local v0    # "fullRange":I
    :cond_0
    move v2, v1

    .line 575
    goto :goto_0

    :cond_1
    move v0, v1

    .line 576
    goto :goto_1
.end method

.method public abstract getItemRangeInto([I)V
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation
.end method

.method public abstract onDataRefresh()V
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation
.end method

.method public abstract onItemLoaded(I)V
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation
.end method
