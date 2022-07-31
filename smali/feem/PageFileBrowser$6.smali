.class Lfeem/PageFileBrowser$6;
.super Ljava/lang/Object;
.source "PageFileBrowser.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfeem/PageFileBrowser;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lfeem/PageFileBrowser;


# direct methods
.method constructor <init>(Lfeem/PageFileBrowser;)V
    .locals 0

    .line 1009
    iput-object p1, p0, Lfeem/PageFileBrowser$6;->this$0:Lfeem/PageFileBrowser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1012
    iget-object p1, p0, Lfeem/PageFileBrowser$6;->this$0:Lfeem/PageFileBrowser;

    iget-object p1, p1, Lfeem/PageFileBrowser;->m_selected_items:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashSet;->clear()V

    .line 1013
    new-instance p1, Landroid/content/Intent;

    const-string v0, "update_files"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1014
    iget-object v0, p0, Lfeem/PageFileBrowser$6;->this$0:Lfeem/PageFileBrowser;

    invoke-virtual {v0}, Lfeem/PageFileBrowser;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 1015
    iget-object p1, p0, Lfeem/PageFileBrowser$6;->this$0:Lfeem/PageFileBrowser;

    invoke-virtual {p1}, Lfeem/PageFileBrowser;->update_footer_panel_visibility()V

    return-void
.end method
