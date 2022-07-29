.class Lfeem/AllAppsActivity$1;
.super Ljava/lang/Thread;
.source "AllAppsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfeem/AllAppsActivity;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lfeem/AllAppsActivity;

.field final synthetic val$msg:Ljava/lang/String;


# direct methods
.method constructor <init>(Lfeem/AllAppsActivity;Ljava/lang/String;)V
    .locals 0

    .line 145
    iput-object p1, p0, Lfeem/AllAppsActivity$1;->this$0:Lfeem/AllAppsActivity;

    iput-object p2, p0, Lfeem/AllAppsActivity$1;->val$msg:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 148
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 150
    iget-object v0, p0, Lfeem/AllAppsActivity$1;->val$msg:Ljava/lang/String;

    const-string v1, "/create_upload"

    const-string v2, "from_ui"

    invoke-static {v1, v0, v2}, Lfeem/FeemService;->request_from_core(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "files"

    .line 151
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
