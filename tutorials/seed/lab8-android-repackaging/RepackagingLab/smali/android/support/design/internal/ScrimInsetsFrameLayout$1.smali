.class Landroid/support/design/internal/ScrimInsetsFrameLayout$1;
.super Ljava/lang/Object;
.source "ScrimInsetsFrameLayout.java"

# interfaces
.implements Landroid/support/v4/view/OnApplyWindowInsetsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/design/internal/ScrimInsetsFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/design/internal/ScrimInsetsFrameLayout;


# direct methods
.method constructor <init>(Landroid/support/design/internal/ScrimInsetsFrameLayout;)V
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Landroid/support/design/internal/ScrimInsetsFrameLayout$1;->this$0:Landroid/support/design/internal/ScrimInsetsFrameLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onApplyWindowInsets(Landroid/view/View;Landroid/support/v4/view/WindowInsetsCompat;)Landroid/support/v4/view/WindowInsetsCompat;
    .locals 5
    .param p1, "v"    # Landroid/view/View;
    .param p2, "insets"    # Landroid/support/v4/view/WindowInsetsCompat;

    .prologue
    .line 66
    iget-object v0, p0, Landroid/support/design/internal/ScrimInsetsFrameLayout$1;->this$0:Landroid/support/design/internal/ScrimInsetsFrameLayout;

    # getter for: Landroid/support/design/internal/ScrimInsetsFrameLayout;->mInsets:Landroid/graphics/Rect;
    invoke-static {v0}, Landroid/support/design/internal/ScrimInsetsFrameLayout;->access$000(Landroid/support/design/internal/ScrimInsetsFrameLayout;)Landroid/graphics/Rect;

    move-result-object v0

    if-nez v0, :cond_0

    .line 67
    iget-object v0, p0, Landroid/support/design/internal/ScrimInsetsFrameLayout$1;->this$0:Landroid/support/design/internal/ScrimInsetsFrameLayout;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    # setter for: Landroid/support/design/internal/ScrimInsetsFrameLayout;->mInsets:Landroid/graphics/Rect;
    invoke-static {v0, v1}, Landroid/support/design/internal/ScrimInsetsFrameLayout;->access$002(Landroid/support/design/internal/ScrimInsetsFrameLayout;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    .line 69
    :cond_0
    iget-object v0, p0, Landroid/support/design/internal/ScrimInsetsFrameLayout$1;->this$0:Landroid/support/design/internal/ScrimInsetsFrameLayout;

    # getter for: Landroid/support/design/internal/ScrimInsetsFrameLayout;->mInsets:Landroid/graphics/Rect;
    invoke-static {v0}, Landroid/support/design/internal/ScrimInsetsFrameLayout;->access$000(Landroid/support/design/internal/ScrimInsetsFrameLayout;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p2}, Landroid/support/v4/view/WindowInsetsCompat;->getSystemWindowInsetLeft()I

    move-result v1

    invoke-virtual {p2}, Landroid/support/v4/view/WindowInsetsCompat;->getSystemWindowInsetTop()I

    move-result v2

    invoke-virtual {p2}, Landroid/support/v4/view/WindowInsetsCompat;->getSystemWindowInsetRight()I

    move-result v3

    invoke-virtual {p2}, Landroid/support/v4/view/WindowInsetsCompat;->getSystemWindowInsetBottom()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 73
    iget-object v1, p0, Landroid/support/design/internal/ScrimInsetsFrameLayout$1;->this$0:Landroid/support/design/internal/ScrimInsetsFrameLayout;

    iget-object v0, p0, Landroid/support/design/internal/ScrimInsetsFrameLayout$1;->this$0:Landroid/support/design/internal/ScrimInsetsFrameLayout;

    # getter for: Landroid/support/design/internal/ScrimInsetsFrameLayout;->mInsets:Landroid/graphics/Rect;
    invoke-static {v0}, Landroid/support/design/internal/ScrimInsetsFrameLayout;->access$000(Landroid/support/design/internal/ScrimInsetsFrameLayout;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/support/design/internal/ScrimInsetsFrameLayout$1;->this$0:Landroid/support/design/internal/ScrimInsetsFrameLayout;

    # getter for: Landroid/support/design/internal/ScrimInsetsFrameLayout;->mInsetForeground:Landroid/graphics/drawable/Drawable;
    invoke-static {v0}, Landroid/support/design/internal/ScrimInsetsFrameLayout;->access$100(Landroid/support/design/internal/ScrimInsetsFrameLayout;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/support/design/internal/ScrimInsetsFrameLayout;->setWillNotDraw(Z)V

    .line 74
    iget-object v0, p0, Landroid/support/design/internal/ScrimInsetsFrameLayout$1;->this$0:Landroid/support/design/internal/ScrimInsetsFrameLayout;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 75
    invoke-virtual {p2}, Landroid/support/v4/view/WindowInsetsCompat;->consumeSystemWindowInsets()Landroid/support/v4/view/WindowInsetsCompat;

    move-result-object v0

    return-object v0

    .line 73
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
