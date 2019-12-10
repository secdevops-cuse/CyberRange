.class final Landroid/support/v7/widget/AppCompatPopupWindow$1;
.super Ljava/lang/Object;
.source "AppCompatPopupWindow.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnScrollChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v7/widget/AppCompatPopupWindow;->wrapOnScrollChangedListener(Landroid/widget/PopupWindow;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$fieldAnchor:Ljava/lang/reflect/Field;

.field final synthetic val$originalListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

.field final synthetic val$popup:Landroid/widget/PopupWindow;


# direct methods
.method constructor <init>(Ljava/lang/reflect/Field;Landroid/widget/PopupWindow;Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V
    .locals 0

    .prologue
    .line 104
    iput-object p1, p0, Landroid/support/v7/widget/AppCompatPopupWindow$1;->val$fieldAnchor:Ljava/lang/reflect/Field;

    iput-object p2, p0, Landroid/support/v7/widget/AppCompatPopupWindow$1;->val$popup:Landroid/widget/PopupWindow;

    iput-object p3, p0, Landroid/support/v7/widget/AppCompatPopupWindow$1;->val$originalListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollChanged()V
    .locals 3

    .prologue
    .line 108
    :try_start_0
    iget-object v1, p0, Landroid/support/v7/widget/AppCompatPopupWindow$1;->val$fieldAnchor:Ljava/lang/reflect/Field;

    iget-object v2, p0, Landroid/support/v7/widget/AppCompatPopupWindow$1;->val$popup:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 109
    .local v0, "mAnchor":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/view/View;>;"
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    .line 117
    .end local v0    # "mAnchor":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/view/View;>;"
    :cond_0
    :goto_0
    return-void

    .line 112
    .restart local v0    # "mAnchor":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/view/View;>;"
    :cond_1
    iget-object v1, p0, Landroid/support/v7/widget/AppCompatPopupWindow$1;->val$originalListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-interface {v1}, Landroid/view/ViewTreeObserver$OnScrollChangedListener;->onScrollChanged()V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 114
    .end local v0    # "mAnchor":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/view/View;>;"
    :catch_0
    move-exception v1

    goto :goto_0
.end method
