.class Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;
.super Ljava/lang/Object;
.source "ItemTouchHelper.java"

# interfaces
.implements Landroid/support/v4/animation/AnimatorListenerCompat;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/helper/ItemTouchHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RecoverAnimation"
.end annotation


# instance fields
.field final mActionState:I

.field private final mAnimationType:I

.field private mEnded:Z

.field private mFraction:F

.field public mIsPendingCleanup:Z

.field mOverridden:Z

.field final mStartDx:F

.field final mStartDy:F

.field final mTargetX:F

.field final mTargetY:F

.field private final mValueAnimator:Landroid/support/v4/animation/ValueAnimatorCompat;

.field final mViewHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

.field mX:F

.field mY:F

.field final synthetic this$0:Landroid/support/v7/widget/helper/ItemTouchHelper;


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/helper/ItemTouchHelper;Landroid/support/v7/widget/RecyclerView$ViewHolder;IIFFFF)V
    .locals 2
    .param p2, "viewHolder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .param p3, "animationType"    # I
    .param p4, "actionState"    # I
    .param p5, "startDx"    # F
    .param p6, "startDy"    # F
    .param p7, "targetX"    # F
    .param p8, "targetY"    # F

    .prologue
    const/4 v0, 0x0

    .line 2253
    iput-object p1, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;->this$0:Landroid/support/v7/widget/helper/ItemTouchHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2246
    iput-boolean v0, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;->mOverridden:Z

    .line 2248
    iput-boolean v0, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;->mEnded:Z

    .line 2254
    iput p4, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;->mActionState:I

    .line 2255
    iput p3, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;->mAnimationType:I

    .line 2256
    iput-object p2, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;->mViewHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .line 2257
    iput p5, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;->mStartDx:F

    .line 2258
    iput p6, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;->mStartDy:F

    .line 2259
    iput p7, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;->mTargetX:F

    .line 2260
    iput p8, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;->mTargetY:F

    .line 2261
    invoke-static {}, Landroid/support/v4/animation/AnimatorCompatHelper;->emptyValueAnimator()Landroid/support/v4/animation/ValueAnimatorCompat;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;->mValueAnimator:Landroid/support/v4/animation/ValueAnimatorCompat;

    .line 2262
    iget-object v0, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;->mValueAnimator:Landroid/support/v4/animation/ValueAnimatorCompat;

    new-instance v1, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation$1;

    invoke-direct {v1, p0, p1}, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation$1;-><init>(Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;Landroid/support/v7/widget/helper/ItemTouchHelper;)V

    invoke-interface {v0, v1}, Landroid/support/v4/animation/ValueAnimatorCompat;->addUpdateListener(Landroid/support/v4/animation/AnimatorUpdateListenerCompat;)V

    .line 2269
    iget-object v0, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;->mValueAnimator:Landroid/support/v4/animation/ValueAnimatorCompat;

    iget-object v1, p2, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/support/v4/animation/ValueAnimatorCompat;->setTarget(Landroid/view/View;)V

    .line 2270
    iget-object v0, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;->mValueAnimator:Landroid/support/v4/animation/ValueAnimatorCompat;

    invoke-interface {v0, p0}, Landroid/support/v4/animation/ValueAnimatorCompat;->addListener(Landroid/support/v4/animation/AnimatorListenerCompat;)V

    .line 2271
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;->setFraction(F)V

    .line 2272
    return-void
.end method

.method static synthetic access$1900(Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;)Z
    .locals 1
    .param p0, "x0"    # Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;

    .prologue
    .line 2220
    iget-boolean v0, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;->mEnded:Z

    return v0
.end method

.method static synthetic access$2000(Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;)I
    .locals 1
    .param p0, "x0"    # Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;

    .prologue
    .line 2220
    iget v0, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;->mAnimationType:I

    return v0
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 2284
    iget-object v0, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;->mValueAnimator:Landroid/support/v4/animation/ValueAnimatorCompat;

    invoke-interface {v0}, Landroid/support/v4/animation/ValueAnimatorCompat;->cancel()V

    .line 2285
    return-void
.end method

.method public onAnimationCancel(Landroid/support/v4/animation/ValueAnimatorCompat;)V
    .locals 1
    .param p1, "animation"    # Landroid/support/v4/animation/ValueAnimatorCompat;

    .prologue
    .line 2323
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;->setFraction(F)V

    .line 2324
    return-void
.end method

.method public onAnimationEnd(Landroid/support/v4/animation/ValueAnimatorCompat;)V
    .locals 2
    .param p1, "animation"    # Landroid/support/v4/animation/ValueAnimatorCompat;

    .prologue
    const/4 v1, 0x1

    .line 2315
    iget-boolean v0, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;->mEnded:Z

    if-nez v0, :cond_0

    .line 2316
    iget-object v0, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;->mViewHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->setIsRecyclable(Z)V

    .line 2318
    :cond_0
    iput-boolean v1, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;->mEnded:Z

    .line 2319
    return-void
.end method

.method public onAnimationRepeat(Landroid/support/v4/animation/ValueAnimatorCompat;)V
    .locals 0
    .param p1, "animation"    # Landroid/support/v4/animation/ValueAnimatorCompat;

    .prologue
    .line 2329
    return-void
.end method

.method public onAnimationStart(Landroid/support/v4/animation/ValueAnimatorCompat;)V
    .locals 0
    .param p1, "animation"    # Landroid/support/v4/animation/ValueAnimatorCompat;

    .prologue
    .line 2311
    return-void
.end method

.method public setDuration(J)V
    .locals 1
    .param p1, "duration"    # J

    .prologue
    .line 2275
    iget-object v0, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;->mValueAnimator:Landroid/support/v4/animation/ValueAnimatorCompat;

    invoke-interface {v0, p1, p2}, Landroid/support/v4/animation/ValueAnimatorCompat;->setDuration(J)V

    .line 2276
    return-void
.end method

.method public setFraction(F)V
    .locals 0
    .param p1, "fraction"    # F

    .prologue
    .line 2288
    iput p1, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;->mFraction:F

    .line 2289
    return-void
.end method

.method public start()V
    .locals 2

    .prologue
    .line 2279
    iget-object v0, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;->mViewHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->setIsRecyclable(Z)V

    .line 2280
    iget-object v0, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;->mValueAnimator:Landroid/support/v4/animation/ValueAnimatorCompat;

    invoke-interface {v0}, Landroid/support/v4/animation/ValueAnimatorCompat;->start()V

    .line 2281
    return-void
.end method

.method public update()V
    .locals 4

    .prologue
    .line 2296
    iget v0, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;->mStartDx:F

    iget v1, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;->mTargetX:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 2297
    iget-object v0, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;->mViewHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->getTranslationX(Landroid/view/View;)F

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;->mX:F

    .line 2301
    :goto_0
    iget v0, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;->mStartDy:F

    iget v1, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;->mTargetY:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    .line 2302
    iget-object v0, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;->mViewHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->getTranslationY(Landroid/view/View;)F

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;->mY:F

    .line 2306
    :goto_1
    return-void

    .line 2299
    :cond_0
    iget v0, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;->mStartDx:F

    iget v1, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;->mFraction:F

    iget v2, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;->mTargetX:F

    iget v3, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;->mStartDx:F

    sub-float/2addr v2, v3

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;->mX:F

    goto :goto_0

    .line 2304
    :cond_1
    iget v0, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;->mStartDy:F

    iget v1, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;->mFraction:F

    iget v2, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;->mTargetY:F

    iget v3, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;->mStartDy:F

    sub-float/2addr v2, v3

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;->mY:F

    goto :goto_1
.end method
