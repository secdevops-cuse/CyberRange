.class public Landroid/support/v7/util/SortedList$BatchedCallback;
.super Landroid/support/v7/util/SortedList$Callback;
.source "SortedList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/util/SortedList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BatchedCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T2:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/support/v7/util/SortedList$Callback",
        "<TT2;>;"
    }
.end annotation


# static fields
.field static final TYPE_ADD:I = 0x1

.field static final TYPE_CHANGE:I = 0x3

.field static final TYPE_MOVE:I = 0x4

.field static final TYPE_NONE:I = 0x0

.field static final TYPE_REMOVE:I = 0x2


# instance fields
.field mLastEventCount:I

.field mLastEventPosition:I

.field mLastEventType:I

.field private final mWrappedCallback:Landroid/support/v7/util/SortedList$Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v7/util/SortedList$Callback",
            "<TT2;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/support/v7/util/SortedList$Callback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v7/util/SortedList$Callback",
            "<TT2;>;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Landroid/support/v7/util/SortedList$BatchedCallback;, "Landroid/support/v7/util/SortedList$BatchedCallback<TT2;>;"
    .local p1, "wrappedCallback":Landroid/support/v7/util/SortedList$Callback;, "Landroid/support/v7/util/SortedList$Callback<TT2;>;"
    const/4 v1, -0x1

    .line 800
    invoke-direct {p0}, Landroid/support/v7/util/SortedList$Callback;-><init>()V

    .line 789
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/util/SortedList$BatchedCallback;->mLastEventType:I

    .line 790
    iput v1, p0, Landroid/support/v7/util/SortedList$BatchedCallback;->mLastEventPosition:I

    .line 791
    iput v1, p0, Landroid/support/v7/util/SortedList$BatchedCallback;->mLastEventCount:I

    .line 801
    iput-object p1, p0, Landroid/support/v7/util/SortedList$BatchedCallback;->mWrappedCallback:Landroid/support/v7/util/SortedList$Callback;

    .line 802
    return-void
.end method

.method static synthetic access$000(Landroid/support/v7/util/SortedList$BatchedCallback;)Landroid/support/v7/util/SortedList$Callback;
    .locals 1
    .param p0, "x0"    # Landroid/support/v7/util/SortedList$BatchedCallback;

    .prologue
    .line 780
    iget-object v0, p0, Landroid/support/v7/util/SortedList$BatchedCallback;->mWrappedCallback:Landroid/support/v7/util/SortedList$Callback;

    return-object v0
.end method


# virtual methods
.method public areContentsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT2;TT2;)Z"
        }
    .end annotation

    .prologue
    .line 860
    .local p0, "this":Landroid/support/v7/util/SortedList$BatchedCallback;, "Landroid/support/v7/util/SortedList$BatchedCallback<TT2;>;"
    .local p1, "oldItem":Ljava/lang/Object;, "TT2;"
    .local p2, "newItem":Ljava/lang/Object;, "TT2;"
    iget-object v0, p0, Landroid/support/v7/util/SortedList$BatchedCallback;->mWrappedCallback:Landroid/support/v7/util/SortedList$Callback;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/util/SortedList$Callback;->areContentsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public areItemsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT2;TT2;)Z"
        }
    .end annotation

    .prologue
    .line 865
    .local p0, "this":Landroid/support/v7/util/SortedList$BatchedCallback;, "Landroid/support/v7/util/SortedList$BatchedCallback<TT2;>;"
    .local p1, "item1":Ljava/lang/Object;, "TT2;"
    .local p2, "item2":Ljava/lang/Object;, "TT2;"
    iget-object v0, p0, Landroid/support/v7/util/SortedList$BatchedCallback;->mWrappedCallback:Landroid/support/v7/util/SortedList$Callback;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/util/SortedList$Callback;->areItemsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT2;TT2;)I"
        }
    .end annotation

    .prologue
    .line 806
    .local p0, "this":Landroid/support/v7/util/SortedList$BatchedCallback;, "Landroid/support/v7/util/SortedList$BatchedCallback<TT2;>;"
    .local p1, "o1":Ljava/lang/Object;, "TT2;"
    .local p2, "o2":Ljava/lang/Object;, "TT2;"
    iget-object v0, p0, Landroid/support/v7/util/SortedList$BatchedCallback;->mWrappedCallback:Landroid/support/v7/util/SortedList$Callback;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/util/SortedList$Callback;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public dispatchLastEvent()V
    .locals 3

    .prologue
    .line 874
    .local p0, "this":Landroid/support/v7/util/SortedList$BatchedCallback;, "Landroid/support/v7/util/SortedList$BatchedCallback<TT2;>;"
    iget v0, p0, Landroid/support/v7/util/SortedList$BatchedCallback;->mLastEventType:I

    if-nez v0, :cond_0

    .line 889
    :goto_0
    return-void

    .line 877
    :cond_0
    iget v0, p0, Landroid/support/v7/util/SortedList$BatchedCallback;->mLastEventType:I

    packed-switch v0, :pswitch_data_0

    .line 888
    :goto_1
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/util/SortedList$BatchedCallback;->mLastEventType:I

    goto :goto_0

    .line 879
    :pswitch_0
    iget-object v0, p0, Landroid/support/v7/util/SortedList$BatchedCallback;->mWrappedCallback:Landroid/support/v7/util/SortedList$Callback;

    iget v1, p0, Landroid/support/v7/util/SortedList$BatchedCallback;->mLastEventPosition:I

    iget v2, p0, Landroid/support/v7/util/SortedList$BatchedCallback;->mLastEventCount:I

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/util/SortedList$Callback;->onInserted(II)V

    goto :goto_1

    .line 882
    :pswitch_1
    iget-object v0, p0, Landroid/support/v7/util/SortedList$BatchedCallback;->mWrappedCallback:Landroid/support/v7/util/SortedList$Callback;

    iget v1, p0, Landroid/support/v7/util/SortedList$BatchedCallback;->mLastEventPosition:I

    iget v2, p0, Landroid/support/v7/util/SortedList$BatchedCallback;->mLastEventCount:I

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/util/SortedList$Callback;->onRemoved(II)V

    goto :goto_1

    .line 885
    :pswitch_2
    iget-object v0, p0, Landroid/support/v7/util/SortedList$BatchedCallback;->mWrappedCallback:Landroid/support/v7/util/SortedList$Callback;

    iget v1, p0, Landroid/support/v7/util/SortedList$BatchedCallback;->mLastEventPosition:I

    iget v2, p0, Landroid/support/v7/util/SortedList$BatchedCallback;->mLastEventCount:I

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/util/SortedList$Callback;->onChanged(II)V

    goto :goto_1

    .line 877
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onChanged(II)V
    .locals 4
    .param p1, "position"    # I
    .param p2, "count"    # I

    .prologue
    .local p0, "this":Landroid/support/v7/util/SortedList$BatchedCallback;, "Landroid/support/v7/util/SortedList$BatchedCallback<TT2;>;"
    const/4 v3, 0x3

    .line 843
    iget v1, p0, Landroid/support/v7/util/SortedList$BatchedCallback;->mLastEventType:I

    if-ne v1, v3, :cond_0

    iget v1, p0, Landroid/support/v7/util/SortedList$BatchedCallback;->mLastEventPosition:I

    iget v2, p0, Landroid/support/v7/util/SortedList$BatchedCallback;->mLastEventCount:I

    add-int/2addr v1, v2

    if-gt p1, v1, :cond_0

    add-int v1, p1, p2

    iget v2, p0, Landroid/support/v7/util/SortedList$BatchedCallback;->mLastEventPosition:I

    if-lt v1, v2, :cond_0

    .line 847
    iget v1, p0, Landroid/support/v7/util/SortedList$BatchedCallback;->mLastEventPosition:I

    iget v2, p0, Landroid/support/v7/util/SortedList$BatchedCallback;->mLastEventCount:I

    add-int v0, v1, v2

    .line 848
    .local v0, "previousEnd":I
    iget v1, p0, Landroid/support/v7/util/SortedList$BatchedCallback;->mLastEventPosition:I

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, p0, Landroid/support/v7/util/SortedList$BatchedCallback;->mLastEventPosition:I

    .line 849
    add-int v1, p1, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget v2, p0, Landroid/support/v7/util/SortedList$BatchedCallback;->mLastEventPosition:I

    sub-int/2addr v1, v2

    iput v1, p0, Landroid/support/v7/util/SortedList$BatchedCallback;->mLastEventCount:I

    .line 856
    .end local v0    # "previousEnd":I
    :goto_0
    return-void

    .line 852
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/util/SortedList$BatchedCallback;->dispatchLastEvent()V

    .line 853
    iput p1, p0, Landroid/support/v7/util/SortedList$BatchedCallback;->mLastEventPosition:I

    .line 854
    iput p2, p0, Landroid/support/v7/util/SortedList$BatchedCallback;->mLastEventCount:I

    .line 855
    iput v3, p0, Landroid/support/v7/util/SortedList$BatchedCallback;->mLastEventType:I

    goto :goto_0
.end method

.method public onInserted(II)V
    .locals 3
    .param p1, "position"    # I
    .param p2, "count"    # I

    .prologue
    .local p0, "this":Landroid/support/v7/util/SortedList$BatchedCallback;, "Landroid/support/v7/util/SortedList$BatchedCallback<TT2;>;"
    const/4 v2, 0x1

    .line 811
    iget v0, p0, Landroid/support/v7/util/SortedList$BatchedCallback;->mLastEventType:I

    if-ne v0, v2, :cond_0

    iget v0, p0, Landroid/support/v7/util/SortedList$BatchedCallback;->mLastEventPosition:I

    if-lt p1, v0, :cond_0

    iget v0, p0, Landroid/support/v7/util/SortedList$BatchedCallback;->mLastEventPosition:I

    iget v1, p0, Landroid/support/v7/util/SortedList$BatchedCallback;->mLastEventCount:I

    add-int/2addr v0, v1

    if-gt p1, v0, :cond_0

    .line 813
    iget v0, p0, Landroid/support/v7/util/SortedList$BatchedCallback;->mLastEventCount:I

    add-int/2addr v0, p2

    iput v0, p0, Landroid/support/v7/util/SortedList$BatchedCallback;->mLastEventCount:I

    .line 814
    iget v0, p0, Landroid/support/v7/util/SortedList$BatchedCallback;->mLastEventPosition:I

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Landroid/support/v7/util/SortedList$BatchedCallback;->mLastEventPosition:I

    .line 821
    :goto_0
    return-void

    .line 817
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/util/SortedList$BatchedCallback;->dispatchLastEvent()V

    .line 818
    iput p1, p0, Landroid/support/v7/util/SortedList$BatchedCallback;->mLastEventPosition:I

    .line 819
    iput p2, p0, Landroid/support/v7/util/SortedList$BatchedCallback;->mLastEventCount:I

    .line 820
    iput v2, p0, Landroid/support/v7/util/SortedList$BatchedCallback;->mLastEventType:I

    goto :goto_0
.end method

.method public onMoved(II)V
    .locals 1
    .param p1, "fromPosition"    # I
    .param p2, "toPosition"    # I

    .prologue
    .line 837
    .local p0, "this":Landroid/support/v7/util/SortedList$BatchedCallback;, "Landroid/support/v7/util/SortedList$BatchedCallback<TT2;>;"
    invoke-virtual {p0}, Landroid/support/v7/util/SortedList$BatchedCallback;->dispatchLastEvent()V

    .line 838
    iget-object v0, p0, Landroid/support/v7/util/SortedList$BatchedCallback;->mWrappedCallback:Landroid/support/v7/util/SortedList$Callback;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/util/SortedList$Callback;->onMoved(II)V

    .line 839
    return-void
.end method

.method public onRemoved(II)V
    .locals 2
    .param p1, "position"    # I
    .param p2, "count"    # I

    .prologue
    .local p0, "this":Landroid/support/v7/util/SortedList$BatchedCallback;, "Landroid/support/v7/util/SortedList$BatchedCallback<TT2;>;"
    const/4 v1, 0x2

    .line 825
    iget v0, p0, Landroid/support/v7/util/SortedList$BatchedCallback;->mLastEventType:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/support/v7/util/SortedList$BatchedCallback;->mLastEventPosition:I

    if-ne v0, p1, :cond_0

    .line 826
    iget v0, p0, Landroid/support/v7/util/SortedList$BatchedCallback;->mLastEventCount:I

    add-int/2addr v0, p2

    iput v0, p0, Landroid/support/v7/util/SortedList$BatchedCallback;->mLastEventCount:I

    .line 833
    :goto_0
    return-void

    .line 829
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/util/SortedList$BatchedCallback;->dispatchLastEvent()V

    .line 830
    iput p1, p0, Landroid/support/v7/util/SortedList$BatchedCallback;->mLastEventPosition:I

    .line 831
    iput p2, p0, Landroid/support/v7/util/SortedList$BatchedCallback;->mLastEventCount:I

    .line 832
    iput v1, p0, Landroid/support/v7/util/SortedList$BatchedCallback;->mLastEventType:I

    goto :goto_0
.end method
