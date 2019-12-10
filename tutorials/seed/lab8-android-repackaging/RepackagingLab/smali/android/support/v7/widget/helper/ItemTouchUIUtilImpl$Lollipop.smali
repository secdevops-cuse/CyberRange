.class Landroid/support/v7/widget/helper/ItemTouchUIUtilImpl$Lollipop;
.super Landroid/support/v7/widget/helper/ItemTouchUIUtilImpl$Honeycomb;
.source "ItemTouchUIUtilImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/helper/ItemTouchUIUtilImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Lollipop"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/support/v7/widget/helper/ItemTouchUIUtilImpl$Honeycomb;-><init>()V

    return-void
.end method

.method private findMaxElevation(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;)F
    .locals 6
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "itemView"    # Landroid/view/View;

    .prologue
    .line 48
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v1

    .line 49
    .local v1, "childCount":I
    const/4 v4, 0x0

    .line 50
    .local v4, "max":F
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_2

    .line 51
    invoke-virtual {p1, v3}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 52
    .local v0, "child":Landroid/view/View;
    if-ne v0, p2, :cond_1

    .line 50
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 55
    :cond_1
    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->getElevation(Landroid/view/View;)F

    move-result v2

    .line 56
    .local v2, "elevation":F
    cmpl-float v5, v2, v4

    if-lez v5, :cond_0

    .line 57
    move v4, v2

    goto :goto_1

    .line 60
    .end local v0    # "child":Landroid/view/View;
    .end local v2    # "elevation":F
    :cond_2
    return v4
.end method


# virtual methods
.method public clearView(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 65
    sget v1, Landroid/support/v7/recyclerview/R$id;->item_touch_helper_previous_elevation:I

    invoke-virtual {p1, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    .line 66
    .local v0, "tag":Ljava/lang/Object;
    if-eqz v0, :cond_0

    instance-of v1, v0, Ljava/lang/Float;

    if-eqz v1, :cond_0

    .line 67
    check-cast v0, Ljava/lang/Float;

    .end local v0    # "tag":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-static {p1, v1}, Landroid/support/v4/view/ViewCompat;->setElevation(Landroid/view/View;F)V

    .line 69
    :cond_0
    sget v1, Landroid/support/v7/recyclerview/R$id;->item_touch_helper_previous_elevation:I

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 70
    invoke-super {p0, p1}, Landroid/support/v7/widget/helper/ItemTouchUIUtilImpl$Honeycomb;->clearView(Landroid/view/View;)V

    .line 71
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/view/View;FFIZ)V
    .locals 4
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
    .param p3, "view"    # Landroid/view/View;
    .param p4, "dX"    # F
    .param p5, "dY"    # F
    .param p6, "actionState"    # I
    .param p7, "isCurrentlyActive"    # Z

    .prologue
    .line 35
    if-eqz p7, :cond_0

    .line 36
    sget v2, Landroid/support/v7/recyclerview/R$id;->item_touch_helper_previous_elevation:I

    invoke-virtual {p3, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    .line 37
    .local v1, "originalElevation":Ljava/lang/Object;
    if-nez v1, :cond_0

    .line 38
    invoke-static {p3}, Landroid/support/v4/view/ViewCompat;->getElevation(Landroid/view/View;)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    .line 39
    .local v1, "originalElevation":Ljava/lang/Float;
    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {p0, p2, p3}, Landroid/support/v7/widget/helper/ItemTouchUIUtilImpl$Lollipop;->findMaxElevation(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;)F

    move-result v3

    add-float v0, v2, v3

    .line 40
    .local v0, "newElevation":F
    invoke-static {p3, v0}, Landroid/support/v4/view/ViewCompat;->setElevation(Landroid/view/View;F)V

    .line 41
    sget v2, Landroid/support/v7/recyclerview/R$id;->item_touch_helper_previous_elevation:I

    invoke-virtual {p3, v2, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 44
    .end local v0    # "newElevation":F
    .end local v1    # "originalElevation":Ljava/lang/Float;
    :cond_0
    invoke-super/range {p0 .. p7}, Landroid/support/v7/widget/helper/ItemTouchUIUtilImpl$Honeycomb;->onDraw(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/view/View;FFIZ)V

    .line 45
    return-void
.end method
