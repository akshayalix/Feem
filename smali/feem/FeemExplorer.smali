.class public Lfeem/FeemExplorer;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "FeemExplorer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfeem/FeemExplorer$FeemPagerAdapter;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 2

    .line 26
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onBackPressed()V

    const-string v0, "feemexplorer"

    const-string v1, "onbackpressed"

    .line 27
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    invoke-virtual {p0}, Lfeem/FeemExplorer;->finish()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    const v0, 0x7f0e0006

    .line 134
    invoke-virtual {p0, v0}, Lfeem/FeemExplorer;->setTheme(I)V

    const-string v0, "Feem Explorer"

    .line 135
    invoke-virtual {p0, v0}, Lfeem/FeemExplorer;->setTitle(Ljava/lang/CharSequence;)V

    const-string v0, "feemexplorer"

    const-string v1, "oncreate"

    .line 136
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0b001c

    .line 140
    invoke-virtual {p0, p1}, Lfeem/FeemExplorer;->setContentView(I)V

    .line 155
    new-instance p1, Lfeem/FeemExplorer$FeemPagerAdapter;

    invoke-virtual {p0}, Lfeem/FeemExplorer;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-direct {p1, v0}, Lfeem/FeemExplorer$FeemPagerAdapter;-><init>(Landroidx/fragment/app/FragmentManager;)V

    const v0, 0x7f0800e4

    .line 156
    invoke-virtual {p0, v0}, Lfeem/FeemExplorer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/viewpager/widget/ViewPager;

    const/4 v1, 0x5

    .line 157
    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setOffscreenPageLimit(I)V

    .line 158
    invoke-virtual {v0, p1}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    const p1, 0x7f0800c5

    .line 161
    invoke-virtual {p0, p1}, Lfeem/FeemExplorer;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/tabs/TabLayout;

    const/4 v1, 0x0

    .line 162
    invoke-virtual {p1, v1}, Lcom/google/android/material/tabs/TabLayout;->setTabGravity(I)V

    .line 163
    invoke-virtual {p1, v1}, Lcom/google/android/material/tabs/TabLayout;->setTabMode(I)V

    .line 165
    invoke-virtual {p1, v0}, Lcom/google/android/material/tabs/TabLayout;->setupWithViewPager(Landroidx/viewpager/widget/ViewPager;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .line 171
    invoke-virtual {p0}, Lfeem/FeemExplorer;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const/high16 v1, 0x7f0c0000

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const/4 p1, 0x1

    return p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 180
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f080017

    if-ne v0, v1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 187
    :cond_0
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method
