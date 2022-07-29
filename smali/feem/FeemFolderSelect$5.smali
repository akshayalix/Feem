.class Lfeem/FeemFolderSelect$5;
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

    .line 923
    iput-object p1, p0, Lfeem/FeemFolderSelect$5;->this$0:Lfeem/FeemFolderSelect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 926
    new-instance p1, Landroid/content/Intent;

    const-string v0, "folder_select_result"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 927
    iget-object p1, p0, Lfeem/FeemFolderSelect$5;->this$0:Lfeem/FeemFolderSelect;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lfeem/FeemFolderSelect;->setResult(I)V

    .line 928
    iget-object p1, p0, Lfeem/FeemFolderSelect$5;->this$0:Lfeem/FeemFolderSelect;

    invoke-virtual {p1}, Lfeem/FeemFolderSelect;->finish()V

    return-void
.end method
