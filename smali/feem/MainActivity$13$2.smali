.class Lfeem/MainActivity$13$2;
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

    .line 824
    iput-object p1, p0, Lfeem/MainActivity$13$2;->this$1:Lfeem/MainActivity$13;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed()V
    .locals 3

    .line 844
    iget-object v0, p0, Lfeem/MainActivity$13$2;->this$1:Lfeem/MainActivity$13;

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

    .line 828
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "image/*"

    .line 829
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.action.GET_CONTENT"

    .line 830
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 832
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_0

    const/4 v1, 0x1

    const-string v2, "android.intent.extra.LOCAL_ONLY"

    .line 833
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 835
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x12

    if-lt v1, v2, :cond_1

    const/4 v1, 0x0

    const-string v2, "android.intent.extra.ALLOW_MULTIPLE"

    .line 836
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 839
    :cond_1
    iget-object v1, p0, Lfeem/MainActivity$13$2;->this$1:Lfeem/MainActivity$13;

    iget-object v1, v1, Lfeem/MainActivity$13;->this$0:Lfeem/MainActivity;

    iget-object v2, p0, Lfeem/MainActivity$13$2;->this$1:Lfeem/MainActivity$13;

    iget-object v2, v2, Lfeem/MainActivity$13;->this$0:Lfeem/MainActivity;

    invoke-static {v2}, Lfeem/MainActivity;->access$500(Lfeem/MainActivity;)I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lfeem/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
