.class Lfeem/FeemFolderSelect$6;
.super Ljava/lang/Object;
.source "FeemFolderSelect.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfeem/FeemFolderSelect;->onPostCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lfeem/FeemFolderSelect;


# direct methods
.method constructor <init>(Lfeem/FeemFolderSelect;)V
    .locals 0

    .line 936
    iput-object p1, p0, Lfeem/FeemFolderSelect$6;->this$0:Lfeem/FeemFolderSelect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 942
    :try_start_0
    new-instance p1, Landroid/content/Intent;

    const-string v0, "folder_select_result"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "selected_folder"

    .line 943
    iget-object v1, p0, Lfeem/FeemFolderSelect$6;->this$0:Lfeem/FeemFolderSelect;

    iget-object v1, v1, Lfeem/FeemFolderSelect;->currentFolder:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 945
    iget-object v0, p0, Lfeem/FeemFolderSelect$6;->this$0:Lfeem/FeemFolderSelect;

    const/4 v1, -0x1

    invoke-virtual {v0, v1, p1}, Lfeem/FeemFolderSelect;->setResult(ILandroid/content/Intent;)V

    .line 946
    iget-object p1, p0, Lfeem/FeemFolderSelect$6;->this$0:Lfeem/FeemFolderSelect;

    invoke-virtual {p1}, Lfeem/FeemFolderSelect;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 951
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 952
    invoke-virtual {p1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "FEEMWIFI"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 955
    new-instance p1, Landroid/content/Intent;

    const-string v0, "update_files"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 956
    iget-object v0, p0, Lfeem/FeemFolderSelect$6;->this$0:Lfeem/FeemFolderSelect;

    invoke-static {v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    return-void
.end method
