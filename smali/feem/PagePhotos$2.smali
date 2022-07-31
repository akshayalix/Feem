.class Lfeem/PagePhotos$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "PagePhotos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfeem/PagePhotos;->update_footer_panel_visibility()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lfeem/PagePhotos;

.field final synthetic val$footer_panel:Landroid/view/ViewGroup;


# direct methods
.method constructor <init>(Lfeem/PagePhotos;Landroid/view/ViewGroup;)V
    .locals 0

    .line 946
    iput-object p1, p0, Lfeem/PagePhotos$2;->this$0:Lfeem/PagePhotos;

    iput-object p2, p0, Lfeem/PagePhotos$2;->val$footer_panel:Landroid/view/ViewGroup;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 949
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 950
    iget-object p1, p0, Lfeem/PagePhotos$2;->val$footer_panel:Landroid/view/ViewGroup;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method
