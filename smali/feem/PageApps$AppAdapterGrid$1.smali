.class Lfeem/PageApps$AppAdapterGrid$1;
.super Ljava/lang/Object;
.source "PageApps.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfeem/PageApps$AppAdapterGrid;->onBindViewHolder(Lfeem/PageApps$AppViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lfeem/PageApps$AppAdapterGrid;

.field final synthetic val$f:Lfeem/PageApps$FeemApp;

.field final synthetic val$holder:Lfeem/PageApps$AppViewHolder;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lfeem/PageApps$AppAdapterGrid;Lfeem/PageApps$FeemApp;ILfeem/PageApps$AppViewHolder;)V
    .locals 0

    .line 421
    iput-object p1, p0, Lfeem/PageApps$AppAdapterGrid$1;->this$1:Lfeem/PageApps$AppAdapterGrid;

    iput-object p2, p0, Lfeem/PageApps$AppAdapterGrid$1;->val$f:Lfeem/PageApps$FeemApp;

    iput p3, p0, Lfeem/PageApps$AppAdapterGrid$1;->val$position:I

    iput-object p4, p0, Lfeem/PageApps$AppAdapterGrid$1;->val$holder:Lfeem/PageApps$AppViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 424
    iget-object p1, p0, Lfeem/PageApps$AppAdapterGrid$1;->val$f:Lfeem/PageApps$FeemApp;

    iget-object p1, p1, Lfeem/PageApps$FeemApp;->appSource:Ljava/lang/String;

    .line 425
    iget-object v0, p0, Lfeem/PageApps$AppAdapterGrid$1;->this$1:Lfeem/PageApps$AppAdapterGrid;

    iget v1, p0, Lfeem/PageApps$AppAdapterGrid$1;->val$position:I

    iget-object v2, p0, Lfeem/PageApps$AppAdapterGrid$1;->val$holder:Lfeem/PageApps$AppViewHolder;

    invoke-virtual {v0, v1, p1, v2}, Lfeem/PageApps$AppAdapterGrid;->feemItemClicked(ILjava/lang/String;Lfeem/PageApps$AppViewHolder;)V

    .line 426
    iget-object v0, p0, Lfeem/PageApps$AppAdapterGrid$1;->this$1:Lfeem/PageApps$AppAdapterGrid;

    iget-object v0, v0, Lfeem/PageApps$AppAdapterGrid;->this$0:Lfeem/PageApps;

    iget-object v0, v0, Lfeem/PageApps;->m_selected_items:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 427
    iget-object v0, p0, Lfeem/PageApps$AppAdapterGrid$1;->this$1:Lfeem/PageApps$AppAdapterGrid;

    iget-object v0, v0, Lfeem/PageApps$AppAdapterGrid;->this$0:Lfeem/PageApps;

    iget-object v0, v0, Lfeem/PageApps;->m_selected_items:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 429
    :cond_0
    iget-object v0, p0, Lfeem/PageApps$AppAdapterGrid$1;->this$1:Lfeem/PageApps$AppAdapterGrid;

    iget-object v0, v0, Lfeem/PageApps$AppAdapterGrid;->this$0:Lfeem/PageApps;

    iget-object v0, v0, Lfeem/PageApps;->m_selected_items:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 431
    :goto_0
    iget-object p1, p0, Lfeem/PageApps$AppAdapterGrid$1;->val$holder:Lfeem/PageApps$AppViewHolder;

    invoke-virtual {p1}, Lfeem/PageApps$AppViewHolder;->updateCell()V

    .line 432
    iget-object p1, p0, Lfeem/PageApps$AppAdapterGrid$1;->this$1:Lfeem/PageApps$AppAdapterGrid;

    iget-object p1, p1, Lfeem/PageApps$AppAdapterGrid;->this$0:Lfeem/PageApps;

    invoke-virtual {p1}, Lfeem/PageApps;->update_footer_panel_visibility()V

    return-void
.end method
