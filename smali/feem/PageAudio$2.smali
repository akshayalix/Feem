.class Lfeem/PageAudio$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "PageAudio.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfeem/PageAudio;->update_footer_panel_visibility()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lfeem/PageAudio;

.field final synthetic val$footer_panel:Landroid/view/ViewGroup;


# direct methods
.method constructor <init>(Lfeem/PageAudio;Landroid/view/ViewGroup;)V
    .locals 0

    .line 867
    iput-object p1, p0, Lfeem/PageAudio$2;->this$0:Lfeem/PageAudio;

    iput-object p2, p0, Lfeem/PageAudio$2;->val$footer_panel:Landroid/view/ViewGroup;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 870
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 871
    iget-object p1, p0, Lfeem/PageAudio$2;->val$footer_panel:Landroid/view/ViewGroup;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method
