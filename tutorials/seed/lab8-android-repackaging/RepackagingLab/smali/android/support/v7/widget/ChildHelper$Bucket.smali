.class Landroid/support/v7/widget/ChildHelper$Bucket;
.super Ljava/lang/Object;
.source "ChildHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/ChildHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Bucket"
.end annotation


# static fields
.field static final BITS_PER_WORD:I = 0x40

.field static final LAST_BIT:J = -0x8000000000000000L


# instance fields
.field mData:J

.field next:Landroid/support/v7/widget/ChildHelper$Bucket;


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 395
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 401
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/support/v7/widget/ChildHelper$Bucket;->mData:J

    return-void
.end method

.method private ensureNext()V
    .locals 1

    .prologue
    .line 415
    iget-object v0, p0, Landroid/support/v7/widget/ChildHelper$Bucket;->next:Landroid/support/v7/widget/ChildHelper$Bucket;

    if-nez v0, :cond_0

    .line 416
    new-instance v0, Landroid/support/v7/widget/ChildHelper$Bucket;

    invoke-direct {v0}, Landroid/support/v7/widget/ChildHelper$Bucket;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/ChildHelper$Bucket;->next:Landroid/support/v7/widget/ChildHelper$Bucket;

    .line 418
    :cond_0
    return-void
.end method


# virtual methods
.method clear(I)V
    .locals 6
    .param p1, "index"    # I

    .prologue
    .line 421
    const/16 v0, 0x40

    if-lt p1, v0, :cond_1

    .line 422
    iget-object v0, p0, Landroid/support/v7/widget/ChildHelper$Bucket;->next:Landroid/support/v7/widget/ChildHelper$Bucket;

    if-eqz v0, :cond_0

    .line 423
    iget-object v0, p0, Landroid/support/v7/widget/ChildHelper$Bucket;->next:Landroid/support/v7/widget/ChildHelper$Bucket;

    add-int/lit8 v1, p1, -0x40

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ChildHelper$Bucket;->clear(I)V

    .line 429
    :cond_0
    :goto_0
    return-void

    .line 426
    :cond_1
    iget-wide v0, p0, Landroid/support/v7/widget/ChildHelper$Bucket;->mData:J

    const-wide/16 v2, 0x1

    shl-long/2addr v2, p1

    const-wide/16 v4, -0x1

    xor-long/2addr v2, v4

    and-long/2addr v0, v2

    iput-wide v0, p0, Landroid/support/v7/widget/ChildHelper$Bucket;->mData:J

    goto :goto_0
.end method

.method countOnesBefore(I)I
    .locals 6
    .param p1, "index"    # I

    .prologue
    const/16 v1, 0x40

    const-wide/16 v4, 0x1

    .line 493
    iget-object v0, p0, Landroid/support/v7/widget/ChildHelper$Bucket;->next:Landroid/support/v7/widget/ChildHelper$Bucket;

    if-nez v0, :cond_1

    .line 494
    if-lt p1, v1, :cond_0

    .line 495
    iget-wide v0, p0, Landroid/support/v7/widget/ChildHelper$Bucket;->mData:J

    invoke-static {v0, v1}, Ljava/lang/Long;->bitCount(J)I

    move-result v0

    .line 502
    :goto_0
    return v0

    .line 497
    :cond_0
    iget-wide v0, p0, Landroid/support/v7/widget/ChildHelper$Bucket;->mData:J

    shl-long v2, v4, p1

    sub-long/2addr v2, v4

    and-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->bitCount(J)I

    move-result v0

    goto :goto_0

    .line 499
    :cond_1
    if-ge p1, v1, :cond_2

    .line 500
    iget-wide v0, p0, Landroid/support/v7/widget/ChildHelper$Bucket;->mData:J

    shl-long v2, v4, p1

    sub-long/2addr v2, v4

    and-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->bitCount(J)I

    move-result v0

    goto :goto_0

    .line 502
    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/ChildHelper$Bucket;->next:Landroid/support/v7/widget/ChildHelper$Bucket;

    add-int/lit8 v1, p1, -0x40

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ChildHelper$Bucket;->countOnesBefore(I)I

    move-result v0

    iget-wide v2, p0, Landroid/support/v7/widget/ChildHelper$Bucket;->mData:J

    invoke-static {v2, v3}, Ljava/lang/Long;->bitCount(J)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method get(I)Z
    .locals 4
    .param p1, "index"    # I

    .prologue
    .line 432
    const/16 v0, 0x40

    if-lt p1, v0, :cond_0

    .line 433
    invoke-direct {p0}, Landroid/support/v7/widget/ChildHelper$Bucket;->ensureNext()V

    .line 434
    iget-object v0, p0, Landroid/support/v7/widget/ChildHelper$Bucket;->next:Landroid/support/v7/widget/ChildHelper$Bucket;

    add-int/lit8 v1, p1, -0x40

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ChildHelper$Bucket;->get(I)Z

    move-result v0

    .line 436
    :goto_0
    return v0

    :cond_0
    iget-wide v0, p0, Landroid/support/v7/widget/ChildHelper$Bucket;->mData:J

    const-wide/16 v2, 0x1

    shl-long/2addr v2, p1

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method insert(IZ)V
    .locals 12
    .param p1, "index"    # I
    .param p2, "value"    # Z

    .prologue
    .line 448
    const/16 v5, 0x40

    if-lt p1, v5, :cond_1

    .line 449
    invoke-direct {p0}, Landroid/support/v7/widget/ChildHelper$Bucket;->ensureNext()V

    .line 450
    iget-object v5, p0, Landroid/support/v7/widget/ChildHelper$Bucket;->next:Landroid/support/v7/widget/ChildHelper$Bucket;

    add-int/lit8 v8, p1, -0x40

    invoke-virtual {v5, v8, p2}, Landroid/support/v7/widget/ChildHelper$Bucket;->insert(IZ)V

    .line 467
    :cond_0
    :goto_0
    return-void

    .line 452
    :cond_1
    iget-wide v8, p0, Landroid/support/v7/widget/ChildHelper$Bucket;->mData:J

    const-wide/high16 v10, -0x8000000000000000L

    and-long/2addr v8, v10

    const-wide/16 v10, 0x0

    cmp-long v5, v8, v10

    if-eqz v5, :cond_3

    const/4 v4, 0x1

    .line 453
    .local v4, "lastBit":Z
    :goto_1
    const-wide/16 v8, 0x1

    shl-long/2addr v8, p1

    const-wide/16 v10, 0x1

    sub-long v6, v8, v10

    .line 454
    .local v6, "mask":J
    iget-wide v8, p0, Landroid/support/v7/widget/ChildHelper$Bucket;->mData:J

    and-long v2, v8, v6

    .line 455
    .local v2, "before":J
    iget-wide v8, p0, Landroid/support/v7/widget/ChildHelper$Bucket;->mData:J

    const-wide/16 v10, -0x1

    xor-long/2addr v10, v6

    and-long/2addr v8, v10

    const/4 v5, 0x1

    shl-long v0, v8, v5

    .line 456
    .local v0, "after":J
    or-long v8, v2, v0

    iput-wide v8, p0, Landroid/support/v7/widget/ChildHelper$Bucket;->mData:J

    .line 457
    if-eqz p2, :cond_4

    .line 458
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/ChildHelper$Bucket;->set(I)V

    .line 462
    :goto_2
    if-nez v4, :cond_2

    iget-object v5, p0, Landroid/support/v7/widget/ChildHelper$Bucket;->next:Landroid/support/v7/widget/ChildHelper$Bucket;

    if-eqz v5, :cond_0

    .line 463
    :cond_2
    invoke-direct {p0}, Landroid/support/v7/widget/ChildHelper$Bucket;->ensureNext()V

    .line 464
    iget-object v5, p0, Landroid/support/v7/widget/ChildHelper$Bucket;->next:Landroid/support/v7/widget/ChildHelper$Bucket;

    const/4 v8, 0x0

    invoke-virtual {v5, v8, v4}, Landroid/support/v7/widget/ChildHelper$Bucket;->insert(IZ)V

    goto :goto_0

    .line 452
    .end local v0    # "after":J
    .end local v2    # "before":J
    .end local v4    # "lastBit":Z
    .end local v6    # "mask":J
    :cond_3
    const/4 v4, 0x0

    goto :goto_1

    .line 460
    .restart local v0    # "after":J
    .restart local v2    # "before":J
    .restart local v4    # "lastBit":Z
    .restart local v6    # "mask":J
    :cond_4
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/ChildHelper$Bucket;->clear(I)V

    goto :goto_2
.end method

.method remove(I)Z
    .locals 12
    .param p1, "index"    # I

    .prologue
    .line 470
    const/16 v7, 0x40

    if-lt p1, v7, :cond_1

    .line 471
    invoke-direct {p0}, Landroid/support/v7/widget/ChildHelper$Bucket;->ensureNext()V

    .line 472
    iget-object v7, p0, Landroid/support/v7/widget/ChildHelper$Bucket;->next:Landroid/support/v7/widget/ChildHelper$Bucket;

    add-int/lit8 v8, p1, -0x40

    invoke-virtual {v7, v8}, Landroid/support/v7/widget/ChildHelper$Bucket;->remove(I)Z

    move-result v6

    .line 488
    :cond_0
    :goto_0
    return v6

    .line 474
    :cond_1
    const-wide/16 v8, 0x1

    shl-long v4, v8, p1

    .line 475
    .local v4, "mask":J
    iget-wide v8, p0, Landroid/support/v7/widget/ChildHelper$Bucket;->mData:J

    and-long/2addr v8, v4

    const-wide/16 v10, 0x0

    cmp-long v7, v8, v10

    if-eqz v7, :cond_3

    const/4 v6, 0x1

    .line 476
    .local v6, "value":Z
    :goto_1
    iget-wide v8, p0, Landroid/support/v7/widget/ChildHelper$Bucket;->mData:J

    const-wide/16 v10, -0x1

    xor-long/2addr v10, v4

    and-long/2addr v8, v10

    iput-wide v8, p0, Landroid/support/v7/widget/ChildHelper$Bucket;->mData:J

    .line 477
    const-wide/16 v8, 0x1

    sub-long/2addr v4, v8

    .line 478
    iget-wide v8, p0, Landroid/support/v7/widget/ChildHelper$Bucket;->mData:J

    and-long v2, v8, v4

    .line 480
    .local v2, "before":J
    iget-wide v8, p0, Landroid/support/v7/widget/ChildHelper$Bucket;->mData:J

    const-wide/16 v10, -0x1

    xor-long/2addr v10, v4

    and-long/2addr v8, v10

    const/4 v7, 0x1

    invoke-static {v8, v9, v7}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide v0

    .line 481
    .local v0, "after":J
    or-long v8, v2, v0

    iput-wide v8, p0, Landroid/support/v7/widget/ChildHelper$Bucket;->mData:J

    .line 482
    iget-object v7, p0, Landroid/support/v7/widget/ChildHelper$Bucket;->next:Landroid/support/v7/widget/ChildHelper$Bucket;

    if-eqz v7, :cond_0

    .line 483
    iget-object v7, p0, Landroid/support/v7/widget/ChildHelper$Bucket;->next:Landroid/support/v7/widget/ChildHelper$Bucket;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/support/v7/widget/ChildHelper$Bucket;->get(I)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 484
    const/16 v7, 0x3f

    invoke-virtual {p0, v7}, Landroid/support/v7/widget/ChildHelper$Bucket;->set(I)V

    .line 486
    :cond_2
    iget-object v7, p0, Landroid/support/v7/widget/ChildHelper$Bucket;->next:Landroid/support/v7/widget/ChildHelper$Bucket;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/support/v7/widget/ChildHelper$Bucket;->remove(I)Z

    goto :goto_0

    .line 475
    .end local v0    # "after":J
    .end local v2    # "before":J
    .end local v6    # "value":Z
    :cond_3
    const/4 v6, 0x0

    goto :goto_1
.end method

.method reset()V
    .locals 2

    .prologue
    .line 441
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/support/v7/widget/ChildHelper$Bucket;->mData:J

    .line 442
    iget-object v0, p0, Landroid/support/v7/widget/ChildHelper$Bucket;->next:Landroid/support/v7/widget/ChildHelper$Bucket;

    if-eqz v0, :cond_0

    .line 443
    iget-object v0, p0, Landroid/support/v7/widget/ChildHelper$Bucket;->next:Landroid/support/v7/widget/ChildHelper$Bucket;

    invoke-virtual {v0}, Landroid/support/v7/widget/ChildHelper$Bucket;->reset()V

    .line 445
    :cond_0
    return-void
.end method

.method set(I)V
    .locals 4
    .param p1, "index"    # I

    .prologue
    .line 406
    const/16 v0, 0x40

    if-lt p1, v0, :cond_0

    .line 407
    invoke-direct {p0}, Landroid/support/v7/widget/ChildHelper$Bucket;->ensureNext()V

    .line 408
    iget-object v0, p0, Landroid/support/v7/widget/ChildHelper$Bucket;->next:Landroid/support/v7/widget/ChildHelper$Bucket;

    add-int/lit8 v1, p1, -0x40

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ChildHelper$Bucket;->set(I)V

    .line 412
    :goto_0
    return-void

    .line 410
    :cond_0
    iget-wide v0, p0, Landroid/support/v7/widget/ChildHelper$Bucket;->mData:J

    const-wide/16 v2, 0x1

    shl-long/2addr v2, p1

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/support/v7/widget/ChildHelper$Bucket;->mData:J

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 508
    iget-object v0, p0, Landroid/support/v7/widget/ChildHelper$Bucket;->next:Landroid/support/v7/widget/ChildHelper$Bucket;

    if-nez v0, :cond_0

    iget-wide v0, p0, Landroid/support/v7/widget/ChildHelper$Bucket;->mData:J

    invoke-static {v0, v1}, Ljava/lang/Long;->toBinaryString(J)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/support/v7/widget/ChildHelper$Bucket;->next:Landroid/support/v7/widget/ChildHelper$Bucket;

    invoke-virtual {v1}, Landroid/support/v7/widget/ChildHelper$Bucket;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "xx"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Landroid/support/v7/widget/ChildHelper$Bucket;->mData:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toBinaryString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
