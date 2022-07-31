.class Lfeem/MainActivity$13$3;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lfeem/RequestPermissionHandler$RequestPermissionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfeem/MainActivity$13;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lfeem/MainActivity$13;


# direct methods
.method constructor <init>(Lfeem/MainActivity$13;)V
    .locals 0

    .line 853
    iput-object p1, p0, Lfeem/MainActivity$13$3;->this$1:Lfeem/MainActivity$13;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed()V
    .locals 3

    .line 861
    iget-object v0, p0, Lfeem/MainActivity$13$3;->this$1:Lfeem/MainActivity$13;

    iget-object v0, v0, Lfeem/MainActivity$13;->this$0:Lfeem/MainActivity;

    const-string v1, "request permission failed"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public onSuccess()V
    .locals 4

    .line 856
    iget-object v0, p0, Lfeem/MainActivity$13$3;->this$1:Lfeem/MainActivity$13;

    iget-object v0, v0, Lfeem/MainActivity$13;->this$0:Lfeem/MainActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lfeem/MainActivity$13$3;->this$1:Lfeem/MainActivity$13;

    iget-object v2, v2, Lfeem/MainActivity$13;->this$0:Lfeem/MainActivity;

    const-class v3, Lfeem/FeemFolderSelect;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v2, p0, Lfeem/MainActivity$13$3;->this$1:Lfeem/MainActivity$13;

    iget-object v2, v2, Lfeem/MainActivity$13;->this$0:Lfeem/MainActivity;

    invoke-static {v2}, Lfeem/MainActivity;->access$600(Lfeem/MainActivity;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lfeem/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
