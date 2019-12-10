.class public Landroid/support/v7/widget/GridLayoutManager$LayoutParams;
.super Landroid/support/v7/widget/RecyclerView$LayoutParams;
.source "GridLayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/GridLayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# static fields
.field public static final INVALID_SPAN_ID:I = -0x1


# instance fields
.field private mSpanIndex:I

.field private mSpanSize:I


# direct methods
.method public constructor <init>(II)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 888
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView$LayoutParams;-><init>(II)V

    .line 879
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->mSpanIndex:I

    .line 881
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->mSpanSize:I

    .line 889
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 884
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 879
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->mSpanIndex:I

    .line 881
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->mSpanSize:I

    .line 885
    return-void
.end method

.method public constructor <init>(Landroid/support/v7/widget/RecyclerView$LayoutParams;)V
    .locals 1
    .param p1, "source"    # Landroid/support/v7/widget/RecyclerView$LayoutParams;

    .prologue
    .line 900
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$LayoutParams;-><init>(Landroid/support/v7/widget/RecyclerView$LayoutParams;)V

    .line 879
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->mSpanIndex:I

    .line 881
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->mSpanSize:I

    .line 901
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .param p1, "source"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 896
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 879
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->mSpanIndex:I

    .line 881
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->mSpanSize:I

    .line 897
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$MarginLayoutParams;)V
    .locals 1
    .param p1, "source"    # Landroid/view/ViewGroup$MarginLayoutParams;

    .prologue
    .line 892
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 879
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->mSpanIndex:I

    .line 881
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->mSpanSize:I

    .line 893
    return-void
.end method

.method static synthetic access$000(Landroid/support/v7/widget/GridLayoutManager$LayoutParams;)I
    .locals 1
    .param p0, "x0"    # Landroid/support/v7/widget/GridLayoutManager$LayoutParams;

    .prologue
    .line 872
    iget v0, p0, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->mSpanIndex:I

    return v0
.end method

.method static synthetic access$002(Landroid/support/v7/widget/GridLayoutManager$LayoutParams;I)I
    .locals 0
    .param p0, "x0"    # Landroid/support/v7/widget/GridLayoutManager$LayoutParams;
    .param p1, "x1"    # I

    .prologue
    .line 872
    iput p1, p0, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->mSpanIndex:I

    return p1
.end method

.method static synthetic access$100(Landroid/support/v7/widget/GridLayoutManager$LayoutParams;)I
    .locals 1
    .param p0, "x0"    # Landroid/support/v7/widget/GridLayoutManager$LayoutParams;

    .prologue
    .line 872
    iget v0, p0, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->mSpanSize:I

    return v0
.end method

.method static synthetic access$102(Landroid/support/v7/widget/GridLayoutManager$LayoutParams;I)I
    .locals 0
    .param p0, "x0"    # Landroid/support/v7/widget/GridLayoutManager$LayoutParams;
    .param p1, "x1"    # I

    .prologue
    .line 872
    iput p1, p0, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->mSpanSize:I

    return p1
.end method


# virtual methods
.method public getSpanIndex()I
    .locals 1

    .prologue
    .line 917
    iget v0, p0, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->mSpanIndex:I

    return v0
.end method

.method public getSpanSize()I
    .locals 1

    .prologue
    .line 927
    iget v0, p0, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->mSpanSize:I

    return v0
.end method
