.class public Lcom/mobiseed/repackaging/HelloMobiSEED;
.super Landroid/support/v7/app/AppCompatActivity;
.source "HelloMobiSEED.java"

# interfaces
.implements Landroid/support/design/widget/NavigationView$OnNavigationItemSelectedListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 3

    .prologue
    const v2, 0x800003

    .line 35
    const v1, 0x7f0c0069

    invoke-virtual {p0, v1}, Lcom/mobiseed/repackaging/HelloMobiSEED;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/DrawerLayout;

    .line 36
    .local v0, "drawer":Landroid/support/v4/widget/DrawerLayout;
    invoke-virtual {v0, v2}, Landroid/support/v4/widget/DrawerLayout;->isDrawerOpen(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 37
    invoke-virtual {v0, v2}, Landroid/support/v4/widget/DrawerLayout;->closeDrawer(I)V

    .line 41
    :goto_0
    return-void

    .line 39
    :cond_0
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onBackPressed()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 18
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 19
    const v1, 0x7f040019

    invoke-virtual {p0, v1}, Lcom/mobiseed/repackaging/HelloMobiSEED;->setContentView(I)V

    .line 20
    const v1, 0x7f0c006b

    invoke-virtual {p0, v1}, Lcom/mobiseed/repackaging/HelloMobiSEED;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/support/v7/widget/Toolbar;

    .line 21
    .local v3, "toolbar":Landroid/support/v7/widget/Toolbar;
    invoke-virtual {p0, v3}, Lcom/mobiseed/repackaging/HelloMobiSEED;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    .line 23
    const v1, 0x7f0c0069

    invoke-virtual {p0, v1}, Lcom/mobiseed/repackaging/HelloMobiSEED;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/support/v4/widget/DrawerLayout;

    .line 24
    .local v2, "drawer":Landroid/support/v4/widget/DrawerLayout;
    new-instance v0, Landroid/support/v7/app/ActionBarDrawerToggle;

    const v4, 0x7f06001c

    const v5, 0x7f06001b

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/support/v7/app/ActionBarDrawerToggle;-><init>(Landroid/app/Activity;Landroid/support/v4/widget/DrawerLayout;Landroid/support/v7/widget/Toolbar;II)V

    .line 26
    .local v0, "toggle":Landroid/support/v7/app/ActionBarDrawerToggle;
    invoke-virtual {v2, v0}, Landroid/support/v4/widget/DrawerLayout;->setDrawerListener(Landroid/support/v4/widget/DrawerLayout$DrawerListener;)V

    .line 27
    invoke-virtual {v0}, Landroid/support/v7/app/ActionBarDrawerToggle;->syncState()V

    .line 29
    const v1, 0x7f0c006a

    invoke-virtual {p0, v1}, Lcom/mobiseed/repackaging/HelloMobiSEED;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/support/design/widget/NavigationView;

    .line 30
    .local v6, "navigationView":Landroid/support/design/widget/NavigationView;
    invoke-virtual {v6, p0}, Landroid/support/design/widget/NavigationView;->setNavigationItemSelectedListener(Landroid/support/design/widget/NavigationView$OnNavigationItemSelectedListener;)V

    .line 31
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/mobiseed/repackaging/HelloMobiSEED;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0d0001

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 47
    const/4 v0, 0x1

    return v0
.end method

.method public onNavigationItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 69
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    .line 71
    .local v1, "id":I
    const v2, 0x7f0c0085

    if-ne v1, v2, :cond_1

    .line 85
    :cond_0
    :goto_0
    const v2, 0x7f0c0069

    invoke-virtual {p0, v2}, Lcom/mobiseed/repackaging/HelloMobiSEED;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/DrawerLayout;

    .line 86
    .local v0, "drawer":Landroid/support/v4/widget/DrawerLayout;
    const v2, 0x800003

    invoke-virtual {v0, v2}, Landroid/support/v4/widget/DrawerLayout;->closeDrawer(I)V

    .line 87
    const/4 v2, 0x1

    return v2

    .line 73
    .end local v0    # "drawer":Landroid/support/v4/widget/DrawerLayout;
    :cond_1
    const v2, 0x7f0c0086

    if-eq v1, v2, :cond_0

    .line 75
    const v2, 0x7f0c0087

    if-eq v1, v2, :cond_0

    .line 77
    const v2, 0x7f0c0088

    if-eq v1, v2, :cond_0

    .line 79
    const v2, 0x7f0c0089

    if-eq v1, v2, :cond_0

    .line 81
    const v2, 0x7f0c008a

    if-ne v1, v2, :cond_0

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 55
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 58
    .local v0, "id":I
    const v1, 0x7f0c008b

    if-ne v0, v1, :cond_0

    .line 59
    const/4 v1, 0x1

    .line 62
    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    goto :goto_0
.end method
