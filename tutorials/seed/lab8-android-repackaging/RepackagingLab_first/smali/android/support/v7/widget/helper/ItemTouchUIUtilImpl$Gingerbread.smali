.class Landroid/support/v7/widget/helper/ItemTouchUIUtilImpl$Gingerbread;
.super Ljava/lang/Object;
.source "ItemTouchUIUtilImpl.java"

# interfaces
.implements Landroid/support/v7/widget/helper/ItemTouchUIUtil;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/helper/ItemTouchUIUtilImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Gingerbread"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private draw(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/view/View;FF)V
    .locals 2
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "parent"    # Landroid/support/v7/widget/RecyclerView;
    .param p3, "view"    # Landroid/view/View;
    .param p4, "dX"    # F
    .param p5, "dY"    # F

    .prologue
    .line 105
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 106
    invoke-virtual {p1, p4, p5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 107
    const-wide/16 v0, 0x0

    invoke-virtual {p2, p1, p3, v0, v1}, Landroid/support/v7/widget/RecyclerView;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 108
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 109
    return-void
.end method


# virtual methods
.method public clearView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 113
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 114
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/view/View;FFIZ)V
    .locals 1
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
    .param p3, "view"    # Landroid/view/View;
    .param p4, "dX"    # F
    .param p5, "dY"    # F
    .param p6, "actionState"    # I
    .param p7, "isCurrentlyActive"    # Z

    .prologue
    .line 124
    const/4 v0, 0x2

    if-eq p6, v0, :cond_0

    .line 125
    invoke-direct/range {p0 .. p5}, Landroid/support/v7/widget/helper/ItemTouchUIUtilImpl$Gingerbread;->draw(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/view/View;FF)V

    .line 127
    :cond_0
    return-void
.end method

.method public onDrawOver(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/view/View;FFIZ)V
    .locals 1
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
    .param p3, "view"    # Landroid/view/View;
    .param p4, "dX"    # F
    .param p5, "dY"    # F
    .param p6, "actionState"    # I
    .param p7, "isCurrentlyActive"    # Z

    .prologue
    .line 133
    const/4 v0, 0x2

    if-ne p6, v0, :cond_0

    .line 134
    invoke-direct/range {p0 .. p5}, Landroid/support/v7/widget/helper/ItemTouchUIUtilImpl$Gingerbread;->draw(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/view/View;FF)V

    .line 136
    :cond_0
    return-void
.end method

.method public onSelected(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 118
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 119
    return-void
.end method
