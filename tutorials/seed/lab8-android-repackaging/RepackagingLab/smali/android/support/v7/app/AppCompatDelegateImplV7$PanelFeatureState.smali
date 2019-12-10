.class final Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;
.super Ljava/lang/Object;
.source "AppCompatDelegateImplV7.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/app/AppCompatDelegateImplV7;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PanelFeatureState"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState$SavedState;
    }
.end annotation


# instance fields
.field background:I

.field createdPanelView:Landroid/view/View;

.field decorView:Landroid/view/ViewGroup;

.field featureId:I

.field frozenActionViewState:Landroid/os/Bundle;

.field frozenMenuState:Landroid/os/Bundle;

.field gravity:I

.field isHandled:Z

.field isOpen:Z

.field isPrepared:Z

.field listMenuPresenter:Landroid/support/v7/view/menu/ListMenuPresenter;

.field listPresenterContext:Landroid/content/Context;

.field menu:Landroid/support/v7/view/menu/MenuBuilder;

.field public qwertyMode:Z

.field refreshDecorView:Z

.field refreshMenuContent:Z

.field shownPanelView:Landroid/view/View;

.field wasLastOpen:Z

.field windowAnimations:I

.field x:I

.field y:I


# direct methods
.method constructor <init>(I)V
    .locals 1
    .param p1, "featureId"    # I

    .prologue
    .line 1848
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1849
    iput p1, p0, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->featureId:I

    .line 1851
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->refreshDecorView:Z

    .line 1852
    return-void
.end method


# virtual methods
.method applyFrozenState()V
    .locals 2

    .prologue
    .line 1954
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->menu:Landroid/support/v7/view/menu/MenuBuilder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->frozenMenuState:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 1955
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->menu:Landroid/support/v7/view/menu/MenuBuilder;

    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->frozenMenuState:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/support/v7/view/menu/MenuBuilder;->restorePresenterStates(Landroid/os/Bundle;)V

    .line 1956
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->frozenMenuState:Landroid/os/Bundle;

    .line 1958
    :cond_0
    return-void
.end method

.method public clearMenuPresenters()V
    .locals 2

    .prologue
    .line 1865
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->menu:Landroid/support/v7/view/menu/MenuBuilder;

    if-eqz v0, :cond_0

    .line 1866
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->menu:Landroid/support/v7/view/menu/MenuBuilder;

    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->listMenuPresenter:Landroid/support/v7/view/menu/ListMenuPresenter;

    invoke-virtual {v0, v1}, Landroid/support/v7/view/menu/MenuBuilder;->removeMenuPresenter(Landroid/support/v7/view/menu/MenuPresenter;)V

    .line 1868
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->listMenuPresenter:Landroid/support/v7/view/menu/ListMenuPresenter;

    .line 1869
    return-void
.end method

.method getListMenuView(Landroid/support/v7/view/menu/MenuPresenter$Callback;)Landroid/support/v7/view/menu/MenuView;
    .locals 4
    .param p1, "cb"    # Landroid/support/v7/view/menu/MenuPresenter$Callback;

    .prologue
    .line 1916
    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->menu:Landroid/support/v7/view/menu/MenuBuilder;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    .line 1927
    :goto_0
    return-object v0

    .line 1918
    :cond_0
    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->listMenuPresenter:Landroid/support/v7/view/menu/ListMenuPresenter;

    if-nez v1, :cond_1

    .line 1919
    new-instance v1, Landroid/support/v7/view/menu/ListMenuPresenter;

    iget-object v2, p0, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->listPresenterContext:Landroid/content/Context;

    sget v3, Landroid/support/v7/appcompat/R$layout;->abc_list_menu_item_layout:I

    invoke-direct {v1, v2, v3}, Landroid/support/v7/view/menu/ListMenuPresenter;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->listMenuPresenter:Landroid/support/v7/view/menu/ListMenuPresenter;

    .line 1921
    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->listMenuPresenter:Landroid/support/v7/view/menu/ListMenuPresenter;

    invoke-virtual {v1, p1}, Landroid/support/v7/view/menu/ListMenuPresenter;->setCallback(Landroid/support/v7/view/menu/MenuPresenter$Callback;)V

    .line 1922
    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->menu:Landroid/support/v7/view/menu/MenuBuilder;

    iget-object v2, p0, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->listMenuPresenter:Landroid/support/v7/view/menu/ListMenuPresenter;

    invoke-virtual {v1, v2}, Landroid/support/v7/view/menu/MenuBuilder;->addMenuPresenter(Landroid/support/v7/view/menu/MenuPresenter;)V

    .line 1925
    :cond_1
    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->listMenuPresenter:Landroid/support/v7/view/menu/ListMenuPresenter;

    iget-object v2, p0, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->decorView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2}, Landroid/support/v7/view/menu/ListMenuPresenter;->getMenuView(Landroid/view/ViewGroup;)Landroid/support/v7/view/menu/MenuView;

    move-result-object v0

    .line 1927
    .local v0, "result":Landroid/support/v7/view/menu/MenuView;
    goto :goto_0
.end method

.method public hasPanelItems()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1855
    iget-object v2, p0, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->shownPanelView:Landroid/view/View;

    if-nez v2, :cond_1

    move v0, v1

    .line 1858
    :cond_0
    :goto_0
    return v0

    .line 1856
    :cond_1
    iget-object v2, p0, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->createdPanelView:Landroid/view/View;

    if-nez v2, :cond_0

    .line 1858
    iget-object v2, p0, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->listMenuPresenter:Landroid/support/v7/view/menu/ListMenuPresenter;

    invoke-virtual {v2}, Landroid/support/v7/view/menu/ListMenuPresenter;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    invoke-interface {v2}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    if-gtz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    const/4 v2, 0x0

    .line 1944
    move-object v0, p1

    check-cast v0, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState$SavedState;

    .line 1945
    .local v0, "savedState":Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState$SavedState;
    iget v1, v0, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState$SavedState;->featureId:I

    iput v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->featureId:I

    .line 1946
    iget-boolean v1, v0, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState$SavedState;->isOpen:Z

    iput-boolean v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->wasLastOpen:Z

    .line 1947
    iget-object v1, v0, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState$SavedState;->menuState:Landroid/os/Bundle;

    iput-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->frozenMenuState:Landroid/os/Bundle;

    .line 1949
    iput-object v2, p0, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->shownPanelView:Landroid/view/View;

    .line 1950
    iput-object v2, p0, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->decorView:Landroid/view/ViewGroup;

    .line 1951
    return-void
.end method

.method onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 1931
    new-instance v0, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState$SavedState;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState$SavedState;-><init>(Landroid/support/v7/app/AppCompatDelegateImplV7$1;)V

    .line 1932
    .local v0, "savedState":Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState$SavedState;
    iget v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->featureId:I

    iput v1, v0, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState$SavedState;->featureId:I

    .line 1933
    iget-boolean v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->isOpen:Z

    iput-boolean v1, v0, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState$SavedState;->isOpen:Z

    .line 1935
    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->menu:Landroid/support/v7/view/menu/MenuBuilder;

    if-eqz v1, :cond_0

    .line 1936
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iput-object v1, v0, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState$SavedState;->menuState:Landroid/os/Bundle;

    .line 1937
    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->menu:Landroid/support/v7/view/menu/MenuBuilder;

    iget-object v2, v0, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState$SavedState;->menuState:Landroid/os/Bundle;

    invoke-virtual {v1, v2}, Landroid/support/v7/view/menu/MenuBuilder;->savePresenterStates(Landroid/os/Bundle;)V

    .line 1940
    :cond_0
    return-object v0
.end method

.method setMenu(Landroid/support/v7/view/menu/MenuBuilder;)V
    .locals 2
    .param p1, "menu"    # Landroid/support/v7/view/menu/MenuBuilder;

    .prologue
    .line 1904
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->menu:Landroid/support/v7/view/menu/MenuBuilder;

    if-ne p1, v0, :cond_1

    .line 1913
    :cond_0
    :goto_0
    return-void

    .line 1906
    :cond_1
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->menu:Landroid/support/v7/view/menu/MenuBuilder;

    if-eqz v0, :cond_2

    .line 1907
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->menu:Landroid/support/v7/view/menu/MenuBuilder;

    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->listMenuPresenter:Landroid/support/v7/view/menu/ListMenuPresenter;

    invoke-virtual {v0, v1}, Landroid/support/v7/view/menu/MenuBuilder;->removeMenuPresenter(Landroid/support/v7/view/menu/MenuPresenter;)V

    .line 1909
    :cond_2
    iput-object p1, p0, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->menu:Landroid/support/v7/view/menu/MenuBuilder;

    .line 1910
    if-eqz p1, :cond_0

    .line 1911
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->listMenuPresenter:Landroid/support/v7/view/menu/ListMenuPresenter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->listMenuPresenter:Landroid/support/v7/view/menu/ListMenuPresenter;

    invoke-virtual {p1, v0}, Landroid/support/v7/view/menu/MenuBuilder;->addMenuPresenter(Landroid/support/v7/view/menu/MenuPresenter;)V

    goto :goto_0
.end method

.method setStyle(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 1872
    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    .line 1873
    .local v2, "outValue":Landroid/util/TypedValue;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    .line 1874
    .local v3, "widgetTheme":Landroid/content/res/Resources$Theme;
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 1877
    sget v4, Landroid/support/v7/appcompat/R$attr;->actionBarPopupTheme:I

    invoke-virtual {v3, v4, v2, v5}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 1878
    iget v4, v2, Landroid/util/TypedValue;->resourceId:I

    if-eqz v4, :cond_0

    .line 1879
    iget v4, v2, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 1883
    :cond_0
    sget v4, Landroid/support/v7/appcompat/R$attr;->panelMenuListTheme:I

    invoke-virtual {v3, v4, v2, v5}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 1884
    iget v4, v2, Landroid/util/TypedValue;->resourceId:I

    if-eqz v4, :cond_1

    .line 1885
    iget v4, v2, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 1890
    :goto_0
    new-instance v1, Landroid/support/v7/view/ContextThemeWrapper;

    invoke-direct {v1, p1, v6}, Landroid/support/v7/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 1891
    .end local p1    # "context":Landroid/content/Context;
    .local v1, "context":Landroid/content/Context;
    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 1893
    iput-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->listPresenterContext:Landroid/content/Context;

    .line 1895
    sget-object v4, Landroid/support/v7/appcompat/R$styleable;->Theme:[I

    invoke-virtual {v1, v4}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1896
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v4, Landroid/support/v7/appcompat/R$styleable;->Theme_panelBackground:I

    invoke-virtual {v0, v4, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    iput v4, p0, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->background:I

    .line 1898
    sget v4, Landroid/support/v7/appcompat/R$styleable;->Theme_android_windowAnimationStyle:I

    invoke-virtual {v0, v4, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    iput v4, p0, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->windowAnimations:I

    .line 1900
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 1901
    return-void

    .line 1887
    .end local v0    # "a":Landroid/content/res/TypedArray;
    .end local v1    # "context":Landroid/content/Context;
    .restart local p1    # "context":Landroid/content/Context;
    :cond_1
    sget v4, Landroid/support/v7/appcompat/R$style;->Theme_AppCompat_CompactMenu:I

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    goto :goto_0
.end method
