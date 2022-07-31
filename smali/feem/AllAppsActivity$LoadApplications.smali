.class Lfeem/AllAppsActivity$LoadApplications;
.super Landroid/os/AsyncTask;
.source "AllAppsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfeem/AllAppsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadApplications"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private progress:Landroid/app/ProgressDialog;

.field final synthetic this$0:Lfeem/AllAppsActivity;


# direct methods
.method private constructor <init>(Lfeem/AllAppsActivity;)V
    .locals 0

    .line 180
    iput-object p1, p0, Lfeem/AllAppsActivity$LoadApplications;->this$0:Lfeem/AllAppsActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 p1, 0x0

    .line 181
    iput-object p1, p0, Lfeem/AllAppsActivity$LoadApplications;->progress:Landroid/app/ProgressDialog;

    return-void
.end method

.method synthetic constructor <init>(Lfeem/AllAppsActivity;Lfeem/AllAppsActivity$1;)V
    .locals 0

    .line 180
    invoke-direct {p0, p1}, Lfeem/AllAppsActivity$LoadApplications;-><init>(Lfeem/AllAppsActivity;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 180
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lfeem/AllAppsActivity$LoadApplications;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 3

    .line 185
    iget-object p1, p0, Lfeem/AllAppsActivity$LoadApplications;->this$0:Lfeem/AllAppsActivity;

    invoke-static {p1}, Lfeem/AllAppsActivity;->access$200(Lfeem/AllAppsActivity;)Landroid/content/pm/PackageManager;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lfeem/AllAppsActivity;->access$300(Lfeem/AllAppsActivity;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lfeem/AllAppsActivity;->access$102(Lfeem/AllAppsActivity;Ljava/util/List;)Ljava/util/List;

    .line 186
    iget-object p1, p0, Lfeem/AllAppsActivity$LoadApplications;->this$0:Lfeem/AllAppsActivity;

    new-instance v0, Lfeem/ApplicationAdapter;

    .line 187
    invoke-static {p1}, Lfeem/AllAppsActivity;->access$100(Lfeem/AllAppsActivity;)Ljava/util/List;

    move-result-object v1

    const v2, 0x7f0b0055

    invoke-direct {v0, p1, v2, v1}, Lfeem/ApplicationAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 186
    invoke-static {p1, v0}, Lfeem/AllAppsActivity;->access$402(Lfeem/AllAppsActivity;Lfeem/ApplicationAdapter;)Lfeem/ApplicationAdapter;

    const/4 p1, 0x0

    return-object p1
.end method

.method protected onCancelled()V
    .locals 0

    .line 194
    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 180
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lfeem/AllAppsActivity$LoadApplications;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 2

    .line 199
    iget-object v0, p0, Lfeem/AllAppsActivity$LoadApplications;->this$0:Lfeem/AllAppsActivity;

    invoke-static {v0}, Lfeem/AllAppsActivity;->access$400(Lfeem/AllAppsActivity;)Lfeem/ApplicationAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfeem/AllAppsActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 200
    iget-object v0, p0, Lfeem/AllAppsActivity$LoadApplications;->progress:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 201
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 3

    .line 206
    iget-object v0, p0, Lfeem/AllAppsActivity$LoadApplications;->this$0:Lfeem/AllAppsActivity;

    const/4 v1, 0x0

    const-string v2, "Loading application info..."

    invoke-static {v0, v1, v2}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lfeem/AllAppsActivity$LoadApplications;->progress:Landroid/app/ProgressDialog;

    .line 208
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    .line 180
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lfeem/AllAppsActivity$LoadApplications;->onProgressUpdate([Ljava/lang/Void;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Void;)V
    .locals 0

    .line 213
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    return-void
.end method
