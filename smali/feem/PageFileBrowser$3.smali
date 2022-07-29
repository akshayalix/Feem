.class Lfeem/PageFileBrowser$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "PageFileBrowser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfeem/PageFileBrowser;->update_footer_panel_visibility()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lfeem/PageFileBrowser;

.field final synthetic val$footer_panel:Landroid/view/ViewGroup;


# direct methods
.method constructor <init>(Lfeem/PageFileBrowser;Landroid/view/ViewGroup;)V
    .locals 0

    .line 950
    iput-object p1, p0, Lfeem/PageFileBrowser$3;->this$0:Lfeem/PageFileBrowser;

    iput-object p2, p0, Lfeem/PageFileBrowser$3;->val$footer_panel:Landroid/view/ViewGroup;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 953
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 954
    iget-object p1, p0, Lfeem/PageFileBrowser$3;->val$footer_panel:Landroid/view/ViewGroup;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method
