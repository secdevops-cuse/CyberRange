.class Landroid/support/v7/widget/helper/ItemTouchHelper$2;
.super Ljava/lang/Object;
.source "ItemTouchHelper.java"

# interfaces
.implements Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/helper/ItemTouchHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v7/widget/helper/ItemTouchHelper;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/helper/ItemTouchHelper;)V
    .locals 0

    .prologue
    .line 287
    iput-object p1, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$2;->this$0:Landroid/support/v7/widget/helper/ItemTouchHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/support/v7/widget/RecyclerView;Landroid/view/MotionEvent;)Z
    .locals 8
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v6, -0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 290
    iget-object v5, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$2;->this$0:Landroid/support/v7/widget/helper/ItemTouchHelper;

    # getter for: Landroid/support/v7/widget/helper/ItemTouchHelper;->mGestureDetector:Landroid/support/v4/view/GestureDetectorCompat;
    invoke-static {v5}, Landroid/support/v7/widget/helper/ItemTouchHelper;->access$400(Landroid/support/v7/widget/helper/ItemTouchHelper;)Landroid/support/v4/view/GestureDetectorCompat;

    move-result-object v5

    invoke-virtual {v5, p2}, Landroid/support/v4/view/GestureDetectorCompat;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 294
    invoke-static {p2}, Landroid/support/v4/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    move-result v0

    .line 295
    .local v0, "action":I
    if-nez v0, :cond_3

    .line 296
    iget-object v5, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$2;->this$0:Landroid/support/v7/widget/helper/ItemTouchHelper;

    invoke-static {p2, v4}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v6

    iput v6, v5, Landroid/support/v7/widget/helper/ItemTouchHelper;->mActivePointerId:I

    .line 297
    iget-object v5, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$2;->this$0:Landroid/support/v7/widget/helper/ItemTouchHelper;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    iput v6, v5, Landroid/support/v7/widget/helper/ItemTouchHelper;->mInitialTouchX:F

    .line 298
    iget-object v5, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$2;->this$0:Landroid/support/v7/widget/helper/ItemTouchHelper;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    iput v6, v5, Landroid/support/v7/widget/helper/ItemTouchHelper;->mInitialTouchY:F

    .line 299
    iget-object v5, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$2;->this$0:Landroid/support/v7/widget/helper/ItemTouchHelper;

    # invokes: Landroid/support/v7/widget/helper/ItemTouchHelper;->obtainVelocityTracker()V
    invoke-static {v5}, Landroid/support/v7/widget/helper/ItemTouchHelper;->access$500(Landroid/support/v7/widget/helper/ItemTouchHelper;)V

    .line 300
    iget-object v5, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$2;->this$0:Landroid/support/v7/widget/helper/ItemTouchHelper;

    iget-object v5, v5, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSelected:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    if-nez v5, :cond_1

    .line 301
    iget-object v5, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$2;->this$0:Landroid/support/v7/widget/helper/ItemTouchHelper;

    # invokes: Landroid/support/v7/widget/helper/ItemTouchHelper;->findAnimation(Landroid/view/MotionEvent;)Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;
    invoke-static {v5, p2}, Landroid/support/v7/widget/helper/ItemTouchHelper;->access$600(Landroid/support/v7/widget/helper/ItemTouchHelper;Landroid/view/MotionEvent;)Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;

    move-result-object v1

    .line 302
    .local v1, "animation":Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;
    if-eqz v1, :cond_1

    .line 303
    iget-object v5, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$2;->this$0:Landroid/support/v7/widget/helper/ItemTouchHelper;

    iget v6, v5, Landroid/support/v7/widget/helper/ItemTouchHelper;->mInitialTouchX:F

    iget v7, v1, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;->mX:F

    sub-float/2addr v6, v7

    iput v6, v5, Landroid/support/v7/widget/helper/ItemTouchHelper;->mInitialTouchX:F

    .line 304
    iget-object v5, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$2;->this$0:Landroid/support/v7/widget/helper/ItemTouchHelper;

    iget v6, v5, Landroid/support/v7/widget/helper/ItemTouchHelper;->mInitialTouchY:F

    iget v7, v1, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;->mY:F

    sub-float/2addr v6, v7

    iput v6, v5, Landroid/support/v7/widget/helper/ItemTouchHelper;->mInitialTouchY:F

    .line 305
    iget-object v5, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$2;->this$0:Landroid/support/v7/widget/helper/ItemTouchHelper;

    iget-object v6, v1, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;->mViewHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    # invokes: Landroid/support/v7/widget/helper/ItemTouchHelper;->endRecoverAnimation(Landroid/support/v7/widget/RecyclerView$ViewHolder;Z)I
    invoke-static {v5, v6, v3}, Landroid/support/v7/widget/helper/ItemTouchHelper;->access$700(Landroid/support/v7/widget/helper/ItemTouchHelper;Landroid/support/v7/widget/RecyclerView$ViewHolder;Z)I

    .line 306
    iget-object v5, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$2;->this$0:Landroid/support/v7/widget/helper/ItemTouchHelper;

    iget-object v5, v5, Landroid/support/v7/widget/helper/ItemTouchHelper;->mPendingCleanup:Ljava/util/List;

    iget-object v6, v1, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;->mViewHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    iget-object v6, v6, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-interface {v5, v6}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 307
    iget-object v5, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$2;->this$0:Landroid/support/v7/widget/helper/ItemTouchHelper;

    iget-object v5, v5, Landroid/support/v7/widget/helper/ItemTouchHelper;->mCallback:Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;

    iget-object v6, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$2;->this$0:Landroid/support/v7/widget/helper/ItemTouchHelper;

    # getter for: Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;
    invoke-static {v6}, Landroid/support/v7/widget/helper/ItemTouchHelper;->access$300(Landroid/support/v7/widget/helper/ItemTouchHelper;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v6

    iget-object v7, v1, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;->mViewHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    invoke-virtual {v5, v6, v7}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->clearView(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 309
    :cond_0
    iget-object v5, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$2;->this$0:Landroid/support/v7/widget/helper/ItemTouchHelper;

    iget-object v6, v1, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;->mViewHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    iget v7, v1, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;->mActionState:I

    # invokes: Landroid/support/v7/widget/helper/ItemTouchHelper;->select(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    invoke-static {v5, v6, v7}, Landroid/support/v7/widget/helper/ItemTouchHelper;->access$800(Landroid/support/v7/widget/helper/ItemTouchHelper;Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V

    .line 310
    iget-object v5, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$2;->this$0:Landroid/support/v7/widget/helper/ItemTouchHelper;

    iget-object v6, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$2;->this$0:Landroid/support/v7/widget/helper/ItemTouchHelper;

    iget v6, v6, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSelectedFlags:I

    # invokes: Landroid/support/v7/widget/helper/ItemTouchHelper;->updateDxDy(Landroid/view/MotionEvent;II)V
    invoke-static {v5, p2, v6, v4}, Landroid/support/v7/widget/helper/ItemTouchHelper;->access$900(Landroid/support/v7/widget/helper/ItemTouchHelper;Landroid/view/MotionEvent;II)V

    .line 327
    .end local v1    # "animation":Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;
    :cond_1
    :goto_0
    iget-object v5, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$2;->this$0:Landroid/support/v7/widget/helper/ItemTouchHelper;

    # getter for: Landroid/support/v7/widget/helper/ItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;
    invoke-static {v5}, Landroid/support/v7/widget/helper/ItemTouchHelper;->access$1100(Landroid/support/v7/widget/helper/ItemTouchHelper;)Landroid/view/VelocityTracker;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 328
    iget-object v5, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$2;->this$0:Landroid/support/v7/widget/helper/ItemTouchHelper;

    # getter for: Landroid/support/v7/widget/helper/ItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;
    invoke-static {v5}, Landroid/support/v7/widget/helper/ItemTouchHelper;->access$1100(Landroid/support/v7/widget/helper/ItemTouchHelper;)Landroid/view/VelocityTracker;

    move-result-object v5

    invoke-virtual {v5, p2}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 330
    :cond_2
    iget-object v5, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$2;->this$0:Landroid/support/v7/widget/helper/ItemTouchHelper;

    iget-object v5, v5, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSelected:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    if-eqz v5, :cond_6

    :goto_1
    return v3

    .line 313
    :cond_3
    const/4 v5, 0x3

    if-eq v0, v5, :cond_4

    if-ne v0, v3, :cond_5

    .line 314
    :cond_4
    iget-object v5, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$2;->this$0:Landroid/support/v7/widget/helper/ItemTouchHelper;

    iput v6, v5, Landroid/support/v7/widget/helper/ItemTouchHelper;->mActivePointerId:I

    .line 315
    iget-object v5, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$2;->this$0:Landroid/support/v7/widget/helper/ItemTouchHelper;

    const/4 v6, 0x0

    # invokes: Landroid/support/v7/widget/helper/ItemTouchHelper;->select(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    invoke-static {v5, v6, v4}, Landroid/support/v7/widget/helper/ItemTouchHelper;->access$800(Landroid/support/v7/widget/helper/ItemTouchHelper;Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V

    goto :goto_0

    .line 316
    :cond_5
    iget-object v5, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$2;->this$0:Landroid/support/v7/widget/helper/ItemTouchHelper;

    iget v5, v5, Landroid/support/v7/widget/helper/ItemTouchHelper;->mActivePointerId:I

    if-eq v5, v6, :cond_1

    .line 319
    iget-object v5, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$2;->this$0:Landroid/support/v7/widget/helper/ItemTouchHelper;

    iget v5, v5, Landroid/support/v7/widget/helper/ItemTouchHelper;->mActivePointerId:I

    invoke-static {p2, v5}, Landroid/support/v4/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v2

    .line 323
    .local v2, "index":I
    if-ltz v2, :cond_1

    .line 324
    iget-object v5, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$2;->this$0:Landroid/support/v7/widget/helper/ItemTouchHelper;

    # invokes: Landroid/support/v7/widget/helper/ItemTouchHelper;->checkSelectForSwipe(ILandroid/view/MotionEvent;I)Z
    invoke-static {v5, v0, p2, v2}, Landroid/support/v7/widget/helper/ItemTouchHelper;->access$1000(Landroid/support/v7/widget/helper/ItemTouchHelper;ILandroid/view/MotionEvent;I)Z

    goto :goto_0

    .end local v2    # "index":I
    :cond_6
    move v3, v4

    .line 330
    goto :goto_1
.end method

.method public onRequestDisallowInterceptTouchEvent(Z)V
    .locals 3
    .param p1, "disallowIntercept"    # Z

    .prologue
    .line 399
    if-nez p1, :cond_0

    .line 403
    :goto_0
    return-void

    .line 402
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$2;->this$0:Landroid/support/v7/widget/helper/ItemTouchHelper;

    const/4 v1, 0x0

    const/4 v2, 0x0

    # invokes: Landroid/support/v7/widget/helper/ItemTouchHelper;->select(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    invoke-static {v0, v1, v2}, Landroid/support/v7/widget/helper/ItemTouchHelper;->access$800(Landroid/support/v7/widget/helper/ItemTouchHelper;Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/support/v7/widget/RecyclerView;Landroid/view/MotionEvent;)V
    .locals 10
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/16 v9, 0x3e8

    const/4 v2, 0x0

    const/4 v8, -0x1

    .line 335
    iget-object v6, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$2;->this$0:Landroid/support/v7/widget/helper/ItemTouchHelper;

    # getter for: Landroid/support/v7/widget/helper/ItemTouchHelper;->mGestureDetector:Landroid/support/v4/view/GestureDetectorCompat;
    invoke-static {v6}, Landroid/support/v7/widget/helper/ItemTouchHelper;->access$400(Landroid/support/v7/widget/helper/ItemTouchHelper;)Landroid/support/v4/view/GestureDetectorCompat;

    move-result-object v6

    invoke-virtual {v6, p2}, Landroid/support/v4/view/GestureDetectorCompat;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 340
    iget-object v6, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$2;->this$0:Landroid/support/v7/widget/helper/ItemTouchHelper;

    # getter for: Landroid/support/v7/widget/helper/ItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;
    invoke-static {v6}, Landroid/support/v7/widget/helper/ItemTouchHelper;->access$1100(Landroid/support/v7/widget/helper/ItemTouchHelper;)Landroid/view/VelocityTracker;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 341
    iget-object v6, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$2;->this$0:Landroid/support/v7/widget/helper/ItemTouchHelper;

    # getter for: Landroid/support/v7/widget/helper/ItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;
    invoke-static {v6}, Landroid/support/v7/widget/helper/ItemTouchHelper;->access$1100(Landroid/support/v7/widget/helper/ItemTouchHelper;)Landroid/view/VelocityTracker;

    move-result-object v6

    invoke-virtual {v6, p2}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 343
    :cond_0
    iget-object v6, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$2;->this$0:Landroid/support/v7/widget/helper/ItemTouchHelper;

    iget v6, v6, Landroid/support/v7/widget/helper/ItemTouchHelper;->mActivePointerId:I

    if-ne v6, v8, :cond_2

    .line 395
    :cond_1
    :goto_0
    return-void

    .line 346
    :cond_2
    invoke-static {p2}, Landroid/support/v4/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    move-result v0

    .line 347
    .local v0, "action":I
    iget-object v6, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$2;->this$0:Landroid/support/v7/widget/helper/ItemTouchHelper;

    iget v6, v6, Landroid/support/v7/widget/helper/ItemTouchHelper;->mActivePointerId:I

    invoke-static {p2, v6}, Landroid/support/v4/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v1

    .line 349
    .local v1, "activePointerIndex":I
    if-ltz v1, :cond_3

    .line 350
    iget-object v6, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$2;->this$0:Landroid/support/v7/widget/helper/ItemTouchHelper;

    # invokes: Landroid/support/v7/widget/helper/ItemTouchHelper;->checkSelectForSwipe(ILandroid/view/MotionEvent;I)Z
    invoke-static {v6, v0, p2, v1}, Landroid/support/v7/widget/helper/ItemTouchHelper;->access$1000(Landroid/support/v7/widget/helper/ItemTouchHelper;ILandroid/view/MotionEvent;I)Z

    .line 352
    :cond_3
    iget-object v6, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$2;->this$0:Landroid/support/v7/widget/helper/ItemTouchHelper;

    iget-object v5, v6, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSelected:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .line 353
    .local v5, "viewHolder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    if-eqz v5, :cond_1

    .line 356
    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 370
    :pswitch_1
    iget-object v6, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$2;->this$0:Landroid/support/v7/widget/helper/ItemTouchHelper;

    # getter for: Landroid/support/v7/widget/helper/ItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;
    invoke-static {v6}, Landroid/support/v7/widget/helper/ItemTouchHelper;->access$1100(Landroid/support/v7/widget/helper/ItemTouchHelper;)Landroid/view/VelocityTracker;

    move-result-object v6

    if-eqz v6, :cond_4

    .line 371
    iget-object v6, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$2;->this$0:Landroid/support/v7/widget/helper/ItemTouchHelper;

    # getter for: Landroid/support/v7/widget/helper/ItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;
    invoke-static {v6}, Landroid/support/v7/widget/helper/ItemTouchHelper;->access$1100(Landroid/support/v7/widget/helper/ItemTouchHelper;)Landroid/view/VelocityTracker;

    move-result-object v6

    iget-object v7, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$2;->this$0:Landroid/support/v7/widget/helper/ItemTouchHelper;

    # getter for: Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;
    invoke-static {v7}, Landroid/support/v7/widget/helper/ItemTouchHelper;->access$300(Landroid/support/v7/widget/helper/ItemTouchHelper;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/support/v7/widget/RecyclerView;->getMaxFlingVelocity()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v6, v9, v7}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 374
    :cond_4
    iget-object v6, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$2;->this$0:Landroid/support/v7/widget/helper/ItemTouchHelper;

    const/4 v7, 0x0

    # invokes: Landroid/support/v7/widget/helper/ItemTouchHelper;->select(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    invoke-static {v6, v7, v2}, Landroid/support/v7/widget/helper/ItemTouchHelper;->access$800(Landroid/support/v7/widget/helper/ItemTouchHelper;Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V

    .line 375
    iget-object v6, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$2;->this$0:Landroid/support/v7/widget/helper/ItemTouchHelper;

    iput v8, v6, Landroid/support/v7/widget/helper/ItemTouchHelper;->mActivePointerId:I

    goto :goto_0

    .line 359
    :pswitch_2
    if-ltz v1, :cond_1

    .line 360
    iget-object v6, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$2;->this$0:Landroid/support/v7/widget/helper/ItemTouchHelper;

    iget-object v7, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$2;->this$0:Landroid/support/v7/widget/helper/ItemTouchHelper;

    iget v7, v7, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSelectedFlags:I

    # invokes: Landroid/support/v7/widget/helper/ItemTouchHelper;->updateDxDy(Landroid/view/MotionEvent;II)V
    invoke-static {v6, p2, v7, v1}, Landroid/support/v7/widget/helper/ItemTouchHelper;->access$900(Landroid/support/v7/widget/helper/ItemTouchHelper;Landroid/view/MotionEvent;II)V

    .line 361
    iget-object v6, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$2;->this$0:Landroid/support/v7/widget/helper/ItemTouchHelper;

    # invokes: Landroid/support/v7/widget/helper/ItemTouchHelper;->moveIfNecessary(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    invoke-static {v6, v5}, Landroid/support/v7/widget/helper/ItemTouchHelper;->access$100(Landroid/support/v7/widget/helper/ItemTouchHelper;Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 362
    iget-object v6, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$2;->this$0:Landroid/support/v7/widget/helper/ItemTouchHelper;

    # getter for: Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;
    invoke-static {v6}, Landroid/support/v7/widget/helper/ItemTouchHelper;->access$300(Landroid/support/v7/widget/helper/ItemTouchHelper;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v6

    iget-object v7, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$2;->this$0:Landroid/support/v7/widget/helper/ItemTouchHelper;

    # getter for: Landroid/support/v7/widget/helper/ItemTouchHelper;->mScrollRunnable:Ljava/lang/Runnable;
    invoke-static {v7}, Landroid/support/v7/widget/helper/ItemTouchHelper;->access$200(Landroid/support/v7/widget/helper/ItemTouchHelper;)Ljava/lang/Runnable;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/support/v7/widget/RecyclerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 363
    iget-object v6, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$2;->this$0:Landroid/support/v7/widget/helper/ItemTouchHelper;

    # getter for: Landroid/support/v7/widget/helper/ItemTouchHelper;->mScrollRunnable:Ljava/lang/Runnable;
    invoke-static {v6}, Landroid/support/v7/widget/helper/ItemTouchHelper;->access$200(Landroid/support/v7/widget/helper/ItemTouchHelper;)Ljava/lang/Runnable;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/Runnable;->run()V

    .line 364
    iget-object v6, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$2;->this$0:Landroid/support/v7/widget/helper/ItemTouchHelper;

    # getter for: Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;
    invoke-static {v6}, Landroid/support/v7/widget/helper/ItemTouchHelper;->access$300(Landroid/support/v7/widget/helper/ItemTouchHelper;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/support/v7/widget/RecyclerView;->invalidate()V

    goto :goto_0

    .line 378
    :pswitch_3
    invoke-static {p2}, Landroid/support/v4/view/MotionEventCompat;->getActionIndex(Landroid/view/MotionEvent;)I

    move-result v4

    .line 379
    .local v4, "pointerIndex":I
    invoke-static {p2, v4}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v3

    .line 380
    .local v3, "pointerId":I
    iget-object v6, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$2;->this$0:Landroid/support/v7/widget/helper/ItemTouchHelper;

    iget v6, v6, Landroid/support/v7/widget/helper/ItemTouchHelper;->mActivePointerId:I

    if-ne v3, v6, :cond_1

    .line 381
    iget-object v6, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$2;->this$0:Landroid/support/v7/widget/helper/ItemTouchHelper;

    # getter for: Landroid/support/v7/widget/helper/ItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;
    invoke-static {v6}, Landroid/support/v7/widget/helper/ItemTouchHelper;->access$1100(Landroid/support/v7/widget/helper/ItemTouchHelper;)Landroid/view/VelocityTracker;

    move-result-object v6

    if-eqz v6, :cond_5

    .line 382
    iget-object v6, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$2;->this$0:Landroid/support/v7/widget/helper/ItemTouchHelper;

    # getter for: Landroid/support/v7/widget/helper/ItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;
    invoke-static {v6}, Landroid/support/v7/widget/helper/ItemTouchHelper;->access$1100(Landroid/support/v7/widget/helper/ItemTouchHelper;)Landroid/view/VelocityTracker;

    move-result-object v6

    iget-object v7, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$2;->this$0:Landroid/support/v7/widget/helper/ItemTouchHelper;

    # getter for: Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;
    invoke-static {v7}, Landroid/support/v7/widget/helper/ItemTouchHelper;->access$300(Landroid/support/v7/widget/helper/ItemTouchHelper;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/support/v7/widget/RecyclerView;->getMaxFlingVelocity()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v6, v9, v7}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 388
    :cond_5
    if-nez v4, :cond_6

    const/4 v2, 0x1

    .line 389
    .local v2, "newPointerIndex":I
    :cond_6
    iget-object v6, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$2;->this$0:Landroid/support/v7/widget/helper/ItemTouchHelper;

    invoke-static {p2, v2}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v7

    iput v7, v6, Landroid/support/v7/widget/helper/ItemTouchHelper;->mActivePointerId:I

    .line 390
    iget-object v6, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$2;->this$0:Landroid/support/v7/widget/helper/ItemTouchHelper;

    iget-object v7, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$2;->this$0:Landroid/support/v7/widget/helper/ItemTouchHelper;

    iget v7, v7, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSelectedFlags:I

    # invokes: Landroid/support/v7/widget/helper/ItemTouchHelper;->updateDxDy(Landroid/view/MotionEvent;II)V
    invoke-static {v6, p2, v7, v4}, Landroid/support/v7/widget/helper/ItemTouchHelper;->access$900(Landroid/support/v7/widget/helper/ItemTouchHelper;Landroid/view/MotionEvent;II)V

    goto/16 :goto_0

    .line 356
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
