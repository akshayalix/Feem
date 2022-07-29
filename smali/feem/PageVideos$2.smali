.class Lfeem/PageVideos$2;
.super Ljava/lang/Object;
.source "PageVideos.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfeem/PageVideos;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lfeem/PageVideos;

.field final synthetic val$btn_select_all:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lfeem/PageVideos;Landroid/widget/ImageView;)V
    .locals 0

    .line 777
    iput-object p1, p0, Lfeem/PageVideos$2;->this$0:Lfeem/PageVideos;

    iput-object p2, p0, Lfeem/PageVideos$2;->val$btn_select_all:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 781
    iget-object p1, p0, Lfeem/PageVideos$2;->this$0:Lfeem/PageVideos;

    invoke-static {p1}, Lfeem/PageVideos;->access$300(Lfeem/PageVideos;)V

    .line 782
    iget-object p1, p0, Lfeem/PageVideos$2;->this$0:Lfeem/PageVideos;

    invoke-static {p1}, Lfeem/PageVideos;->access$400(Lfeem/PageVideos;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 783
    iget-object p1, p0, Lfeem/PageVideos$2;->val$btn_select_all:Landroid/widget/ImageView;

    const v0, 0x7f07005c

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 786
    :cond_0
    iget-object p1, p0, Lfeem/PageVideos$2;->val$btn_select_all:Landroid/widget/ImageView;

    const v0, 0x7f07005d

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    return-void
.end method
