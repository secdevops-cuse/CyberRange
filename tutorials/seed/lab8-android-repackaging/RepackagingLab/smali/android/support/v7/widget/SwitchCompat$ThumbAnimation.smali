.class Landroid/support/v7/widget/SwitchCompat$ThumbAnimation;
.super Landroid/view/animation/Animation;
.source "SwitchCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/SwitchCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ThumbAnimation"
.end annotation


# instance fields
.field final mDiff:F

.field final mEndPosition:F

.field final mStartPosition:F

.field final synthetic this$0:Landroid/support/v7/widget/SwitchCompat;


# direct methods
.method private constructor <init>(Landroid/support/v7/widget/SwitchCompat;FF)V
    .locals 1
    .param p2, "startPosition"    # F
    .param p3, "endPosition"    # F

    .prologue
    .line 1163
    iput-object p1, p0, Landroid/support/v7/widget/SwitchCompat$ThumbAnimation;->this$0:Landroid/support/v7/widget/SwitchCompat;

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 1164
    iput p2, p0, Landroid/support/v7/widget/SwitchCompat$ThumbAnimation;->mStartPosition:F

    .line 1165
    iput p3, p0, Landroid/support/v7/widget/SwitchCompat$ThumbAnimation;->mEndPosition:F

    .line 1166
    sub-float v0, p3, p2

    iput v0, p0, Landroid/support/v7/widget/SwitchCompat$ThumbAnimation;->mDiff:F

    .line 1167
    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v7/widget/SwitchCompat;FFLandroid/support/v7/widget/SwitchCompat$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/support/v7/widget/SwitchCompat;
    .param p2, "x1"    # F
    .param p3, "x2"    # F
    .param p4, "x3"    # Landroid/support/v7/widget/SwitchCompat$1;

    .prologue
    .line 1158
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/SwitchCompat$ThumbAnimation;-><init>(Landroid/support/v7/widget/SwitchCompat;FF)V

    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 3
    .param p1, "interpolatedTime"    # F
    .param p2, "t"    # Landroid/view/animation/Transformation;

    .prologue
    .line 1171
    iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat$ThumbAnimation;->this$0:Landroid/support/v7/widget/SwitchCompat;

    iget v1, p0, Landroid/support/v7/widget/SwitchCompat$ThumbAnimation;->mStartPosition:F

    iget v2, p0, Landroid/support/v7/widget/SwitchCompat$ThumbAnimation;->mDiff:F

    mul-float/2addr v2, p1

    add-float/2addr v1, v2

    # invokes: Landroid/support/v7/widget/SwitchCompat;->setThumbPosition(F)V
    invoke-static {v0, v1}, Landroid/support/v7/widget/SwitchCompat;->access$200(Landroid/support/v7/widget/SwitchCompat;F)V

    .line 1172
    return-void
.end method
