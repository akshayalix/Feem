.class Lfeem/MainActivity$13$1;
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

.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lfeem/MainActivity$13;Landroid/content/Intent;)V
    .locals 0

    .line 765
    iput-object p1, p0, Lfeem/MainActivity$13$1;->this$1:Lfeem/MainActivity$13;

    iput-object p2, p0, Lfeem/MainActivity$13$1;->val$intent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed()V
    .locals 3

    .line 781
    iget-object v0, p0, Lfeem/MainActivity$13$1;->this$1:Lfeem/MainActivity$13;

    iget-object v0, v0, Lfeem/MainActivity$13;->this$0:Lfeem/MainActivity;

    const-string v1, "request permission failed"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public onSuccess()V
    .locals 3

    .line 768
    iget-object v0, p0, Lfeem/MainActivity$13$1;->val$intent:Landroid/content/Intent;

    const-string v1, "to"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 770
    iget-object v1, p0, Lfeem/MainActivity$13$1;->this$1:Lfeem/MainActivity$13;

    iget-object v1, v1, Lfeem/MainActivity$13;->this$0:Lfeem/MainActivity;

    iput-object v0, v1, Lfeem/MainActivity;->current_to:Ljava/lang/String;

    .line 772
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lfeem/MainActivity$13$1;->this$1:Lfeem/MainActivity$13;

    iget-object v1, v1, Lfeem/MainActivity$13;->this$0:Lfeem/MainActivity;

    const-class v2, Lfeem/FeemExplorer;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x20000000

    .line 774
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 776
    iget-object v1, p0, Lfeem/MainActivity$13$1;->this$1:Lfeem/MainActivity$13;

    iget-object v1, v1, Lfeem/MainActivity$13;->this$0:Lfeem/MainActivity;

    iget-object v2, p0, Lfeem/MainActivity$13$1;->this$1:Lfeem/MainActivity$13;

    iget-object v2, v2, Lfeem/MainActivity$13;->this$0:Lfeem/MainActivity;

    invoke-static {v2}, Lfeem/MainActivity;->access$300(Lfeem/MainActivity;)I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lfeem/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
