.class public abstract Landroid/support/v7/widget/RecyclerView$Adapter;
.super Ljava/lang/Object;
.source "RecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Adapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<VH:",
        "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private mHasStableIds:Z

.field private final mObservable:Landroid/support/v7/widget/RecyclerView$AdapterDataObservable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 5138
    .local p0, "this":Landroid/support/v7/widget/RecyclerView$Adapter;, "Landroid/support/v7/widget/RecyclerView$Adapter<TVH;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5139
    new-instance v0, Landroid/support/v7/widget/RecyclerView$AdapterDataObservable;

    invoke-direct {v0}, Landroid/support/v7/widget/RecyclerView$AdapterDataObservable;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView$Adapter;->mObservable:Landroid/support/v7/widget/RecyclerView$AdapterDataObservable;

    .line 5140
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$Adapter;->mHasStableIds:Z

    return-void
.end method


# virtual methods
.method public final bindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 2
    .param p2, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;I)V"
        }
    .end annotation

    .prologue
    .line 5242
    .local p0, "this":Landroid/support/v7/widget/RecyclerView$Adapter;, "Landroid/support/v7/widget/RecyclerView$Adapter<TVH;>;"
    .local p1, "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;, "TVH;"
    iput p2, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mPosition:I

    .line 5243
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5244
    invoke-virtual {p0, p2}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemId(I)J

    move-result-wide v0

    iput-wide v0, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mItemId:J

    .line 5246
    :cond_0
    const/4 v0, 0x1

    const/16 v1, 0x207

    invoke-virtual {p1, v0, v1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->setFlags(II)V

    .line 5249
    const-string v0, "RV OnBindView"

    invoke-static {v0}, Landroid/support/v4/os/TraceCompat;->beginSection(Ljava/lang/String;)V

    .line 5250
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getUnmodifiedPayloads()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Landroid/support/v7/widget/RecyclerView$Adapter;->onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;ILjava/util/List;)V

    .line 5251
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->clearPayload()V

    .line 5252
    invoke-static {}, Landroid/support/v4/os/TraceCompat;->endSection()V

    .line 5253
    return-void
.end method

.method public final createViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 2
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "I)TVH;"
        }
    .end annotation

    .prologue
    .line 5227
    .local p0, "this":Landroid/support/v7/widget/RecyclerView$Adapter;, "Landroid/support/v7/widget/RecyclerView$Adapter<TVH;>;"
    const-string v1, "RV CreateView"

    invoke-static {v1}, Landroid/support/v4/os/TraceCompat;->beginSection(Ljava/lang/String;)V

    .line 5228
    invoke-virtual {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView$Adapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    .line 5229
    .local v0, "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;, "TVH;"
    iput p2, v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mItemViewType:I

    .line 5230
    invoke-static {}, Landroid/support/v4/os/TraceCompat;->endSection()V

    .line 5231
    return-object v0
.end method

.method public abstract getItemCount()I
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 5296
    .local p0, "this":Landroid/support/v7/widget/RecyclerView$Adapter;, "Landroid/support/v7/widget/RecyclerView$Adapter<TVH;>;"
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 5268
    .local p0, "this":Landroid/support/v7/widget/RecyclerView$Adapter;, "Landroid/support/v7/widget/RecyclerView$Adapter<TVH;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public final hasObservers()Z
    .locals 1

    .prologue
    .line 5406
    .local p0, "this":Landroid/support/v7/widget/RecyclerView$Adapter;, "Landroid/support/v7/widget/RecyclerView$Adapter<TVH;>;"
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$Adapter;->mObservable:Landroid/support/v7/widget/RecyclerView$AdapterDataObservable;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$AdapterDataObservable;->hasObservers()Z

    move-result v0

    return v0
.end method

.method public final hasStableIds()Z
    .locals 1

    .prologue
    .line 5314
    .local p0, "this":Landroid/support/v7/widget/RecyclerView$Adapter;, "Landroid/support/v7/widget/RecyclerView$Adapter<TVH;>;"
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$Adapter;->mHasStableIds:Z

    return v0
.end method

.method public final notifyDataSetChanged()V
    .locals 1

    .prologue
    .line 5493
    .local p0, "this":Landroid/support/v7/widget/RecyclerView$Adapter;, "Landroid/support/v7/widget/RecyclerView$Adapter<TVH;>;"
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$Adapter;->mObservable:Landroid/support/v7/widget/RecyclerView$AdapterDataObservable;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$AdapterDataObservable;->notifyChanged()V

    .line 5494
    return-void
.end method

.method public final notifyItemChanged(I)V
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 5509
    .local p0, "this":Landroid/support/v7/widget/RecyclerView$Adapter;, "Landroid/support/v7/widget/RecyclerView$Adapter<TVH;>;"
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$Adapter;->mObservable:Landroid/support/v7/widget/RecyclerView$AdapterDataObservable;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/support/v7/widget/RecyclerView$AdapterDataObservable;->notifyItemRangeChanged(II)V

    .line 5510
    return-void
.end method

.method public final notifyItemChanged(ILjava/lang/Object;)V
    .locals 2
    .param p1, "position"    # I
    .param p2, "payload"    # Ljava/lang/Object;

    .prologue
    .line 5537
    .local p0, "this":Landroid/support/v7/widget/RecyclerView$Adapter;, "Landroid/support/v7/widget/RecyclerView$Adapter<TVH;>;"
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$Adapter;->mObservable:Landroid/support/v7/widget/RecyclerView$AdapterDataObservable;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1, p2}, Landroid/support/v7/widget/RecyclerView$AdapterDataObservable;->notifyItemRangeChanged(IILjava/lang/Object;)V

    .line 5538
    return-void
.end method

.method public final notifyItemInserted(I)V
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 5602
    .local p0, "this":Landroid/support/v7/widget/RecyclerView$Adapter;, "Landroid/support/v7/widget/RecyclerView$Adapter<TVH;>;"
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$Adapter;->mObservable:Landroid/support/v7/widget/RecyclerView$AdapterDataObservable;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/support/v7/widget/RecyclerView$AdapterDataObservable;->notifyItemRangeInserted(II)V

    .line 5603
    return-void
.end method

.method public final notifyItemMoved(II)V
    .locals 1
    .param p1, "fromPosition"    # I
    .param p2, "toPosition"    # I

    .prologue
    .line 5617
    .local p0, "this":Landroid/support/v7/widget/RecyclerView$Adapter;, "Landroid/support/v7/widget/RecyclerView$Adapter<TVH;>;"
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$Adapter;->mObservable:Landroid/support/v7/widget/RecyclerView$AdapterDataObservable;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/RecyclerView$AdapterDataObservable;->notifyItemMoved(II)V

    .line 5618
    return-void
.end method

.method public final notifyItemRangeChanged(II)V
    .locals 1
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I

    .prologue
    .line 5555
    .local p0, "this":Landroid/support/v7/widget/RecyclerView$Adapter;, "Landroid/support/v7/widget/RecyclerView$Adapter<TVH;>;"
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$Adapter;->mObservable:Landroid/support/v7/widget/RecyclerView$AdapterDataObservable;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/RecyclerView$AdapterDataObservable;->notifyItemRangeChanged(II)V

    .line 5556
    return-void
.end method

.method public final notifyItemRangeChanged(IILjava/lang/Object;)V
    .locals 1
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I
    .param p3, "payload"    # Ljava/lang/Object;

    .prologue
    .line 5585
    .local p0, "this":Landroid/support/v7/widget/RecyclerView$Adapter;, "Landroid/support/v7/widget/RecyclerView$Adapter<TVH;>;"
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$Adapter;->mObservable:Landroid/support/v7/widget/RecyclerView$AdapterDataObservable;

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView$AdapterDataObservable;->notifyItemRangeChanged(IILjava/lang/Object;)V

    .line 5586
    return-void
.end method

.method public final notifyItemRangeInserted(II)V
    .locals 1
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I

    .prologue
    .line 5636
    .local p0, "this":Landroid/support/v7/widget/RecyclerView$Adapter;, "Landroid/support/v7/widget/RecyclerView$Adapter<TVH;>;"
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$Adapter;->mObservable:Landroid/support/v7/widget/RecyclerView$AdapterDataObservable;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/RecyclerView$AdapterDataObservable;->notifyItemRangeInserted(II)V

    .line 5637
    return-void
.end method

.method public final notifyItemRangeRemoved(II)V
    .locals 1
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I

    .prologue
    .line 5670
    .local p0, "this":Landroid/support/v7/widget/RecyclerView$Adapter;, "Landroid/support/v7/widget/RecyclerView$Adapter<TVH;>;"
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$Adapter;->mObservable:Landroid/support/v7/widget/RecyclerView$AdapterDataObservable;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/RecyclerView$AdapterDataObservable;->notifyItemRangeRemoved(II)V

    .line 5671
    return-void
.end method

.method public final notifyItemRemoved(I)V
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 5653
    .local p0, "this":Landroid/support/v7/widget/RecyclerView$Adapter;, "Landroid/support/v7/widget/RecyclerView$Adapter<TVH;>;"
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$Adapter;->mObservable:Landroid/support/v7/widget/RecyclerView$AdapterDataObservable;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/support/v7/widget/RecyclerView$AdapterDataObservable;->notifyItemRangeRemoved(II)V

    .line 5654
    return-void
.end method

.method public onAttachedToRecyclerView(Landroid/support/v7/widget/RecyclerView;)V
    .locals 0
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;

    .prologue
    .line 5452
    .local p0, "this":Landroid/support/v7/widget/RecyclerView$Adapter;, "Landroid/support/v7/widget/RecyclerView$Adapter<TVH;>;"
    return-void
.end method

.method public abstract onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;I)V"
        }
    .end annotation
.end method

.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;ILjava/util/List;)V
    .locals 0
    .param p2, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 5217
    .local p0, "this":Landroid/support/v7/widget/RecyclerView$Adapter;, "Landroid/support/v7/widget/RecyclerView$Adapter<TVH;>;"
    .local p1, "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;, "TVH;"
    .local p3, "payloads":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-virtual {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView$Adapter;->onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V

    .line 5218
    return-void
.end method

.method public abstract onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "I)TVH;"
        }
    .end annotation
.end method

.method public onDetachedFromRecyclerView(Landroid/support/v7/widget/RecyclerView;)V
    .locals 0
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;

    .prologue
    .line 5461
    .local p0, "this":Landroid/support/v7/widget/RecyclerView$Adapter;, "Landroid/support/v7/widget/RecyclerView$Adapter<TVH;>;"
    return-void
.end method

.method public onFailedToRecycleView(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;)Z"
        }
    .end annotation

    .prologue
    .line 5372
    .local p0, "this":Landroid/support/v7/widget/RecyclerView$Adapter;, "Landroid/support/v7/widget/RecyclerView$Adapter<TVH;>;"
    .local p1, "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;, "TVH;"
    const/4 v0, 0x0

    return v0
.end method

.method public onViewAttachedToWindow(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;)V"
        }
    .end annotation

    .prologue
    .line 5386
    .local p0, "this":Landroid/support/v7/widget/RecyclerView$Adapter;, "Landroid/support/v7/widget/RecyclerView$Adapter<TVH;>;"
    .local p1, "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;, "TVH;"
    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;)V"
        }
    .end annotation

    .prologue
    .line 5398
    .local p0, "this":Landroid/support/v7/widget/RecyclerView$Adapter;, "Landroid/support/v7/widget/RecyclerView$Adapter<TVH;>;"
    .local p1, "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;, "TVH;"
    return-void
.end method

.method public onViewRecycled(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;)V"
        }
    .end annotation

    .prologue
    .line 5335
    .local p0, "this":Landroid/support/v7/widget/RecyclerView$Adapter;, "Landroid/support/v7/widget/RecyclerView$Adapter<TVH;>;"
    .local p1, "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;, "TVH;"
    return-void
.end method

.method public registerAdapterDataObserver(Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;)V
    .locals 1
    .param p1, "observer"    # Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;

    .prologue
    .line 5426
    .local p0, "this":Landroid/support/v7/widget/RecyclerView$Adapter;, "Landroid/support/v7/widget/RecyclerView$Adapter<TVH;>;"
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$Adapter;->mObservable:Landroid/support/v7/widget/RecyclerView$AdapterDataObservable;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView$AdapterDataObservable;->registerObserver(Ljava/lang/Object;)V

    .line 5427
    return-void
.end method

.method public setHasStableIds(Z)V
    .locals 2
    .param p1, "hasStableIds"    # Z

    .prologue
    .line 5280
    .local p0, "this":Landroid/support/v7/widget/RecyclerView$Adapter;, "Landroid/support/v7/widget/RecyclerView$Adapter<TVH;>;"
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;->hasObservers()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5281
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot change whether this adapter has stable IDs while the adapter has registered observers."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5284
    :cond_0
    iput-boolean p1, p0, Landroid/support/v7/widget/RecyclerView$Adapter;->mHasStableIds:Z

    .line 5285
    return-void
.end method

.method public unregisterAdapterDataObserver(Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;)V
    .locals 1
    .param p1, "observer"    # Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;

    .prologue
    .line 5440
    .local p0, "this":Landroid/support/v7/widget/RecyclerView$Adapter;, "Landroid/support/v7/widget/RecyclerView$Adapter<TVH;>;"
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$Adapter;->mObservable:Landroid/support/v7/widget/RecyclerView$AdapterDataObservable;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView$AdapterDataObservable;->unregisterObserver(Ljava/lang/Object;)V

    .line 5441
    return-void
.end method
