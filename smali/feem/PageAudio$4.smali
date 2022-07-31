.class Lfeem/PageAudio$4;
.super Ljava/lang/Object;
.source "PageAudio.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfeem/PageAudio;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lfeem/PageAudio;

.field final synthetic val$btn_select_all:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lfeem/PageAudio;Landroid/widget/ImageView;)V
    .locals 0

    .line 912
    iput-object p1, p0, Lfeem/PageAudio$4;->this$0:Lfeem/PageAudio;

    iput-object p2, p0, Lfeem/PageAudio$4;->val$btn_select_all:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 915
    iget-object p1, p0, Lfeem/PageAudio$4;->this$0:Lfeem/PageAudio;

    iget-object p1, p1, Lfeem/PageAudio;->m_selected_items:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashSet;->clear()V

    .line 916
    new-instance p1, Landroid/content/Intent;

    const-string v0, "update_audio"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 917
    iget-object v0, p0, Lfeem/PageAudio$4;->this$0:Lfeem/PageAudio;

    invoke-virtual {v0}, Lfeem/PageAudio;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 918
    iget-object p1, p0, Lfeem/PageAudio$4;->this$0:Lfeem/PageAudio;

    invoke-virtual {p1}, Lfeem/PageAudio;->update_footer_panel_visibility()V

    .line 919
    iget-object p1, p0, Lfeem/PageAudio$4;->val$btn_select_all:Landroid/widget/ImageView;

    const v0, 0x7f07005d

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 920
    iget-object p1, p0, Lfeem/PageAudio$4;->this$0:Lfeem/PageAudio;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lfeem/PageAudio;->access$402(Lfeem/PageAudio;Z)Z

    return-void
.end method
