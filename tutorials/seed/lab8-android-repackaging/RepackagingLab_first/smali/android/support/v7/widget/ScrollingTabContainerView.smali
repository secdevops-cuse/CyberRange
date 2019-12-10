.class public Landroid/support/v7/widget/ScrollingTabContainerView;
.super Landroid/widget/HorizontalScrollView;
.source "ScrollingTabContainerView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/widget/ScrollingTabContainerView$VisibilityAnimListener;,
        Landroid/support/v7/widget/ScrollingTabContainerView$TabClickListener;,
        Landroid/support/v7/widget/ScrollingTabContainerView$TabAdapter;,
        Landroid/support/v7/widget/ScrollingTabContainerView$TabView;
    }
.end annotation


# static fields
.field private static final FADE_DURATION:I = 0xc8

.field private static final TAG:Ljava/lang/String; = "ScrollingTabContainerView"

.field private static final sAlphaInterpolator:Landroid/view/animation/Interpolator;


# instance fields
.field private mAllowCollapse:Z

.field private mContentHeight:I

.field mMaxTabWidth:I

.field private mSelectedTabIndex:I

.field mStackedTabMaxWidth:I

.field private mTabClickListener:Landroid/support/v7/widget/ScrollingTabContainerView$TabClickListener;

.field private mTabLayout:Landroid/support/v7/widget/LinearLayoutCompat;

.field mTabSelector:Ljava/lang/Runnable;

.field private mTabSpinner:Landroid/widget/Spinner;

.field protected final mVisAnimListener:Landroid/support/v7/widget/ScrollingTabContainerView$VisibilityAnimListener;

.field protected mVisibilityAnim:Landroid/support/v4/view/ViewPropertyAnimatorCompat;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 73
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    sput-object v0, Landroid/support/v7/widget/ScrollingTabContainerView;->sAlphaInterpolator:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 78
    invoke-direct {p0, p1}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;)V

    .line 71
    new-instance v1, Landroid/support/v7/widget/ScrollingTabContainerView$VisibilityAnimListener;

    invoke-direct {v1, p0}, Landroid/support/v7/widget/ScrollingTabContainerView$VisibilityAnimListener;-><init>(Landroid/support/v7/widget/ScrollingTabContainerView;)V

    iput-object v1, p0, Landroid/support/v7/widget/ScrollingTabContainerView;->mVisAnimListener:Landroid/support/v7/widget/ScrollingTabContainerView$VisibilityAnimListener;

    .line 80
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/ScrollingTabContainerView;->setHorizontalScrollBarEnabled(Z)V

    .line 82
    invoke-static {p1}, Landroid/support/v7/view/ActionBarPolicy;->get(Landroid/content/Context;)Landroid/support/v7/view/ActionBarPolicy;

    move-result-object v0

    .line 83
    .local v0, "abp":Landroid/support/v7/view/ActionBarPolicy;
    invoke-virtual {v0}, Landroid/support/v7/view/ActionBarPolicy;->getTabContainerHeight()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/ScrollingTabContainerView;->setContentHeight(I)V

    .line 84
    invoke-virtual {v0}, Landroid/support/v7/view/ActionBarPolicy;->getStackedTabMaxWidth()I

    move-result v1

    iput v1, p0, Landroid/support/v7/widget/ScrollingTabContainerView;->mStackedTabMaxWidth:I

    .line 86
    invoke-direct {p0}, Landroid/support/v7/widget/ScrollingTabContainerView;->createTabLayout()Landroid/support/v7/widget/LinearLayoutCompat;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v7/widget/ScrollingTabContainerView;->mTabLayout:Landroid/support/v7/widget/LinearLayoutCompat;

    .line 87
    iget-object v1, p0, Landroid/support/v7/widget/ScrollingTabContainerView;->mTabLayout:Landroid/support/v7/widget/LinearLayoutCompat;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x2

    const/4 v4, -0x1

    invoke-direct {v2, v3, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v1, v2}, Landroid/support/v7/widget/ScrollingTabContainerView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 89
    return-void
.end method

.method static synthetic access$200(Landroid/support/v7/widget/ScrollingTabContainerView;)Landroid/support/v7/widget/LinearLayoutCompat;
    .locals 1
    .param p0, "x0"    # Landroid/support/v7/widget/ScrollingTabContainerView;

    .prologue
    .line 54
    iget-object v0, p0, Landroid/support/v7/widget/ScrollingTabContainerView;->mTabLayout:Landroid/support/v7/widget/LinearLayoutCompat;

    return-object v0
.end method

.method static synthetic access$300(Landroid/support/v7/widget/ScrollingTabContainerView;Landroid/support/v7/app/ActionBar$Tab;Z)Landroid/support/v7/widget/ScrollingTabContainerView$TabView;
    .locals 1
    .param p0, "x0"    # Landroid/support/v7/widget/ScrollingTabContainerView;
    .param p1, "x1"    # Landroid/support/v7/app/ActionBar$Tab;
    .param p2, "x2"    # Z

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/ScrollingTabContainerView;->createTabView(Landroid/support/v7/app/ActionBar$Tab;Z)Landroid/support/v7/widget/ScrollingTabContainerView$TabView;

    move-result-object v0

    return-object v0
.end method

.method private createSpinner()Landroid/widget/Spinner;
    .locals 4

    .prologue
    .line 210
    new-instance v0, Landroid/support/v7/widget/AppCompatSpinner;

    invoke-virtual {p0}, Landroid/support/v7/widget/ScrollingTabContainerView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    sget v3, Landroid/support/v7/appcompat/R$attr;->actionDropDownStyle:I

    invoke-direct {v0, v1, v2, v3}, Landroid/support/v7/widget/AppCompatSpinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 212
    .local v0, "spinner":Landroid/widget/Spinner;
    new-instance v1, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 215
    invoke-virtual {v0, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 216
    return-object v0
.end method

.method private createTabLayout()Landroid/support/v7/widget/LinearLayoutCompat;
    .locals 4

    .prologue
    .line 200
    new-instance v0, Landroid/support/v7/widget/LinearLayoutCompat;

    invoke-virtual {p0}, Landroid/support/v7/widget/ScrollingTabContainerView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    sget v3, Landroid/support/v7/appcompat/R$attr;->actionBarTabBarStyle:I

    invoke-direct {v0, v1, v2, v3}, Landroid/support/v7/widget/LinearLayoutCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 202
    .local v0, "tabLayout":Landroid/support/v7/widget/LinearLayoutCompat;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/LinearLayoutCompat;->setMeasureWithLargestChildEnabled(Z)V

    .line 203
    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/LinearLayoutCompat;->setGravity(I)V

    .line 204
    new-instance v1, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/LinearLayoutCompat;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 206
    return-object v0
.end method

.method private createTabView(Landroid/support/v7/app/ActionBar$Tab;Z)Landroid/support/v7/widget/ScrollingTabContainerView$TabView;
    .locals 4
    .param p1, "tab"    # Landroid/support/v7/app/ActionBar$Tab;
    .param p2, "forAdapter"    # Z

    .prologue
    const/4 v2, 0x0

    .line 289
    new-instance v0, Landroid/support/v7/widget/ScrollingTabContainerView$TabView;

    invoke-virtual {p0}, Landroid/support/v7/widget/ScrollingTabContainerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1, p2}, Landroid/support/v7/widget/ScrollingTabContainerView$TabView;-><init>(Landroid/support/v7/widget/ScrollingTabContainerView;Landroid/content/Context;Landroid/support/v7/app/ActionBar$Tab;Z)V

    .line 290
    .local v0, "tabView":Landroid/support/v7/widget/ScrollingTabContainerView$TabView;
    if-eqz p2, :cond_0

    .line 291
    invoke-virtual {v0, v2}, Landroid/support/v7/widget/ScrollingTabContainerView$TabView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 292
    new-instance v1, Landroid/widget/AbsListView$LayoutParams;

    const/4 v2, -0x1

    iget v3, p0, Landroid/support/v7/widget/ScrollingTabContainerView;->mContentHeight:I

    invoke-direct {v1, v2, v3}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ScrollingTabContainerView$TabView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 302
    :goto_0
    return-object v0

    .line 295
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ScrollingTabContainerView$TabView;->setFocusable(Z)V

    .line 297
    iget-object v1, p0, Landroid/support/v7/widget/ScrollingTabContainerView;->mTabClickListener:Landroid/support/v7/widget/ScrollingTabContainerView$TabClickListener;

    if-nez v1, :cond_1

    .line 298
    new-instance v1, Landroid/support/v7/widget/ScrollingTabContainerView$TabClickListener;

    invoke-direct {v1, p0, v2}, Landroid/support/v7/widget/ScrollingTabContainerView$TabClickListener;-><init>(Landroid/support/v7/widget/ScrollingTabContainerView;Landroid/support/v7/widget/ScrollingTabContainerView$1;)V

    iput-object v1, p0, Landroid/support/v7/widget/ScrollingTabContainerView;->mTabClickListener:Landroid/support/v7/widget/ScrollingTabContainerView$TabClickListener;

    .line 300
    :cond_1
    iget-object v1, p0, Landroid/support/v7/widget/ScrollingTabContainerView;->mTabClickListener:Landroid/support/v7/widget/ScrollingTabContainerView$TabClickListener;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ScrollingTabContainerView$TabView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method private isCollapsed()Z
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Landroid/support/v7/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-ne v0, p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private performCollapse()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 150
    invoke-direct {p0}, Landroid/support/v7/widget/ScrollingTabContainerView;->isCollapsed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 166
    :goto_0
    return-void

    .line 152
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    if-nez v0, :cond_1

    .line 153
    invoke-direct {p0}, Landroid/support/v7/widget/ScrollingTabContainerView;->createSpinner()Landroid/widget/Spinner;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    .line 155
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/ScrollingTabContainerView;->mTabLayout:Landroid/support/v7/widget/LinearLayoutCompat;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/ScrollingTabContainerView;->removeView(Landroid/view/View;)V

    .line 156
    iget-object v0, p0, Landroid/support/v7/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Landroid/support/v7/widget/ScrollingTabContainerView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 158
    iget-object v0, p0, Landroid/support/v7/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    if-nez v0, :cond_2

    .line 159
    iget-object v0, p0, Landroid/support/v7/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    new-instance v1, Landroid/support/v7/widget/ScrollingTabContainerView$TabAdapter;

    invoke-direct {v1, p0, v4}, Landroid/support/v7/widget/ScrollingTabContainerView$TabAdapter;-><init>(Landroid/support/v7/widget/ScrollingTabContainerView;Landroid/support/v7/widget/ScrollingTabContainerView$1;)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 161
    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/ScrollingTabContainerView;->mTabSelector:Ljava/lang/Runnable;

    if-eqz v0, :cond_3

    .line 162
    iget-object v0, p0, Landroid/support/v7/widget/ScrollingTabContainerView;->mTabSelector:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/ScrollingTabContainerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 163
    iput-object v4, p0, Landroid/support/v7/widget/ScrollingTabContainerView;->mTabSelector:Ljava/lang/Runnable;

    .line 165
    :cond_3
    iget-object v0, p0, Landroid/support/v7/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    iget v1, p0, Landroid/support/v7/widget/ScrollingTabContainerView;->mSelectedTabIndex:I

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_0
.end method

.method private performExpand()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 169
    invoke-direct {p0}, Landroid/support/v7/widget/ScrollingTabContainerView;->isCollapsed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 175
    :goto_0
    return v4

    .line 171
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/ScrollingTabContainerView;->removeView(Landroid/view/View;)V

    .line 172
    iget-object v0, p0, Landroid/support/v7/widget/ScrollingTabContainerView;->mTabLayout:Landroid/support/v7/widget/LinearLayoutCompat;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Landroid/support/v7/widget/ScrollingTabContainerView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 174
    iget-object v0, p0, Landroid/support/v7/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/ScrollingTabContainerView;->setTabSelected(I)V

    goto :goto_0
.end method


# virtual methods
.method public addTab(Landroid/support/v7/app/ActionBar$Tab;IZ)V
    .locals 6
    .param p1, "tab"    # Landroid/support/v7/app/ActionBar$Tab;
    .param p2, "position"    # I
    .param p3, "setSelected"    # Z

    .prologue
    const/4 v5, 0x0

    .line 321
    invoke-direct {p0, p1, v5}, Landroid/support/v7/widget/ScrollingTabContainerView;->createTabView(Landroid/support/v7/app/ActionBar$Tab;Z)Landroid/support/v7/widget/ScrollingTabContainerView$TabView;

    move-result-object v0

    .line 322
    .local v0, "tabView":Landroid/support/v7/widget/ScrollingTabContainerView$TabView;
    iget-object v1, p0, Landroid/support/v7/widget/ScrollingTabContainerView;->mTabLayout:Landroid/support/v7/widget/LinearLayoutCompat;

    new-instance v2, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;

    const/4 v3, -0x1

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v2, v5, v3, v4}, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v0, p2, v2}, Landroid/support/v7/widget/LinearLayoutCompat;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 324
    iget-object v1, p0, Landroid/support/v7/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    if-eqz v1, :cond_0

    .line 325
    iget-object v1, p0, Landroid/support/v7/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/ScrollingTabContainerView$TabAdapter;

    invoke-virtual {v1}, Landroid/support/v7/widget/ScrollingTabContainerView$TabAdapter;->notifyDataSetChanged()V

    .line 327
    :cond_0
    if-eqz p3, :cond_1

    .line 328
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ScrollingTabContainerView$TabView;->setSelected(Z)V

    .line 330
    :cond_1
    iget-boolean v1, p0, Landroid/support/v7/widget/ScrollingTabContainerView;->mAllowCollapse:Z

    if-eqz v1, :cond_2

    .line 331
    invoke-virtual {p0}, Landroid/support/v7/widget/ScrollingTabContainerView;->requestLayout()V

    .line 333
    :cond_2
    return-void
.end method

.method public addTab(Landroid/support/v7/app/ActionBar$Tab;Z)V
    .locals 6
    .param p1, "tab"    # Landroid/support/v7/app/ActionBar$Tab;
    .param p2, "setSelected"    # Z

    .prologue
    const/4 v5, 0x0

    .line 306
    invoke-direct {p0, p1, v5}, Landroid/support/v7/widget/ScrollingTabContainerView;->createTabView(Landroid/support/v7/app/ActionBar$Tab;Z)Landroid/support/v7/widget/ScrollingTabContainerView$TabView;

    move-result-object v0

    .line 307
    .local v0, "tabView":Landroid/support/v7/widget/ScrollingTabContainerView$TabView;
    iget-object v1, p0, Landroid/support/v7/widget/ScrollingTabContainerView;->mTabLayout:Landroid/support/v7/widget/LinearLayoutCompat;

    new-instance v2, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;

    const/4 v3, -0x1

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v2, v5, v3, v4}, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v0, v2}, Landroid/support/v7/widget/LinearLayoutCompat;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 309
    iget-object v1, p0, Landroid/support/v7/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    if-eqz v1, :cond_0

    .line 310
    iget-object v1, p0, Landroid/support/v7/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/ScrollingTabContainerView$TabAdapter;

    invoke-virtual {v1}, Landroid/support/v7/widget/ScrollingTabContainerView$TabAdapter;->notifyDataSetChanged()V

    .line 312
    :cond_0
    if-eqz p2, :cond_1

    .line 313
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ScrollingTabContainerView$TabView;->setSelected(Z)V

    .line 315
    :cond_1
    iget-boolean v1, p0, Landroid/support/v7/widget/ScrollingTabContainerView;->mAllowCollapse:Z

    if-eqz v1, :cond_2

    .line 316
    invoke-virtual {p0}, Landroid/support/v7/widget/ScrollingTabContainerView;->requestLayout()V

    .line 318
    :cond_2
    return-void
.end method

.method public animateToTab(I)V
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 257
    iget-object v1, p0, Landroid/support/v7/widget/ScrollingTabContainerView;->mTabLayout:Landroid/support/v7/widget/LinearLayoutCompat;

    invoke-virtual {v1, p1}, Landroid/support/v7/widget/LinearLayoutCompat;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 258
    .local v0, "tabView":Landroid/view/View;
    iget-object v1, p0, Landroid/support/v7/widget/ScrollingTabContainerView;->mTabSelector:Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    .line 259
    iget-object v1, p0, Landroid/support/v7/widget/ScrollingTabContainerView;->mTabSelector:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/ScrollingTabContainerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 261
    :cond_0
    new-instance v1, Landroid/support/v7/widget/ScrollingTabContainerView$1;

    invoke-direct {v1, p0, v0}, Landroid/support/v7/widget/ScrollingTabContainerView$1;-><init>(Landroid/support/v7/widget/ScrollingTabContainerView;Landroid/view/View;)V

    iput-object v1, p0, Landroid/support/v7/widget/ScrollingTabContainerView;->mTabSelector:Ljava/lang/Runnable;

    .line 268
    iget-object v1, p0, Landroid/support/v7/widget/ScrollingTabContainerView;->mTabSelector:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/ScrollingTabContainerView;->post(Ljava/lang/Runnable;)Z

    .line 269
    return-void
.end method

.method public animateToVisibility(I)V
    .locals 6
    .param p1, "visibility"    # I

    .prologue
    const-wide/16 v4, 0xc8

    const/4 v2, 0x0

    .line 232
    iget-object v1, p0, Landroid/support/v7/widget/ScrollingTabContainerView;->mVisibilityAnim:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    if-eqz v1, :cond_0

    .line 233
    iget-object v1, p0, Landroid/support/v7/widget/ScrollingTabContainerView;->mVisibilityAnim:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->cancel()V

    .line 235
    :cond_0
    if-nez p1, :cond_2

    .line 236
    invoke-virtual {p0}, Landroid/support/v7/widget/ScrollingTabContainerView;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_1

    .line 237
    invoke-static {p0, v2}, Landroid/support/v4/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    .line 240
    :cond_1
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->alpha(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    .line 241
    .local v0, "anim":Landroid/support/v4/view/ViewPropertyAnimatorCompat;
    invoke-virtual {v0, v4, v5}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 243
    sget-object v1, Landroid/support/v7/widget/ScrollingTabContainerView;->sAlphaInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setInterpolator(Landroid/view/animation/Interpolator;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 244
    iget-object v1, p0, Landroid/support/v7/widget/ScrollingTabContainerView;->mVisAnimListener:Landroid/support/v7/widget/ScrollingTabContainerView$VisibilityAnimListener;

    invoke-virtual {v1, v0, p1}, Landroid/support/v7/widget/ScrollingTabContainerView$VisibilityAnimListener;->withFinalVisibility(Landroid/support/v4/view/ViewPropertyAnimatorCompat;I)Landroid/support/v7/widget/ScrollingTabContainerView$VisibilityAnimListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setListener(Landroid/support/v4/view/ViewPropertyAnimatorListener;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 245
    invoke-virtual {v0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->start()V

    .line 254
    :goto_0
    return-void

    .line 247
    .end local v0    # "anim":Landroid/support/v4/view/ViewPropertyAnimatorCompat;
    :cond_2
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->alpha(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    .line 248
    .restart local v0    # "anim":Landroid/support/v4/view/ViewPropertyAnimatorCompat;
    invoke-virtual {v0, v4, v5}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 250
    sget-object v1, Landroid/support/v7/widget/ScrollingTabContainerView;->sAlphaInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setInterpolator(Landroid/view/animation/Interpolator;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 251
    iget-object v1, p0, Landroid/support/v7/widget/ScrollingTabContainerView;->mVisAnimListener:Landroid/support/v7/widget/ScrollingTabContainerView$VisibilityAnimListener;

    invoke-virtual {v1, v0, p1}, Landroid/support/v7/widget/ScrollingTabContainerView$VisibilityAnimListener;->withFinalVisibility(Landroid/support/v4/view/ViewPropertyAnimatorCompat;I)Landroid/support/v7/widget/ScrollingTabContainerView$VisibilityAnimListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setListener(Landroid/support/v4/view/ViewPropertyAnimatorListener;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 252
    invoke-virtual {v0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->start()V

    goto :goto_0
.end method

.method public onAttachedToWindow()V
    .locals 1

    .prologue
    .line 273
    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onAttachedToWindow()V

    .line 274
    iget-object v0, p0, Landroid/support/v7/widget/ScrollingTabContainerView;->mTabSelector:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 276
    iget-object v0, p0, Landroid/support/v7/widget/ScrollingTabContainerView;->mTabSelector:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/ScrollingTabContainerView;->post(Ljava/lang/Runnable;)Z

    .line 278
    :cond_0
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 220
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x8

    if-lt v1, v2, :cond_0

    .line 221
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 224
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/ScrollingTabContainerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v7/view/ActionBarPolicy;->get(Landroid/content/Context;)Landroid/support/v7/view/ActionBarPolicy;

    move-result-object v0

    .line 227
    .local v0, "abp":Landroid/support/v7/view/ActionBarPolicy;
    invoke-virtual {v0}, Landroid/support/v7/view/ActionBarPolicy;->getTabContainerHeight()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/ScrollingTabContainerView;->setContentHeight(I)V

    .line 228
    invoke-virtual {v0}, Landroid/support/v7/view/ActionBarPolicy;->getStackedTabMaxWidth()I

    move-result v1

    iput v1, p0, Landroid/support/v7/widget/ScrollingTabContainerView;->mStackedTabMaxWidth:I

    .line 229
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 282
    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onDetachedFromWindow()V

    .line 283
    iget-object v0, p0, Landroid/support/v7/widget/ScrollingTabContainerView;->mTabSelector:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 284
    iget-object v0, p0, Landroid/support/v7/widget/ScrollingTabContainerView;->mTabSelector:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/ScrollingTabContainerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 286
    :cond_0
    return-void
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 367
    .local p1, "adapterView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    move-object v0, p2

    check-cast v0, Landroid/support/v7/widget/ScrollingTabContainerView$TabView;

    .line 368
    .local v0, "tabView":Landroid/support/v7/widget/ScrollingTabContainerView$TabView;
    invoke-virtual {v0}, Landroid/support/v7/widget/ScrollingTabContainerView$TabView;->getTab()Landroid/support/v7/app/ActionBar$Tab;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/app/ActionBar$Tab;->select()V

    .line 369
    return-void
.end method

.method public onMeasure(II)V
    .locals 11
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v10, 0x40000000    # 2.0f

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 93
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    .line 94
    .local v5, "widthMode":I
    if-ne v5, v10, :cond_2

    move v2, v6

    .line 95
    .local v2, "lockedExpanded":Z
    :goto_0
    invoke-virtual {p0, v2}, Landroid/support/v7/widget/ScrollingTabContainerView;->setFillViewport(Z)V

    .line 97
    iget-object v8, p0, Landroid/support/v7/widget/ScrollingTabContainerView;->mTabLayout:Landroid/support/v7/widget/LinearLayoutCompat;

    invoke-virtual {v8}, Landroid/support/v7/widget/LinearLayoutCompat;->getChildCount()I

    move-result v1

    .line 98
    .local v1, "childCount":I
    if-le v1, v6, :cond_4

    if-eq v5, v10, :cond_0

    const/high16 v8, -0x80000000

    if-ne v5, v8, :cond_4

    .line 100
    :cond_0
    const/4 v8, 0x2

    if-le v1, v8, :cond_3

    .line 101
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v8

    int-to-float v8, v8

    const v9, 0x3ecccccd    # 0.4f

    mul-float/2addr v8, v9

    float-to-int v8, v8

    iput v8, p0, Landroid/support/v7/widget/ScrollingTabContainerView;->mMaxTabWidth:I

    .line 105
    :goto_1
    iget v8, p0, Landroid/support/v7/widget/ScrollingTabContainerView;->mMaxTabWidth:I

    iget v9, p0, Landroid/support/v7/widget/ScrollingTabContainerView;->mStackedTabMaxWidth:I

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    iput v8, p0, Landroid/support/v7/widget/ScrollingTabContainerView;->mMaxTabWidth:I

    .line 110
    :goto_2
    iget v8, p0, Landroid/support/v7/widget/ScrollingTabContainerView;->mContentHeight:I

    invoke-static {v8, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 112
    if-nez v2, :cond_5

    iget-boolean v8, p0, Landroid/support/v7/widget/ScrollingTabContainerView;->mAllowCollapse:Z

    if-eqz v8, :cond_5

    move v0, v6

    .line 114
    .local v0, "canCollapse":Z
    :goto_3
    if-eqz v0, :cond_7

    .line 116
    iget-object v6, p0, Landroid/support/v7/widget/ScrollingTabContainerView;->mTabLayout:Landroid/support/v7/widget/LinearLayoutCompat;

    invoke-virtual {v6, v7, p2}, Landroid/support/v7/widget/LinearLayoutCompat;->measure(II)V

    .line 117
    iget-object v6, p0, Landroid/support/v7/widget/ScrollingTabContainerView;->mTabLayout:Landroid/support/v7/widget/LinearLayoutCompat;

    invoke-virtual {v6}, Landroid/support/v7/widget/LinearLayoutCompat;->getMeasuredWidth()I

    move-result v6

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v7

    if-le v6, v7, :cond_6

    .line 118
    invoke-direct {p0}, Landroid/support/v7/widget/ScrollingTabContainerView;->performCollapse()V

    .line 126
    :goto_4
    invoke-virtual {p0}, Landroid/support/v7/widget/ScrollingTabContainerView;->getMeasuredWidth()I

    move-result v4

    .line 127
    .local v4, "oldWidth":I
    invoke-super {p0, p1, p2}, Landroid/widget/HorizontalScrollView;->onMeasure(II)V

    .line 128
    invoke-virtual {p0}, Landroid/support/v7/widget/ScrollingTabContainerView;->getMeasuredWidth()I

    move-result v3

    .line 130
    .local v3, "newWidth":I
    if-eqz v2, :cond_1

    if-eq v4, v3, :cond_1

    .line 132
    iget v6, p0, Landroid/support/v7/widget/ScrollingTabContainerView;->mSelectedTabIndex:I

    invoke-virtual {p0, v6}, Landroid/support/v7/widget/ScrollingTabContainerView;->setTabSelected(I)V

    .line 134
    :cond_1
    return-void

    .end local v0    # "canCollapse":Z
    .end local v1    # "childCount":I
    .end local v2    # "lockedExpanded":Z
    .end local v3    # "newWidth":I
    .end local v4    # "oldWidth":I
    :cond_2
    move v2, v7

    .line 94
    goto :goto_0

    .line 103
    .restart local v1    # "childCount":I
    .restart local v2    # "lockedExpanded":Z
    :cond_3
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    iput v8, p0, Landroid/support/v7/widget/ScrollingTabContainerView;->mMaxTabWidth:I

    goto :goto_1

    .line 107
    :cond_4
    const/4 v8, -0x1

    iput v8, p0, Landroid/support/v7/widget/ScrollingTabContainerView;->mMaxTabWidth:I

    goto :goto_2

    :cond_5
    move v0, v7

    .line 112
    goto :goto_3

    .line 120
    .restart local v0    # "canCollapse":Z
    :cond_6
    invoke-direct {p0}, Landroid/support/v7/widget/ScrollingTabContainerView;->performExpand()Z

    goto :goto_4

    .line 123
    :cond_7
    invoke-direct {p0}, Landroid/support/v7/widget/ScrollingTabContainerView;->performExpand()Z

    goto :goto_4
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 374
    .local p1, "adapterView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method

.method public removeAllTabs()V
    .locals 1

    .prologue
    .line 356
    iget-object v0, p0, Landroid/support/v7/widget/ScrollingTabContainerView;->mTabLayout:Landroid/support/v7/widget/LinearLayoutCompat;

    invoke-virtual {v0}, Landroid/support/v7/widget/LinearLayoutCompat;->removeAllViews()V

    .line 357
    iget-object v0, p0, Landroid/support/v7/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    if-eqz v0, :cond_0

    .line 358
    iget-object v0, p0, Landroid/support/v7/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/ScrollingTabContainerView$TabAdapter;

    invoke-virtual {v0}, Landroid/support/v7/widget/ScrollingTabContainerView$TabAdapter;->notifyDataSetChanged()V

    .line 360
    :cond_0
    iget-boolean v0, p0, Landroid/support/v7/widget/ScrollingTabContainerView;->mAllowCollapse:Z

    if-eqz v0, :cond_1

    .line 361
    invoke-virtual {p0}, Landroid/support/v7/widget/ScrollingTabContainerView;->requestLayout()V

    .line 363
    :cond_1
    return-void
.end method

.method public removeTabAt(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 346
    iget-object v0, p0, Landroid/support/v7/widget/ScrollingTabContainerView;->mTabLayout:Landroid/support/v7/widget/LinearLayoutCompat;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/LinearLayoutCompat;->removeViewAt(I)V

    .line 347
    iget-object v0, p0, Landroid/support/v7/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    if-eqz v0, :cond_0

    .line 348
    iget-object v0, p0, Landroid/support/v7/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/ScrollingTabContainerView$TabAdapter;

    invoke-virtual {v0}, Landroid/support/v7/widget/ScrollingTabContainerView$TabAdapter;->notifyDataSetChanged()V

    .line 350
    :cond_0
    iget-boolean v0, p0, Landroid/support/v7/widget/ScrollingTabContainerView;->mAllowCollapse:Z

    if-eqz v0, :cond_1

    .line 351
    invoke-virtual {p0}, Landroid/support/v7/widget/ScrollingTabContainerView;->requestLayout()V

    .line 353
    :cond_1
    return-void
.end method

.method public setAllowCollapse(Z)V
    .locals 0
    .param p1, "allowCollapse"    # Z

    .prologue
    .line 146
    iput-boolean p1, p0, Landroid/support/v7/widget/ScrollingTabContainerView;->mAllowCollapse:Z

    .line 147
    return-void
.end method

.method public setContentHeight(I)V
    .locals 0
    .param p1, "contentHeight"    # I

    .prologue
    .line 195
    iput p1, p0, Landroid/support/v7/widget/ScrollingTabContainerView;->mContentHeight:I

    .line 196
    invoke-virtual {p0}, Landroid/support/v7/widget/ScrollingTabContainerView;->requestLayout()V

    .line 197
    return-void
.end method

.method public setTabSelected(I)V
    .locals 5
    .param p1, "position"    # I

    .prologue
    .line 179
    iput p1, p0, Landroid/support/v7/widget/ScrollingTabContainerView;->mSelectedTabIndex:I

    .line 180
    iget-object v4, p0, Landroid/support/v7/widget/ScrollingTabContainerView;->mTabLayout:Landroid/support/v7/widget/LinearLayoutCompat;

    invoke-virtual {v4}, Landroid/support/v7/widget/LinearLayoutCompat;->getChildCount()I

    move-result v3

    .line 181
    .local v3, "tabCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_2

    .line 182
    iget-object v4, p0, Landroid/support/v7/widget/ScrollingTabContainerView;->mTabLayout:Landroid/support/v7/widget/LinearLayoutCompat;

    invoke-virtual {v4, v1}, Landroid/support/v7/widget/LinearLayoutCompat;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 183
    .local v0, "child":Landroid/view/View;
    if-ne v1, p1, :cond_1

    const/4 v2, 0x1

    .line 184
    .local v2, "isSelected":Z
    :goto_1
    invoke-virtual {v0, v2}, Landroid/view/View;->setSelected(Z)V

    .line 185
    if-eqz v2, :cond_0

    .line 186
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/ScrollingTabContainerView;->animateToTab(I)V

    .line 181
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 183
    .end local v2    # "isSelected":Z
    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    .line 189
    .end local v0    # "child":Landroid/view/View;
    :cond_2
    iget-object v4, p0, Landroid/support/v7/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    if-eqz v4, :cond_3

    if-ltz p1, :cond_3

    .line 190
    iget-object v4, p0, Landroid/support/v7/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    invoke-virtual {v4, p1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 192
    :cond_3
    return-void
.end method

.method public updateTab(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 336
    iget-object v0, p0, Landroid/support/v7/widget/ScrollingTabContainerView;->mTabLayout:Landroid/support/v7/widget/LinearLayoutCompat;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/LinearLayoutCompat;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/ScrollingTabContainerView$TabView;

    invoke-virtual {v0}, Landroid/support/v7/widget/ScrollingTabContainerView$TabView;->update()V

    .line 337
    iget-object v0, p0, Landroid/support/v7/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    if-eqz v0, :cond_0

    .line 338
    iget-object v0, p0, Landroid/support/v7/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/ScrollingTabContainerView$TabAdapter;

    invoke-virtual {v0}, Landroid/support/v7/widget/ScrollingTabContainerView$TabAdapter;->notifyDataSetChanged()V

    .line 340
    :cond_0
    iget-boolean v0, p0, Landroid/support/v7/widget/ScrollingTabContainerView;->mAllowCollapse:Z

    if-eqz v0, :cond_1

    .line 341
    invoke-virtual {p0}, Landroid/support/v7/widget/ScrollingTabContainerView;->requestLayout()V

    .line 343
    :cond_1
    return-void
.end method
