.class Lfeem/PageApps$3;
.super Ljava/lang/Object;
.source "PageApps.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfeem/PageApps;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lfeem/PageApps;

.field final synthetic val$btn_select_all:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lfeem/PageApps;Landroid/widget/ImageView;)V
    .locals 0

    .line 671
    iput-object p1, p0, Lfeem/PageApps$3;->this$0:Lfeem/PageApps;

    iput-object p2, p0, Lfeem/PageApps$3;->val$btn_select_all:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 674
    iget-object p1, p0, Lfeem/PageApps$3;->this$0:Lfeem/PageApps;

    iget-object p1, p1, Lfeem/PageApps;->m_selected_items:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashSet;->clear()V

    .line 675
    new-instance p1, Landroid/content/Intent;

    const-string v0, "update_apps"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 676
    iget-object v0, p0, Lfeem/PageApps$3;->this$0:Lfeem/PageApps;

    invoke-virtual {v0}, Lfeem/PageApps;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 677
    iget-object p1, p0, Lfeem/PageApps$3;->this$0:Lfeem/PageApps;

    invoke-virtual {p1}, Lfeem/PageApps;->update_footer_panel_visibility()V

    .line 678
    iget-object p1, p0, Lfeem/PageApps$3;->val$btn_select_all:Landroid/widget/ImageView;

    const v0, 0x7f07005d

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 679
    iget-object p1, p0, Lfeem/PageApps$3;->this$0:Lfeem/PageApps;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lfeem/PageApps;->access$302(Lfeem/PageApps;Z)Z

    return-void
.end method
