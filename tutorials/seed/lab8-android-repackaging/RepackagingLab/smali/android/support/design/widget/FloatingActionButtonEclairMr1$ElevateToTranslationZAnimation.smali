.class Landroid/support/design/widget/FloatingActionButtonEclairMr1$ElevateToTranslationZAnimation;
.super Landroid/support/design/widget/FloatingActionButtonEclairMr1$BaseShadowAnimation;
.source "FloatingActionButtonEclairMr1.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/widget/FloatingActionButtonEclairMr1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ElevateToTranslationZAnimation"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/design/widget/FloatingActionButtonEclairMr1;


# direct methods
.method private constructor <init>(Landroid/support/design/widget/FloatingActionButtonEclairMr1;)V
    .locals 1

    .prologue
    .line 258
    iput-object p1, p0, Landroid/support/design/widget/FloatingActionButtonEclairMr1$ElevateToTranslationZAnimation;->this$0:Landroid/support/design/widget/FloatingActionButtonEclairMr1;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/design/widget/FloatingActionButtonEclairMr1$BaseShadowAnimation;-><init>(Landroid/support/design/widget/FloatingActionButtonEclairMr1;Landroid/support/design/widget/FloatingActionButtonEclairMr1$1;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/design/widget/FloatingActionButtonEclairMr1;Landroid/support/design/widget/FloatingActionButtonEclairMr1$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/support/design/widget/FloatingActionButtonEclairMr1;
    .param p2, "x1"    # Landroid/support/design/widget/FloatingActionButtonEclairMr1$1;

    .prologue
    .line 258
    invoke-direct {p0, p1}, Landroid/support/design/widget/FloatingActionButtonEclairMr1$ElevateToTranslationZAnimation;-><init>(Landroid/support/design/widget/FloatingActionButtonEclairMr1;)V

    return-void
.end method


# virtual methods
.method protected getTargetShadowSize()F
    .locals 2

    .prologue
    .line 261
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonEclairMr1$ElevateToTranslationZAnimation;->this$0:Landroid/support/design/widget/FloatingActionButtonEclairMr1;

    # getter for: Landroid/support/design/widget/FloatingActionButtonEclairMr1;->mElevation:F
    invoke-static {v0}, Landroid/support/design/widget/FloatingActionButtonEclairMr1;->access$400(Landroid/support/design/widget/FloatingActionButtonEclairMr1;)F

    move-result v0

    iget-object v1, p0, Landroid/support/design/widget/FloatingActionButtonEclairMr1$ElevateToTranslationZAnimation;->this$0:Landroid/support/design/widget/FloatingActionButtonEclairMr1;

    # getter for: Landroid/support/design/widget/FloatingActionButtonEclairMr1;->mPressedTranslationZ:F
    invoke-static {v1}, Landroid/support/design/widget/FloatingActionButtonEclairMr1;->access$500(Landroid/support/design/widget/FloatingActionButtonEclairMr1;)F

    move-result v1

    add-float/2addr v0, v1

    return v0
.end method
