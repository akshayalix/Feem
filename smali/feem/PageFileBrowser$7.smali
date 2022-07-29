.class Lfeem/PageFileBrowser$7;
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

    .line 1023
    iput-object p1, p0, Lfeem/PageFileBrowser$7;->this$0:Lfeem/PageFileBrowser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1029
    :try_start_0
    new-instance p1, Landroid/content/Intent;

    const-string v0, "file_explorer_result"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "files_to_send"

    .line 1030
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lfeem/PageFileBrowser$7;->this$0:Lfeem/PageFileBrowser;

    iget-object v2, v2, Lfeem/PageFileBrowser;->m_selected_items:Ljava/util/HashSet;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 1032
    iget-object v0, p0, Lfeem/PageFileBrowser$7;->this$0:Lfeem/PageFileBrowser;

    invoke-virtual {v0}, Lfeem/PageFileBrowser;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1, p1}, Landroidx/fragment/app/FragmentActivity;->setResult(ILandroid/content/Intent;)V

    .line 1033
    iget-object p1, p0, Lfeem/PageFileBrowser$7;->this$0:Lfeem/PageFileBrowser;

    invoke-virtual {p1}, Lfeem/PageFileBrowser;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 1040
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1041
    invoke-virtual {p1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "FEEMWIFI"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1043
    iget-object p1, p0, Lfeem/PageFileBrowser$7;->this$0:Lfeem/PageFileBrowser;

    iget-object p1, p1, Lfeem/PageFileBrowser;->m_selected_items:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashSet;->clear()V

    .line 1044
    new-instance p1, Landroid/content/Intent;

    const-string v0, "update_files"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1045
    iget-object v0, p0, Lfeem/PageFileBrowser$7;->this$0:Lfeem/PageFileBrowser;

    invoke-virtual {v0}, Lfeem/PageFileBrowser;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 1046
    iget-object p1, p0, Lfeem/PageFileBrowser$7;->this$0:Lfeem/PageFileBrowser;

    invoke-virtual {p1}, Lfeem/PageFileBrowser;->update_footer_panel_visibility()V

    return-void
.end method
