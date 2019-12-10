.class public abstract Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;
.super Ljava/lang/Object;
.source "GridLayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/GridLayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "SpanSizeLookup"
.end annotation


# instance fields
.field private mCacheSpanIndices:Z

.field final mSpanIndexCache:Landroid/util/SparseIntArray;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 682
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 684
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->mSpanIndexCache:Landroid/util/SparseIntArray;

    .line 686
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->mCacheSpanIndices:Z

    return-void
.end method


# virtual methods
.method findReferenceIndexFromCache(I)I
    .locals 6
    .param p1, "position"    # I

    .prologue
    .line 792
    const/4 v2, 0x0

    .line 793
    .local v2, "lo":I
    iget-object v5, p0, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->mSpanIndexCache:Landroid/util/SparseIntArray;

    invoke-virtual {v5}, Landroid/util/SparseIntArray;->size()I

    move-result v5

    add-int/lit8 v0, v5, -0x1

    .line 795
    .local v0, "hi":I
    :goto_0
    if-gt v2, v0, :cond_1

    .line 796
    add-int v5, v2, v0

    ushr-int/lit8 v3, v5, 0x1

    .line 797
    .local v3, "mid":I
    iget-object v5, p0, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->mSpanIndexCache:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v4

    .line 798
    .local v4, "midVal":I
    if-ge v4, p1, :cond_0

    .line 799
    add-int/lit8 v2, v3, 0x1

    goto :goto_0

    .line 801
    :cond_0
    add-int/lit8 v0, v3, -0x1

    goto :goto_0

    .line 804
    .end local v3    # "mid":I
    .end local v4    # "midVal":I
    :cond_1
    add-int/lit8 v1, v2, -0x1

    .line 805
    .local v1, "index":I
    if-ltz v1, :cond_2

    iget-object v5, p0, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->mSpanIndexCache:Landroid/util/SparseIntArray;

    invoke-virtual {v5}, Landroid/util/SparseIntArray;->size()I

    move-result v5

    if-ge v1, v5, :cond_2

    .line 806
    iget-object v5, p0, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->mSpanIndexCache:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v5

    .line 808
    :goto_1
    return v5

    :cond_2
    const/4 v5, -0x1

    goto :goto_1
.end method

.method getCachedSpanIndex(II)I
    .locals 4
    .param p1, "position"    # I
    .param p2, "spanCount"    # I

    .prologue
    const/4 v3, -0x1

    .line 725
    iget-boolean v2, p0, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->mCacheSpanIndices:Z

    if-nez v2, :cond_1

    .line 726
    invoke-virtual {p0, p1, p2}, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->getSpanIndex(II)I

    move-result v0

    .line 734
    :cond_0
    :goto_0
    return v0

    .line 728
    :cond_1
    iget-object v2, p0, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->mSpanIndexCache:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p1, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 729
    .local v0, "existing":I
    if-ne v0, v3, :cond_0

    .line 732
    invoke-virtual {p0, p1, p2}, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->getSpanIndex(II)I

    move-result v1

    .line 733
    .local v1, "value":I
    iget-object v2, p0, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->mSpanIndexCache:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseIntArray;->put(II)V

    move v0, v1

    .line 734
    goto :goto_0
.end method

.method public getSpanGroupIndex(II)I
    .locals 6
    .param p1, "adapterPosition"    # I
    .param p2, "spanCount"    # I

    .prologue
    .line 822
    const/4 v4, 0x0

    .line 823
    .local v4, "span":I
    const/4 v0, 0x0

    .line 824
    .local v0, "group":I
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->getSpanSize(I)I

    move-result v2

    .line 825
    .local v2, "positionSpanSize":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p1, :cond_2

    .line 826
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->getSpanSize(I)I

    move-result v3

    .line 827
    .local v3, "size":I
    add-int/2addr v4, v3

    .line 828
    if-ne v4, p2, :cond_1

    .line 829
    const/4 v4, 0x0

    .line 830
    add-int/lit8 v0, v0, 0x1

    .line 825
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 831
    :cond_1
    if-le v4, p2, :cond_0

    .line 833
    move v4, v3

    .line 834
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 837
    .end local v3    # "size":I
    :cond_2
    add-int v5, v4, v2

    if-le v5, p2, :cond_3

    .line 838
    add-int/lit8 v0, v0, 0x1

    .line 840
    :cond_3
    return v0
.end method

.method public getSpanIndex(II)I
    .locals 9
    .param p1, "position"    # I
    .param p2, "spanCount"    # I

    .prologue
    const/4 v6, 0x0

    .line 761
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->getSpanSize(I)I

    move-result v1

    .line 762
    .local v1, "positionSpanSize":I
    if-ne v1, p2, :cond_1

    move v4, v6

    .line 788
    :cond_0
    :goto_0
    return v4

    .line 765
    :cond_1
    const/4 v4, 0x0

    .line 766
    .local v4, "span":I
    const/4 v5, 0x0

    .line 768
    .local v5, "startPos":I
    iget-boolean v7, p0, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->mCacheSpanIndices:Z

    if-eqz v7, :cond_2

    iget-object v7, p0, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->mSpanIndexCache:Landroid/util/SparseIntArray;

    invoke-virtual {v7}, Landroid/util/SparseIntArray;->size()I

    move-result v7

    if-lez v7, :cond_2

    .line 769
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->findReferenceIndexFromCache(I)I

    move-result v2

    .line 770
    .local v2, "prevKey":I
    if-ltz v2, :cond_2

    .line 771
    iget-object v7, p0, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->mSpanIndexCache:Landroid/util/SparseIntArray;

    invoke-virtual {v7, v2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v7

    invoke-virtual {p0, v2}, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->getSpanSize(I)I

    move-result v8

    add-int v4, v7, v8

    .line 772
    add-int/lit8 v5, v2, 0x1

    .line 775
    .end local v2    # "prevKey":I
    :cond_2
    move v0, v5

    .local v0, "i":I
    :goto_1
    if-ge v0, p1, :cond_5

    .line 776
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->getSpanSize(I)I

    move-result v3

    .line 777
    .local v3, "size":I
    add-int/2addr v4, v3

    .line 778
    if-ne v4, p2, :cond_4

    .line 779
    const/4 v4, 0x0

    .line 775
    :cond_3
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 780
    :cond_4
    if-le v4, p2, :cond_3

    .line 782
    move v4, v3

    goto :goto_2

    .line 785
    .end local v3    # "size":I
    :cond_5
    add-int v7, v4, v1

    if-le v7, p2, :cond_0

    move v4, v6

    .line 788
    goto :goto_0
.end method

.method public abstract getSpanSize(I)I
.end method

.method public invalidateSpanIndexCache()V
    .locals 1

    .prologue
    .line 712
    iget-object v0, p0, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->mSpanIndexCache:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 713
    return-void
.end method

.method public isSpanIndexCacheEnabled()Z
    .locals 1

    .prologue
    .line 721
    iget-boolean v0, p0, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->mCacheSpanIndices:Z

    return v0
.end method

.method public setSpanIndexCacheEnabled(Z)V
    .locals 0
    .param p1, "cacheSpanIndices"    # Z

    .prologue
    .line 704
    iput-boolean p1, p0, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->mCacheSpanIndices:Z

    .line 705
    return-void
.end method
