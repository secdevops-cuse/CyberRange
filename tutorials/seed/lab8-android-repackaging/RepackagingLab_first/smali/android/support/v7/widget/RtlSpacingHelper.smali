.class Landroid/support/v7/widget/RtlSpacingHelper;
.super Ljava/lang/Object;
.source "RtlSpacingHelper.java"


# static fields
.field public static final UNDEFINED:I = -0x80000000


# instance fields
.field private mEnd:I

.field private mExplicitLeft:I

.field private mExplicitRight:I

.field private mIsRelative:Z

.field private mIsRtl:Z

.field private mLeft:I

.field private mRight:I

.field private mStart:I


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    const/high16 v1, -0x80000000

    const/4 v0, 0x0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput v0, p0, Landroid/support/v7/widget/RtlSpacingHelper;->mLeft:I

    .line 29
    iput v0, p0, Landroid/support/v7/widget/RtlSpacingHelper;->mRight:I

    .line 30
    iput v1, p0, Landroid/support/v7/widget/RtlSpacingHelper;->mStart:I

    .line 31
    iput v1, p0, Landroid/support/v7/widget/RtlSpacingHelper;->mEnd:I

    .line 32
    iput v0, p0, Landroid/support/v7/widget/RtlSpacingHelper;->mExplicitLeft:I

    .line 33
    iput v0, p0, Landroid/support/v7/widget/RtlSpacingHelper;->mExplicitRight:I

    .line 35
    iput-boolean v0, p0, Landroid/support/v7/widget/RtlSpacingHelper;->mIsRtl:Z

    .line 36
    iput-boolean v0, p0, Landroid/support/v7/widget/RtlSpacingHelper;->mIsRelative:Z

    return-void
.end method


# virtual methods
.method public getEnd()I
    .locals 1

    .prologue
    .line 51
    iget-boolean v0, p0, Landroid/support/v7/widget/RtlSpacingHelper;->mIsRtl:Z

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/support/v7/widget/RtlSpacingHelper;->mLeft:I

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Landroid/support/v7/widget/RtlSpacingHelper;->mRight:I

    goto :goto_0
.end method

.method public getLeft()I
    .locals 1

    .prologue
    .line 39
    iget v0, p0, Landroid/support/v7/widget/RtlSpacingHelper;->mLeft:I

    return v0
.end method

.method public getRight()I
    .locals 1

    .prologue
    .line 43
    iget v0, p0, Landroid/support/v7/widget/RtlSpacingHelper;->mRight:I

    return v0
.end method

.method public getStart()I
    .locals 1

    .prologue
    .line 47
    iget-boolean v0, p0, Landroid/support/v7/widget/RtlSpacingHelper;->mIsRtl:Z

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/support/v7/widget/RtlSpacingHelper;->mRight:I

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Landroid/support/v7/widget/RtlSpacingHelper;->mLeft:I

    goto :goto_0
.end method

.method public setAbsolute(II)V
    .locals 2
    .param p1, "left"    # I
    .param p2, "right"    # I

    .prologue
    const/high16 v1, -0x80000000

    .line 68
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/RtlSpacingHelper;->mIsRelative:Z

    .line 69
    if-eq p1, v1, :cond_0

    iput p1, p0, Landroid/support/v7/widget/RtlSpacingHelper;->mExplicitLeft:I

    iput p1, p0, Landroid/support/v7/widget/RtlSpacingHelper;->mLeft:I

    .line 70
    :cond_0
    if-eq p2, v1, :cond_1

    iput p2, p0, Landroid/support/v7/widget/RtlSpacingHelper;->mExplicitRight:I

    iput p2, p0, Landroid/support/v7/widget/RtlSpacingHelper;->mRight:I

    .line 71
    :cond_1
    return-void
.end method

.method public setDirection(Z)V
    .locals 2
    .param p1, "isRtl"    # Z

    .prologue
    const/high16 v1, -0x80000000

    .line 74
    iget-boolean v0, p0, Landroid/support/v7/widget/RtlSpacingHelper;->mIsRtl:Z

    if-ne p1, v0, :cond_0

    .line 90
    :goto_0
    return-void

    .line 77
    :cond_0
    iput-boolean p1, p0, Landroid/support/v7/widget/RtlSpacingHelper;->mIsRtl:Z

    .line 78
    iget-boolean v0, p0, Landroid/support/v7/widget/RtlSpacingHelper;->mIsRelative:Z

    if-eqz v0, :cond_6

    .line 79
    if-eqz p1, :cond_3

    .line 80
    iget v0, p0, Landroid/support/v7/widget/RtlSpacingHelper;->mEnd:I

    if-eq v0, v1, :cond_1

    iget v0, p0, Landroid/support/v7/widget/RtlSpacingHelper;->mEnd:I

    :goto_1
    iput v0, p0, Landroid/support/v7/widget/RtlSpacingHelper;->mLeft:I

    .line 81
    iget v0, p0, Landroid/support/v7/widget/RtlSpacingHelper;->mStart:I

    if-eq v0, v1, :cond_2

    iget v0, p0, Landroid/support/v7/widget/RtlSpacingHelper;->mStart:I

    :goto_2
    iput v0, p0, Landroid/support/v7/widget/RtlSpacingHelper;->mRight:I

    goto :goto_0

    .line 80
    :cond_1
    iget v0, p0, Landroid/support/v7/widget/RtlSpacingHelper;->mExplicitLeft:I

    goto :goto_1

    .line 81
    :cond_2
    iget v0, p0, Landroid/support/v7/widget/RtlSpacingHelper;->mExplicitRight:I

    goto :goto_2

    .line 83
    :cond_3
    iget v0, p0, Landroid/support/v7/widget/RtlSpacingHelper;->mStart:I

    if-eq v0, v1, :cond_4

    iget v0, p0, Landroid/support/v7/widget/RtlSpacingHelper;->mStart:I

    :goto_3
    iput v0, p0, Landroid/support/v7/widget/RtlSpacingHelper;->mLeft:I

    .line 84
    iget v0, p0, Landroid/support/v7/widget/RtlSpacingHelper;->mEnd:I

    if-eq v0, v1, :cond_5

    iget v0, p0, Landroid/support/v7/widget/RtlSpacingHelper;->mEnd:I

    :goto_4
    iput v0, p0, Landroid/support/v7/widget/RtlSpacingHelper;->mRight:I

    goto :goto_0

    .line 83
    :cond_4
    iget v0, p0, Landroid/support/v7/widget/RtlSpacingHelper;->mExplicitLeft:I

    goto :goto_3

    .line 84
    :cond_5
    iget v0, p0, Landroid/support/v7/widget/RtlSpacingHelper;->mExplicitRight:I

    goto :goto_4

    .line 87
    :cond_6
    iget v0, p0, Landroid/support/v7/widget/RtlSpacingHelper;->mExplicitLeft:I

    iput v0, p0, Landroid/support/v7/widget/RtlSpacingHelper;->mLeft:I

    .line 88
    iget v0, p0, Landroid/support/v7/widget/RtlSpacingHelper;->mExplicitRight:I

    iput v0, p0, Landroid/support/v7/widget/RtlSpacingHelper;->mRight:I

    goto :goto_0
.end method

.method public setRelative(II)V
    .locals 2
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    const/high16 v1, -0x80000000

    .line 55
    iput p1, p0, Landroid/support/v7/widget/RtlSpacingHelper;->mStart:I

    .line 56
    iput p2, p0, Landroid/support/v7/widget/RtlSpacingHelper;->mEnd:I

    .line 57
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/RtlSpacingHelper;->mIsRelative:Z

    .line 58
    iget-boolean v0, p0, Landroid/support/v7/widget/RtlSpacingHelper;->mIsRtl:Z

    if-eqz v0, :cond_2

    .line 59
    if-eq p2, v1, :cond_0

    iput p2, p0, Landroid/support/v7/widget/RtlSpacingHelper;->mLeft:I

    .line 60
    :cond_0
    if-eq p1, v1, :cond_1

    iput p1, p0, Landroid/support/v7/widget/RtlSpacingHelper;->mRight:I

    .line 65
    :cond_1
    :goto_0
    return-void

    .line 62
    :cond_2
    if-eq p1, v1, :cond_3

    iput p1, p0, Landroid/support/v7/widget/RtlSpacingHelper;->mLeft:I

    .line 63
    :cond_3
    if-eq p2, v1, :cond_1

    iput p2, p0, Landroid/support/v7/widget/RtlSpacingHelper;->mRight:I

    goto :goto_0
.end method
