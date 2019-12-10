.class public Landroid/support/v7/widget/RecyclerView$SimpleOnItemTouchListener;
.super Ljava/lang/Object;
.source "RecyclerView.java"

# interfaces
.implements Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SimpleOnItemTouchListener"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8019
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/support/v7/widget/RecyclerView;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "rv"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 8022
    const/4 v0, 0x0

    return v0
.end method

.method public onRequestDisallowInterceptTouchEvent(Z)V
    .locals 0
    .param p1, "disallowIntercept"    # Z

    .prologue
    .line 8031
    return-void
.end method

.method public onTouchEvent(Landroid/support/v7/widget/RecyclerView;Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "rv"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 8027
    return-void
.end method
