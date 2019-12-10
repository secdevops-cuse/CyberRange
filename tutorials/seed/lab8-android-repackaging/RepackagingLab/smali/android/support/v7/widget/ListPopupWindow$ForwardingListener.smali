.class public abstract Landroid/support/v7/widget/ListPopupWindow$ForwardingListener;
.super Ljava/lang/Object;
.source "ListPopupWindow.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/ListPopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ForwardingListener"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/widget/ListPopupWindow$ForwardingListener$TriggerLongPress;,
        Landroid/support/v7/widget/ListPopupWindow$ForwardingListener$DisallowIntercept;
    }
.end annotation


# instance fields
.field private mActivePointerId:I

.field private mDisallowIntercept:Ljava/lang/Runnable;

.field private mForwarding:Z

.field private final mLongPressTimeout:I

.field private final mScaledTouchSlop:F

.field private final mSrc:Landroid/view/View;

.field private final mTapTimeout:I

.field private final mTmpLocation:[I

.field private mTriggerLongPress:Ljava/lang/Runnable;

.field private mWasLongPress:Z


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 2
    .param p1, "src"    # Landroid/view/View;

    .prologue
    .line 1281
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1279
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/support/v7/widget/ListPopupWindow$ForwardingListener;->mTmpLocation:[I

    .line 1282
    iput-object p1, p0, Landroid/support/v7/widget/ListPopupWindow$ForwardingListener;->mSrc:Landroid/view/View;

    .line 1283
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Landroid/support/v7/widget/ListPopupWindow$ForwardingListener;->mScaledTouchSlop:F

    .line 1284
    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/ListPopupWindow$ForwardingListener;->mTapTimeout:I

    .line 1286
    iget v0, p0, Landroid/support/v7/widget/ListPopupWindow$ForwardingListener;->mTapTimeout:I

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v1

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Landroid/support/v7/widget/ListPopupWindow$ForwardingListener;->mLongPressTimeout:I

    .line 1287
    return-void
.end method

.method static synthetic access$1000(Landroid/support/v7/widget/ListPopupWindow$ForwardingListener;)V
    .locals 0
    .param p0, "x0"    # Landroid/support/v7/widget/ListPopupWindow$ForwardingListener;

    .prologue
    .line 1248
    invoke-direct {p0}, Landroid/support/v7/widget/ListPopupWindow$ForwardingListener;->onLongPress()V

    return-void
.end method

.method static synthetic access$900(Landroid/support/v7/widget/ListPopupWindow$ForwardingListener;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Landroid/support/v7/widget/ListPopupWindow$ForwardingListener;

    .prologue
    .line 1248
    iget-object v0, p0, Landroid/support/v7/widget/ListPopupWindow$ForwardingListener;->mSrc:Landroid/view/View;

    return-object v0
.end method

.method private clearCallbacks()V
    .locals 2

    .prologue
    .line 1411
    iget-object v0, p0, Landroid/support/v7/widget/ListPopupWindow$ForwardingListener;->mTriggerLongPress:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 1412
    iget-object v0, p0, Landroid/support/v7/widget/ListPopupWindow$ForwardingListener;->mSrc:Landroid/view/View;

    iget-object v1, p0, Landroid/support/v7/widget/ListPopupWindow$ForwardingListener;->mTriggerLongPress:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1415
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/ListPopupWindow$ForwardingListener;->mDisallowIntercept:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 1416
    iget-object v0, p0, Landroid/support/v7/widget/ListPopupWindow$ForwardingListener;->mSrc:Landroid/view/View;

    iget-object v1, p0, Landroid/support/v7/widget/ListPopupWindow$ForwardingListener;->mDisallowIntercept:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1418
    :cond_1
    return-void
.end method

.method private onLongPress()V
    .locals 11

    .prologue
    const/4 v5, 0x0

    const/4 v10, 0x1

    .line 1421
    invoke-direct {p0}, Landroid/support/v7/widget/ListPopupWindow$ForwardingListener;->clearCallbacks()V

    .line 1423
    iget-object v9, p0, Landroid/support/v7/widget/ListPopupWindow$ForwardingListener;->mSrc:Landroid/view/View;

    .line 1424
    .local v9, "src":Landroid/view/View;
    invoke-virtual {v9}, Landroid/view/View;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v9}, Landroid/view/View;->isLongClickable()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1445
    :cond_0
    :goto_0
    return-void

    .line 1430
    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/widget/ListPopupWindow$ForwardingListener;->onForwardingStarted()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1435
    invoke-virtual {v9}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    invoke-interface {v2, v10}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 1438
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 1439
    .local v0, "now":J
    const/4 v4, 0x3

    const/4 v7, 0x0

    move-wide v2, v0

    move v6, v5

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v8

    .line 1440
    .local v8, "e":Landroid/view/MotionEvent;
    invoke-virtual {v9, v8}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1441
    invoke-virtual {v8}, Landroid/view/MotionEvent;->recycle()V

    .line 1443
    iput-boolean v10, p0, Landroid/support/v7/widget/ListPopupWindow$ForwardingListener;->mForwarding:Z

    .line 1444
    iput-boolean v10, p0, Landroid/support/v7/widget/ListPopupWindow$ForwardingListener;->mWasLongPress:Z

    goto :goto_0
.end method

.method private onTouchForwarded(Landroid/view/MotionEvent;)Z
    .locals 10
    .param p1, "srcEvent"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 1454
    iget-object v6, p0, Landroid/support/v7/widget/ListPopupWindow$ForwardingListener;->mSrc:Landroid/view/View;

    .line 1455
    .local v6, "src":Landroid/view/View;
    invoke-virtual {p0}, Landroid/support/v7/widget/ListPopupWindow$ForwardingListener;->getPopup()Landroid/support/v7/widget/ListPopupWindow;

    move-result-object v5

    .line 1456
    .local v5, "popup":Landroid/support/v7/widget/ListPopupWindow;
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Landroid/support/v7/widget/ListPopupWindow;->isShowing()Z

    move-result v9

    if-nez v9, :cond_1

    .line 1479
    :cond_0
    :goto_0
    return v8

    .line 1460
    :cond_1
    # getter for: Landroid/support/v7/widget/ListPopupWindow;->mDropDownList:Landroid/support/v7/widget/ListPopupWindow$DropDownListView;
    invoke-static {v5}, Landroid/support/v7/widget/ListPopupWindow;->access$600(Landroid/support/v7/widget/ListPopupWindow;)Landroid/support/v7/widget/ListPopupWindow$DropDownListView;

    move-result-object v1

    .line 1461
    .local v1, "dst":Landroid/support/v7/widget/ListPopupWindow$DropDownListView;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/support/v7/widget/ListPopupWindow$DropDownListView;->isShown()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 1466
    invoke-static {p1}, Landroid/view/MotionEvent;->obtainNoHistory(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v2

    .line 1467
    .local v2, "dstEvent":Landroid/view/MotionEvent;
    invoke-direct {p0, v6, v2}, Landroid/support/v7/widget/ListPopupWindow$ForwardingListener;->toGlobalMotionEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z

    .line 1468
    invoke-direct {p0, v1, v2}, Landroid/support/v7/widget/ListPopupWindow$ForwardingListener;->toLocalMotionEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z

    .line 1471
    iget v9, p0, Landroid/support/v7/widget/ListPopupWindow$ForwardingListener;->mActivePointerId:I

    invoke-virtual {v1, v2, v9}, Landroid/support/v7/widget/ListPopupWindow$DropDownListView;->onForwardedEvent(Landroid/view/MotionEvent;I)Z

    move-result v3

    .line 1472
    .local v3, "handled":Z
    invoke-virtual {v2}, Landroid/view/MotionEvent;->recycle()V

    .line 1475
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    move-result v0

    .line 1476
    .local v0, "action":I
    if-eq v0, v7, :cond_2

    const/4 v9, 0x3

    if-eq v0, v9, :cond_2

    move v4, v7

    .line 1479
    .local v4, "keepForwarding":Z
    :goto_1
    if-eqz v3, :cond_3

    if-eqz v4, :cond_3

    :goto_2
    move v8, v7

    goto :goto_0

    .end local v4    # "keepForwarding":Z
    :cond_2
    move v4, v8

    .line 1476
    goto :goto_1

    .restart local v4    # "keepForwarding":Z
    :cond_3
    move v7, v8

    .line 1479
    goto :goto_2
.end method

.method private onTouchObserved(Landroid/view/MotionEvent;)Z
    .locals 11
    .param p1, "srcEvent"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v10, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1367
    iget-object v2, p0, Landroid/support/v7/widget/ListPopupWindow$ForwardingListener;->mSrc:Landroid/view/View;

    .line 1368
    .local v2, "src":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->isEnabled()Z

    move-result v7

    if-nez v7, :cond_1

    .line 1407
    :cond_0
    :goto_0
    return v5

    .line 1372
    :cond_1
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    move-result v0

    .line 1373
    .local v0, "actionMasked":I
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1375
    :pswitch_0
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v6

    iput v6, p0, Landroid/support/v7/widget/ListPopupWindow$ForwardingListener;->mActivePointerId:I

    .line 1376
    iput-boolean v5, p0, Landroid/support/v7/widget/ListPopupWindow$ForwardingListener;->mWasLongPress:Z

    .line 1378
    iget-object v6, p0, Landroid/support/v7/widget/ListPopupWindow$ForwardingListener;->mDisallowIntercept:Ljava/lang/Runnable;

    if-nez v6, :cond_2

    .line 1379
    new-instance v6, Landroid/support/v7/widget/ListPopupWindow$ForwardingListener$DisallowIntercept;

    invoke-direct {v6, p0, v10}, Landroid/support/v7/widget/ListPopupWindow$ForwardingListener$DisallowIntercept;-><init>(Landroid/support/v7/widget/ListPopupWindow$ForwardingListener;Landroid/support/v7/widget/ListPopupWindow$1;)V

    iput-object v6, p0, Landroid/support/v7/widget/ListPopupWindow$ForwardingListener;->mDisallowIntercept:Ljava/lang/Runnable;

    .line 1381
    :cond_2
    iget-object v6, p0, Landroid/support/v7/widget/ListPopupWindow$ForwardingListener;->mDisallowIntercept:Ljava/lang/Runnable;

    iget v7, p0, Landroid/support/v7/widget/ListPopupWindow$ForwardingListener;->mTapTimeout:I

    int-to-long v8, v7

    invoke-virtual {v2, v6, v8, v9}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1382
    iget-object v6, p0, Landroid/support/v7/widget/ListPopupWindow$ForwardingListener;->mTriggerLongPress:Ljava/lang/Runnable;

    if-nez v6, :cond_3

    .line 1383
    new-instance v6, Landroid/support/v7/widget/ListPopupWindow$ForwardingListener$TriggerLongPress;

    invoke-direct {v6, p0, v10}, Landroid/support/v7/widget/ListPopupWindow$ForwardingListener$TriggerLongPress;-><init>(Landroid/support/v7/widget/ListPopupWindow$ForwardingListener;Landroid/support/v7/widget/ListPopupWindow$1;)V

    iput-object v6, p0, Landroid/support/v7/widget/ListPopupWindow$ForwardingListener;->mTriggerLongPress:Ljava/lang/Runnable;

    .line 1385
    :cond_3
    iget-object v6, p0, Landroid/support/v7/widget/ListPopupWindow$ForwardingListener;->mTriggerLongPress:Ljava/lang/Runnable;

    iget v7, p0, Landroid/support/v7/widget/ListPopupWindow$ForwardingListener;->mLongPressTimeout:I

    int-to-long v8, v7

    invoke-virtual {v2, v6, v8, v9}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 1388
    :pswitch_1
    iget v7, p0, Landroid/support/v7/widget/ListPopupWindow$ForwardingListener;->mActivePointerId:I

    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v1

    .line 1389
    .local v1, "activePointerIndex":I
    if-ltz v1, :cond_0

    .line 1390
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    .line 1391
    .local v3, "x":F
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    .line 1392
    .local v4, "y":F
    iget v7, p0, Landroid/support/v7/widget/ListPopupWindow$ForwardingListener;->mScaledTouchSlop:F

    invoke-static {v2, v3, v4, v7}, Landroid/support/v7/widget/ListPopupWindow$ForwardingListener;->pointInView(Landroid/view/View;FFF)Z

    move-result v7

    if-nez v7, :cond_0

    .line 1393
    invoke-direct {p0}, Landroid/support/v7/widget/ListPopupWindow$ForwardingListener;->clearCallbacks()V

    .line 1396
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    invoke-interface {v5, v6}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    move v5, v6

    .line 1397
    goto :goto_0

    .line 1403
    .end local v1    # "activePointerIndex":I
    .end local v3    # "x":F
    .end local v4    # "y":F
    :pswitch_2
    invoke-direct {p0}, Landroid/support/v7/widget/ListPopupWindow$ForwardingListener;->clearCallbacks()V

    goto :goto_0

    .line 1373
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static pointInView(Landroid/view/View;FFF)Z
    .locals 2
    .param p0, "view"    # Landroid/view/View;
    .param p1, "localX"    # F
    .param p2, "localY"    # F
    .param p3, "slop"    # F

    .prologue
    .line 1483
    neg-float v0, p3

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    neg-float v0, p3

    cmpl-float v0, p2, v0

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    add-float/2addr v0, p3

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    add-float/2addr v0, p3

    cmpg-float v0, p2, v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private toGlobalMotionEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x1

    .line 1504
    iget-object v0, p0, Landroid/support/v7/widget/ListPopupWindow$ForwardingListener;->mTmpLocation:[I

    .line 1505
    .local v0, "loc":[I
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1506
    const/4 v1, 0x0

    aget v1, v0, v1

    int-to-float v1, v1

    aget v2, v0, v3

    int-to-float v2, v2

    invoke-virtual {p2, v1, v2}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 1507
    return v3
.end method

.method private toLocalMotionEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x1

    .line 1493
    iget-object v0, p0, Landroid/support/v7/widget/ListPopupWindow$ForwardingListener;->mTmpLocation:[I

    .line 1494
    .local v0, "loc":[I
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1495
    const/4 v1, 0x0

    aget v1, v0, v1

    neg-int v1, v1

    int-to-float v1, v1

    aget v2, v0, v3

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {p2, v1, v2}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 1496
    return v3
.end method


# virtual methods
.method public abstract getPopup()Landroid/support/v7/widget/ListPopupWindow;
.end method

.method protected onForwardingStarted()Z
    .locals 2

    .prologue
    .line 1339
    invoke-virtual {p0}, Landroid/support/v7/widget/ListPopupWindow$ForwardingListener;->getPopup()Landroid/support/v7/widget/ListPopupWindow;

    move-result-object v0

    .line 1340
    .local v0, "popup":Landroid/support/v7/widget/ListPopupWindow;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/v7/widget/ListPopupWindow;->isShowing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1341
    invoke-virtual {v0}, Landroid/support/v7/widget/ListPopupWindow;->show()V

    .line 1343
    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method protected onForwardingStopped()Z
    .locals 2

    .prologue
    .line 1353
    invoke-virtual {p0}, Landroid/support/v7/widget/ListPopupWindow$ForwardingListener;->getPopup()Landroid/support/v7/widget/ListPopupWindow;

    move-result-object v0

    .line 1354
    .local v0, "popup":Landroid/support/v7/widget/ListPopupWindow;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/v7/widget/ListPopupWindow;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1355
    invoke-virtual {v0}, Landroid/support/v7/widget/ListPopupWindow;->dismiss()V

    .line 1357
    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 12
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v5, 0x0

    const/4 v11, 0x1

    const/4 v7, 0x0

    .line 1303
    iget-boolean v10, p0, Landroid/support/v7/widget/ListPopupWindow$ForwardingListener;->mForwarding:Z

    .line 1305
    .local v10, "wasForwarding":Z
    if-eqz v10, :cond_6

    .line 1306
    iget-boolean v2, p0, Landroid/support/v7/widget/ListPopupWindow$ForwardingListener;->mWasLongPress:Z

    if-eqz v2, :cond_3

    .line 1310
    invoke-direct {p0, p2}, Landroid/support/v7/widget/ListPopupWindow$ForwardingListener;->onTouchForwarded(Landroid/view/MotionEvent;)Z

    move-result v9

    .line 1327
    .local v9, "forwarding":Z
    :cond_0
    :goto_0
    iput-boolean v9, p0, Landroid/support/v7/widget/ListPopupWindow$ForwardingListener;->mForwarding:Z

    .line 1328
    if-nez v9, :cond_1

    if-eqz v10, :cond_2

    :cond_1
    move v7, v11

    :cond_2
    return v7

    .line 1312
    .end local v9    # "forwarding":Z
    :cond_3
    invoke-direct {p0, p2}, Landroid/support/v7/widget/ListPopupWindow$ForwardingListener;->onTouchForwarded(Landroid/view/MotionEvent;)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {p0}, Landroid/support/v7/widget/ListPopupWindow$ForwardingListener;->onForwardingStopped()Z

    move-result v2

    if-nez v2, :cond_5

    :cond_4
    move v9, v11

    .restart local v9    # "forwarding":Z
    :goto_1
    goto :goto_0

    .end local v9    # "forwarding":Z
    :cond_5
    move v9, v7

    goto :goto_1

    .line 1315
    :cond_6
    invoke-direct {p0, p2}, Landroid/support/v7/widget/ListPopupWindow$ForwardingListener;->onTouchObserved(Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-virtual {p0}, Landroid/support/v7/widget/ListPopupWindow$ForwardingListener;->onForwardingStarted()Z

    move-result v2

    if-eqz v2, :cond_7

    move v9, v11

    .line 1317
    .restart local v9    # "forwarding":Z
    :goto_2
    if-eqz v9, :cond_0

    .line 1319
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 1320
    .local v0, "now":J
    const/4 v4, 0x3

    move-wide v2, v0

    move v6, v5

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v8

    .line 1322
    .local v8, "e":Landroid/view/MotionEvent;
    iget-object v2, p0, Landroid/support/v7/widget/ListPopupWindow$ForwardingListener;->mSrc:Landroid/view/View;

    invoke-virtual {v2, v8}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1323
    invoke-virtual {v8}, Landroid/view/MotionEvent;->recycle()V

    goto :goto_0

    .end local v0    # "now":J
    .end local v8    # "e":Landroid/view/MotionEvent;
    .end local v9    # "forwarding":Z
    :cond_7
    move v9, v7

    .line 1315
    goto :goto_2
.end method
