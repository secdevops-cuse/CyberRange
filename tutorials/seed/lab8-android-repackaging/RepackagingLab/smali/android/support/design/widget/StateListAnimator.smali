.class final Landroid/support/design/widget/StateListAnimator;
.super Ljava/lang/Object;
.source "StateListAnimator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/design/widget/StateListAnimator$Tuple;
    }
.end annotation


# instance fields
.field private mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

.field private mLastMatch:Landroid/support/design/widget/StateListAnimator$Tuple;

.field private mRunningAnimation:Landroid/view/animation/Animation;

.field private final mTuples:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/design/widget/StateListAnimator$Tuple;",
            ">;"
        }
    .end annotation
.end field

.field private mViewRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/design/widget/StateListAnimator;->mTuples:Ljava/util/ArrayList;

    .line 30
    iput-object v1, p0, Landroid/support/design/widget/StateListAnimator;->mLastMatch:Landroid/support/design/widget/StateListAnimator$Tuple;

    .line 31
    iput-object v1, p0, Landroid/support/design/widget/StateListAnimator;->mRunningAnimation:Landroid/view/animation/Animation;

    .line 34
    new-instance v0, Landroid/support/design/widget/StateListAnimator$1;

    invoke-direct {v0, p0}, Landroid/support/design/widget/StateListAnimator$1;-><init>(Landroid/support/design/widget/StateListAnimator;)V

    iput-object v0, p0, Landroid/support/design/widget/StateListAnimator;->mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    .line 175
    return-void
.end method

.method static synthetic access$000(Landroid/support/design/widget/StateListAnimator;)Landroid/view/animation/Animation;
    .locals 1
    .param p0, "x0"    # Landroid/support/design/widget/StateListAnimator;

    .prologue
    .line 26
    iget-object v0, p0, Landroid/support/design/widget/StateListAnimator;->mRunningAnimation:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$002(Landroid/support/design/widget/StateListAnimator;Landroid/view/animation/Animation;)Landroid/view/animation/Animation;
    .locals 0
    .param p0, "x0"    # Landroid/support/design/widget/StateListAnimator;
    .param p1, "x1"    # Landroid/view/animation/Animation;

    .prologue
    .line 26
    iput-object p1, p0, Landroid/support/design/widget/StateListAnimator;->mRunningAnimation:Landroid/view/animation/Animation;

    return-object p1
.end method

.method private cancel()V
    .locals 3

    .prologue
    .line 146
    iget-object v1, p0, Landroid/support/design/widget/StateListAnimator;->mRunningAnimation:Landroid/view/animation/Animation;

    if-eqz v1, :cond_1

    .line 147
    invoke-virtual {p0}, Landroid/support/design/widget/StateListAnimator;->getTarget()Landroid/view/View;

    move-result-object v0

    .line 148
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v1

    iget-object v2, p0, Landroid/support/design/widget/StateListAnimator;->mRunningAnimation:Landroid/view/animation/Animation;

    if-ne v1, v2, :cond_0

    .line 149
    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 151
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/support/design/widget/StateListAnimator;->mRunningAnimation:Landroid/view/animation/Animation;

    .line 153
    .end local v0    # "view":Landroid/view/View;
    :cond_1
    return-void
.end method

.method private clearTarget()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 95
    invoke-virtual {p0}, Landroid/support/design/widget/StateListAnimator;->getTarget()Landroid/view/View;

    move-result-object v3

    .line 96
    .local v3, "view":Landroid/view/View;
    iget-object v4, p0, Landroid/support/design/widget/StateListAnimator;->mTuples:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 97
    .local v2, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 98
    iget-object v4, p0, Landroid/support/design/widget/StateListAnimator;->mTuples:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/design/widget/StateListAnimator$Tuple;

    iget-object v0, v4, Landroid/support/design/widget/StateListAnimator$Tuple;->mAnimation:Landroid/view/animation/Animation;

    .line 99
    .local v0, "anim":Landroid/view/animation/Animation;
    invoke-virtual {v3}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v4

    if-ne v4, v0, :cond_0

    .line 100
    invoke-virtual {v3}, Landroid/view/View;->clearAnimation()V

    .line 97
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 103
    .end local v0    # "anim":Landroid/view/animation/Animation;
    :cond_1
    iput-object v5, p0, Landroid/support/design/widget/StateListAnimator;->mViewRef:Ljava/lang/ref/WeakReference;

    .line 104
    iput-object v5, p0, Landroid/support/design/widget/StateListAnimator;->mLastMatch:Landroid/support/design/widget/StateListAnimator$Tuple;

    .line 105
    iput-object v5, p0, Landroid/support/design/widget/StateListAnimator;->mRunningAnimation:Landroid/view/animation/Animation;

    .line 106
    return-void
.end method

.method private start(Landroid/support/design/widget/StateListAnimator$Tuple;)V
    .locals 2
    .param p1, "match"    # Landroid/support/design/widget/StateListAnimator$Tuple;

    .prologue
    .line 137
    iget-object v1, p1, Landroid/support/design/widget/StateListAnimator$Tuple;->mAnimation:Landroid/view/animation/Animation;

    iput-object v1, p0, Landroid/support/design/widget/StateListAnimator;->mRunningAnimation:Landroid/view/animation/Animation;

    .line 139
    invoke-virtual {p0}, Landroid/support/design/widget/StateListAnimator;->getTarget()Landroid/view/View;

    move-result-object v0

    .line 140
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 141
    iget-object v1, p0, Landroid/support/design/widget/StateListAnimator;->mRunningAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 143
    :cond_0
    return-void
.end method


# virtual methods
.method public addState([ILandroid/view/animation/Animation;)V
    .locals 2
    .param p1, "specs"    # [I
    .param p2, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 61
    new-instance v0, Landroid/support/design/widget/StateListAnimator$Tuple;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Landroid/support/design/widget/StateListAnimator$Tuple;-><init>([ILandroid/view/animation/Animation;Landroid/support/design/widget/StateListAnimator$1;)V

    .line 62
    .local v0, "tuple":Landroid/support/design/widget/StateListAnimator$Tuple;
    iget-object v1, p0, Landroid/support/design/widget/StateListAnimator;->mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {p2, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 63
    iget-object v1, p0, Landroid/support/design/widget/StateListAnimator;->mTuples:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    return-void
.end method

.method getRunningAnimation()Landroid/view/animation/Animation;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Landroid/support/design/widget/StateListAnimator;->mRunningAnimation:Landroid/view/animation/Animation;

    return-object v0
.end method

.method getTarget()Landroid/view/View;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Landroid/support/design/widget/StateListAnimator;->mViewRef:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/support/design/widget/StateListAnimator;->mViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    goto :goto_0
.end method

.method getTuples()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/design/widget/StateListAnimator$Tuple;",
            ">;"
        }
    .end annotation

    .prologue
    .line 159
    iget-object v0, p0, Landroid/support/design/widget/StateListAnimator;->mTuples:Ljava/util/ArrayList;

    return-object v0
.end method

.method public jumpToCurrentState()V
    .locals 3

    .prologue
    .line 167
    iget-object v1, p0, Landroid/support/design/widget/StateListAnimator;->mRunningAnimation:Landroid/view/animation/Animation;

    if-eqz v1, :cond_0

    .line 168
    invoke-virtual {p0}, Landroid/support/design/widget/StateListAnimator;->getTarget()Landroid/view/View;

    move-result-object v0

    .line 169
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v1

    iget-object v2, p0, Landroid/support/design/widget/StateListAnimator;->mRunningAnimation:Landroid/view/animation/Animation;

    if-ne v1, v2, :cond_0

    .line 170
    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 173
    .end local v0    # "view":Landroid/view/View;
    :cond_0
    return-void
.end method

.method setState([I)V
    .locals 6
    .param p1, "state"    # [I

    .prologue
    .line 112
    const/4 v2, 0x0

    .line 113
    .local v2, "match":Landroid/support/design/widget/StateListAnimator$Tuple;
    iget-object v5, p0, Landroid/support/design/widget/StateListAnimator;->mTuples:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 114
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 115
    iget-object v5, p0, Landroid/support/design/widget/StateListAnimator;->mTuples:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/design/widget/StateListAnimator$Tuple;

    .line 116
    .local v3, "tuple":Landroid/support/design/widget/StateListAnimator$Tuple;
    iget-object v5, v3, Landroid/support/design/widget/StateListAnimator$Tuple;->mSpecs:[I

    invoke-static {v5, p1}, Landroid/util/StateSet;->stateSetMatches([I[I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 117
    move-object v2, v3

    .line 121
    .end local v3    # "tuple":Landroid/support/design/widget/StateListAnimator$Tuple;
    :cond_0
    iget-object v5, p0, Landroid/support/design/widget/StateListAnimator;->mLastMatch:Landroid/support/design/widget/StateListAnimator$Tuple;

    if-ne v2, v5, :cond_3

    .line 134
    :cond_1
    :goto_1
    return-void

    .line 114
    .restart local v3    # "tuple":Landroid/support/design/widget/StateListAnimator$Tuple;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 124
    .end local v3    # "tuple":Landroid/support/design/widget/StateListAnimator$Tuple;
    :cond_3
    iget-object v5, p0, Landroid/support/design/widget/StateListAnimator;->mLastMatch:Landroid/support/design/widget/StateListAnimator$Tuple;

    if-eqz v5, :cond_4

    .line 125
    invoke-direct {p0}, Landroid/support/design/widget/StateListAnimator;->cancel()V

    .line 128
    :cond_4
    iput-object v2, p0, Landroid/support/design/widget/StateListAnimator;->mLastMatch:Landroid/support/design/widget/StateListAnimator$Tuple;

    .line 130
    iget-object v5, p0, Landroid/support/design/widget/StateListAnimator;->mViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 131
    .local v4, "view":Landroid/view/View;
    if-eqz v2, :cond_1

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_1

    .line 132
    invoke-direct {p0, v2}, Landroid/support/design/widget/StateListAnimator;->start(Landroid/support/design/widget/StateListAnimator$Tuple;)V

    goto :goto_1
.end method

.method setTarget(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 82
    invoke-virtual {p0}, Landroid/support/design/widget/StateListAnimator;->getTarget()Landroid/view/View;

    move-result-object v0

    .line 83
    .local v0, "current":Landroid/view/View;
    if-ne v0, p1, :cond_1

    .line 92
    :cond_0
    :goto_0
    return-void

    .line 86
    :cond_1
    if-eqz v0, :cond_2

    .line 87
    invoke-direct {p0}, Landroid/support/design/widget/StateListAnimator;->clearTarget()V

    .line 89
    :cond_2
    if-eqz p1, :cond_0

    .line 90
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Landroid/support/design/widget/StateListAnimator;->mViewRef:Ljava/lang/ref/WeakReference;

    goto :goto_0
.end method
