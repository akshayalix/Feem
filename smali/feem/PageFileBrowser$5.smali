.class Lfeem/PageFileBrowser$5;
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

.field final synthetic val$btn_select_all:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lfeem/PageFileBrowser;Landroid/widget/ImageView;)V
    .locals 0

    .line 988
    iput-object p1, p0, Lfeem/PageFileBrowser$5;->this$0:Lfeem/PageFileBrowser;

    iput-object p2, p0, Lfeem/PageFileBrowser$5;->val$btn_select_all:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 992
    iget-object p1, p0, Lfeem/PageFileBrowser$5;->this$0:Lfeem/PageFileBrowser;

    invoke-static {p1}, Lfeem/PageFileBrowser;->access$200(Lfeem/PageFileBrowser;)V

    .line 993
    iget-object p1, p0, Lfeem/PageFileBrowser$5;->this$0:Lfeem/PageFileBrowser;

    invoke-static {p1}, Lfeem/PageFileBrowser;->access$300(Lfeem/PageFileBrowser;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 994
    iget-object p1, p0, Lfeem/PageFileBrowser$5;->val$btn_select_all:Landroid/widget/ImageView;

    const v0, 0x7f07005c

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 997
    :cond_0
    iget-object p1, p0, Lfeem/PageFileBrowser$5;->val$btn_select_all:Landroid/widget/ImageView;

    const v0, 0x7f07005d

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    return-void
.end method
