.class Landroid/support/design/widget/StateListAnimator$Tuple;
.super Ljava/lang/Object;
.source "StateListAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/widget/StateListAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Tuple"
.end annotation


# instance fields
.field final mAnimation:Landroid/view/animation/Animation;

.field final mSpecs:[I


# direct methods
.method private constructor <init>([ILandroid/view/animation/Animation;)V
    .locals 0
    .param p1, "specs"    # [I
    .param p2, "Animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 180
    iput-object p1, p0, Landroid/support/design/widget/StateListAnimator$Tuple;->mSpecs:[I

    .line 181
    iput-object p2, p0, Landroid/support/design/widget/StateListAnimator$Tuple;->mAnimation:Landroid/view/animation/Animation;

    .line 182
    return-void
.end method

.method synthetic constructor <init>([ILandroid/view/animation/Animation;Landroid/support/design/widget/StateListAnimator$1;)V
    .locals 0
    .param p1, "x0"    # [I
    .param p2, "x1"    # Landroid/view/animation/Animation;
    .param p3, "x2"    # Landroid/support/design/widget/StateListAnimator$1;

    .prologue
    .line 175
    invoke-direct {p0, p1, p2}, Landroid/support/design/widget/StateListAnimator$Tuple;-><init>([ILandroid/view/animation/Animation;)V

    return-void
.end method


# virtual methods
.method getAnimation()Landroid/view/animation/Animation;
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Landroid/support/design/widget/StateListAnimator$Tuple;->mAnimation:Landroid/view/animation/Animation;

    return-object v0
.end method

.method getSpecs()[I
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Landroid/support/design/widget/StateListAnimator$Tuple;->mSpecs:[I

    return-object v0
.end method
